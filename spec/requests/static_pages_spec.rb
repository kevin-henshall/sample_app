require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should contain 'Sample App'" do
      visit "/static_pages/home"
      page.should have_selector 'h1',
        :text => "Sample App"
    end

    it "should contain have the right title" do
      visit "/static_pages/home"
      page.should have_selector 'title',
        :text => "Ruby on Rails Tutorial Sample App | Home"
    end
  end

  describe "Help page" do
    it "should contain 'Help'" do
      visit "/static_pages/help"
      page.should have_selector 'h1',
        :text => "Help"
    end

    it "should contain have the right title" do
      visit "/static_pages/help"
      page.should have_selector 'title',
        :text => "Ruby on Rails Tutorial Sample App | Help"
    end
  end

  describe "About page" do
    it "should contain 'About Us'" do
      visit "/static_pages/about"
      page.should have_selector 'h1',
        :text => "About Us"
    end

    it "should contain have the right title" do
      visit "/static_pages/about"
      page.should have_selector 'title',
        :text => "Ruby on Rails Tutorial Sample App | About Us"
    end
  end
end
