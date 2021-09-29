# Understands sending a fancy or non-fancy message to the user
class Mail
  def initialize(email, fancy = false)
    @mail_server = MailServerConnector.new.connect
    @email = email
    @fancy = fancy
  end

  def send_message
    @mail_server.send_message(CreateEmail.new_email(@email, @fancy))
  end

  private

  def body
    base_body = "Welcome to MyProduct"
    @fancy ? "#{ base_body }, fancy person!" : base_body
  end
end

# Understands connecting to a mail server
class MailServerConnector
  def connect
    MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
  end
end

class CreateEmail

  def new_email(email, fancy)
    { to: email, body: body(fancy) }
  end

  private
  def body(fancy)
    base_body = "Welcome to MyProduct"
    fancy ? "#{ base_body }, fancy person!" : base_body
  end
end