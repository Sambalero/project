#project/spec/spec.rb
require 'spec_helper'
require './lib/rpo_page'

driver = Selenium::WebDriver.for :firefox

describe RPOPage do
  page = RPOPage.new(driver)
  driver.navigate.to page.url

  it "has the right title" do
    page.title.should eq(page.expected_title)
  end

  it "has the right page header" do
    page.header.should eq(page.expected_header)
  end

  it "has the right by line" do
    page.byline.should eq(page.expected_byline)
  end
end

driver.close