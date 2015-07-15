module ApplicationHelper
	
	def is_admin?
		current_user.email == 'ant.khay@gmail.com' || current_user.email == 'hooliganz-school@mail.ru'
	end
	
	
	
end
