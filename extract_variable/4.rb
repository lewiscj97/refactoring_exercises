class Mail

  SERVER = MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")

  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message  
    fancy_message = { to: @email, body: "Welcome to MyProduct, fancy person!" }
    normal_message = { to: @email, body: "Welcome to MyProduct" }

    if fancy
      SERVER.send_message(fancy_message)
    else
      SERVER.send_message(normal_message)
    end
  end
end