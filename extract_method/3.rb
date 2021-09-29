SAFARI_SMALL_MESSAGE = "You are using the Safari browser in a small window."
NOT_SAFARI_OR_BIG_MESSAGE = "You are not using the Safari browser or have a big window."

def send_correct_page(browser, window)
  return correct_page(browser, window)
end

private

def correct_page(browser, window)
  small_window?(browser, window) ? SAFARI_SMALL_MESSAGE : NOT_SAFARI_OR_BIG_MESSAGE
end

def small_window?(browser, window)
  browser_type_is_safari = browser.type == "Safari"
  window_size_is_small = window.size < "768px"

  browser_type_is_safari && window_size_is_small
end