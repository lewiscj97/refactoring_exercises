# Understands giving the user the correct page
class BrowserPageChooser
  def initialize
    @type_finder = BrowserTypeFinder.new
    @width_finder = BrowserWidthFinder.new
  end

  def send_correct_page(browser, window)
    safari_small_message = "You are using the Safari browser in a small window."
    not_safari_or_big_message = "You are not using the Safari browser or have a big window."

    @type_finder.safari?(browser) && @width_finder.small?(window) ? safari_small_message : not_safari_or_big_message
  end
end

# Understands detecting the browser type
class BrowserTypeFinder
  def safari?(browser)
    browser.type == "Safari"
  end
end

# Understands detecting the browser width
class BrowserWidthFinder
  def small?(window)
    window.size < "768px"
  end
end

