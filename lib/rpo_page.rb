#project/lib/r_p_o_page.rb

class RPOPage
  
  def initialize(driver)
    @driver = driver
  end

#properties
  def url
    url="http://rubypageobjects.kevinswallow.com/"
  end

  def expected_title
    expected_title = "Ruby Page Objects"
  end

  def expected_header
    expected_header = "Ruby Page Objects\nA Simple Guide and Tutorial"
  end

#locators
  def title
    title = @driver.title
  end

  def header
    header = @driver.find_elements(:tag_name => "h1")[0].text
  end
end