module TestHelperMethods

  #
  # Setup helper methods that do things (such as ensure_login!)
  #

  def open_browser
    puts "Open a browser (chrome)"
    @browser = Watir::Browser.new :chrome
    return @browser
  end

end