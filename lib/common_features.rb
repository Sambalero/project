#project/lib/common_features.rb
module CommonFeatures

  def expected_byline
    expected_byline = "Kevin Swallow"
  end

  def byline
    byline = @driver.find_elements(:tag_name => "h1")[1].text
  end

end