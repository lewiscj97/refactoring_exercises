# Understands sending them an email
class UserContacter
  def initialize
    @sanitizer = SantizeEmail.new
  end

  def send_email_to(user)
    mail = Mail.new(@sanitizer.sanitised_email_for(user))
    mail.send_message
  end
end

# Understands sanitising a user's email

class SantizeEmail
  def sanitised_email_for(user)
    email.strip
  end
end
