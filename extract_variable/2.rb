def tell_browser_type(browser)
  browser_type = browser.type

  if(browser_type == "Safari")
    puts "You are using the Safari browser."
  else
    puts "You are using a non-Safari browser."
  end
end