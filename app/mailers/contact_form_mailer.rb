class ContactFormMailer < ApplicationMailer
	
	def email_form(name, contact, message, to)
		@name = name
		@contact = contact
		@message = message
		@to = to
		mail(from: "#{name} <hooliganz.site@gmail.com>", to: @to, subject: "Сообщение с сайта hooliganz.su")
	end
	
end
