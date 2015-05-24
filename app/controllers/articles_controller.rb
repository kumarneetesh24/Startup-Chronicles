class ArticlesController < ApplicationController

	def index
		@articles= Article.paginate(page: params[:page],per_page:15).sorted
	end

	def new
		@articles=Article.new()
	end

	def create
		@articles= Article.new(article_params)
		if @articles.save
			flash[:notice]="article created successfully"
			redirect_to(:action =>"index")
		else 
			render("new")
		end
	end

	def show
		@articles= Article.find(params[:id])
	end

	def edit
		@artilces= Article.find(params[:id])
	end

	def update
		@articles=Article.find(params[:id])
		if @articles.update_attributes(article_prams)
			flash[:notice]="Article updated successfully"
			redirect_to(:action=>"show",:id=>@articles.id)
		else
			render("edit")
		end
	end

	def delete
		@artilces= Article.find(params[:id])
	end

	def destroy
		@artilces=Article.find(params[:id])
		@artilces.destroy
		redirect_to("index")
	end

	private
	def article_params
		params.require(:article).permit(:title,:position,:visible,:body,:created_at)
	end
end
