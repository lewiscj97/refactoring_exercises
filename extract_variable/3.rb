def send_correct_page(browser, window)
  browser_type = browser.type
  small_window = window.size < "768px"

  small_window_page = "You are using the Safari browser in a small window."
  large_window_page = "You are not using the Safari browser or have a big window."

  if(browser_type == "Safari" && small_window)
    small_window_page
  else
    large_window_page
  end
end