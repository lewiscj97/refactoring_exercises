def send_email_to(user)
  mail = create_email
  
  mail.send_message
end

private

def create_email(user)
  email = user.email.strip
  mail = Mail.new(email)
end