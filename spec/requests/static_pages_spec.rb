require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the header 'Sample App'" do

      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the right TITLE Information" do
      visit '/static_pages/home'
      page.should have_selector('title',
          :text => 'Ruby on Rails Tutorial App | Home')
    end
  end

  describe "Help page" do

    it "should have the header 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right TITLE Information" do
      visit '/static_pages/help'
      page.should have_selector('title',
          :text => 'Ruby on Rails Tutorial App | Help')
    end
  end


  describe "About page" do

    it "should have the header 'About Us'" do

      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do

      visit '/static_pages/about'
      page.should have_selector('title',
          :text => 'Ruby on Rails Tutorial App | About Us')
    end
  end
end
