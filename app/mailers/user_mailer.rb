class UserMailer < ApplicationMailer
	default from: "benclarke018@gmail.com"

	def contact_form(email, name, message)
		@message = message
			mail(from: email,
				to: "benclarke018@gmail.com",
				:subject => "A new contact form message from #{name}")
	end
end