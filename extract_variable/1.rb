def send_email_to(user)
  email = user.email.strip
  
  Mail.new(email).send_message
end