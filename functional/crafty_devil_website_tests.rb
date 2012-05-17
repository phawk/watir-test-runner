module CraftyDevilWebsiteTests

  def test_crafty_devil_about_us_page
    open_browser

    # Load up Crafty Devil
    @browser.goto "http://www.craftydevil.co.uk/"

    # Click on the first search result
    @browser.link(:text, "About Us").click

    # Assert the content of the site
    assert @browser.text.include?("Crafty Devil is a leading Belfast, Northern Ireland based provider of bespoke, web based software solutions")
  end
end