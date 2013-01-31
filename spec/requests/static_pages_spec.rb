# This is all pure Ruby code
require 'spec_helper'

describe "Static pages" do
  
  # Creates variable for base title
  let (:base_title) { "RoR Sample App" }
  
  # Describing test for Home page
  describe "Home Page" do
    
    # When you visit Home page, content should contain the words 'Sample App' 
    it "should have the h1 'Sample App'" do
      # Uses Capybara function 'visit' to simulate visiting /static_pages/home in a browser
      visit '/static_pages/home'
      # Uses Capybara variable 'page' to test content is on resulting page 
      page.should have_selector('h1', :text => 'Sample App')
    end
      
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title} | Home")
    end
  end
  
  # Describing test for Help page
  describe "Help Page" do
    
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end  

  # Describing test for About page
  describe "About Page" do
    
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    
    it "should have the title" 'About Us' do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} | About Us")
    end
  end
  
  # Describing test for Contact page
  describe "Contact Page" do
    
    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end
    
    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{base_title} | Contact Us")
    end
  end
end