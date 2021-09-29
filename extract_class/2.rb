# Understands sending the user a message
class BrowserMessage
  def initialize
    @browser_type = DetectBrowserType.new
  end

  def tell_browser_type(browser)
    safari_message = "You are using the Safari browser."
    not_safari_message = "You are not using a Safari browser."

    @browser_type.safari?(browser) ? puts safari_message : puts not_safari_message
  end
end

# Understands detecting the browser type

class DetectBrowserType
  def safari?(browser)
    browser.type == "Safari"
  end
end