class ArticlesController < ApplicationController

	layout 'admin', :except => :delete

	before_action :confirm_logged_in
	def index
		@articles= Article.paginate(page: params[:page],per_page:15).sorted

	end

	def new
		@articles=Article.new()
		@articles_count= Article.count+1
	end

	def create
		@articles= Article.new(article_params)
		if @articles.save
			flash[:notice]="article created successfully"
			redirect_to(:action =>"index")
		else 
			@articles_count= Article.count+1
			render("new")
		end
	end

	def show
		@articles= Article.find(params[:id])
	end

	def edit
		@articles= Article.find(params[:id])
		@articles_count= Article.count+1
	end

	def update
		@articles=Article.find(params[:id])
		if @articles.update_attributes(article_params)
			flash[:notice]="Article updated successfully"
			redirect_to(:action=>"show",:id=>@articles.id)
		else
			@articles_count= Article.count+1
			render("edit")
		end
	end

	def delete
		@articles= Article.find(params[:id])
    end

	def destroy
		@articles=Article.find(params[:id])
		@articles.destroy
		redirect_to(:action => 'index')
	end

	private
	def article_params
		params.require(:article).permit(:title,:position,:visible,:body,:created_at,:thumb)
	end
end
