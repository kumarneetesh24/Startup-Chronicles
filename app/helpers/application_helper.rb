module ApplicationHelper
	def error_msg(object)
		render(:partial => 'application/error_messages', :locals =>{:object => object})
	end
end
