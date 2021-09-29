class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    connect_to_server.send_message(create_email)
  end

  private

  def connect_to_server
    MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
  end

  def create_email
    base_body = "Welcome to MyProduct"
    body = @fancy ? "#{ base_body }, fancy person!" : base_body

    email = { to: @email, body: body }
  end
end