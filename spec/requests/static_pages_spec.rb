# This is all pure Ruby code
require 'spec_helper'

describe "Static pages" do
  
  # Creates variable for base title
  let (:base_title) { "RoR Sample App" }
  
  # page is the subject of the tests
  subject { page }
  
  # Describing test for Home page
  describe "Home Page" do
    before { visit root_path }
    
    # When you visit Home page, content should contain the words 'Sample App' 
    # it "should have the h1 'Sample App'" do
      # Uses Capybara function 'visit' to simulate visiting /static_pages/home in a browser
      # visit '/static_pages/home'
      # visit root_path
      # Uses Capybara variable 'page' to test content is on resulting page 
      # page.should have_selector('h1', text: 'Sample App')
    # end
      
    # it "should have the base title" do
      # visit '/static_pages/home'
      # visit root_path
      # page.should have_selector('title', text: "RoR Sample App")
    # end
    
    # it "should not have a custom page title" do
      # visit '/static_pages/home'
      # visit root_path
      # page.should_not have_selector('title', text: '| Home')
    # end
    
    it { should have_selector('h1',         text: 'Sample App') }
    it { should have_selector('title',      text: full_title('')) }
    it { should_not have_selector('title',  text: '| Home') }
  end
  
  # Describing test for Help page
  describe "Help Page" do
    before { visit help_path }
    
    # it "should have the h1 'Help'" do
      # visit '/static_pages/help'
      # visit help_path
      # page.should have_selector('h1', text: 'Help')
    # end
    
    # it "should have the title 'Help'" do
      # visit '/static_pages/help'
      # visit help_path
      # page.should have_selector('title', text: "#{base_title} | Help")
    # end
    
    it { should have_selector('h1',         text: 'Help') }
    it { should have_selector('title',      text: full_title('Help')) }
  end  

  # Describing test for About page
  describe "About Page" do
    before { visit about_path }
    
    # it "should have the h1 'About Us'" do
      # visit '/static_pages/about'
      # visit about_path
      # page.should have_selector('h1', text: 'About Us')
    # end
    
    # it "should have the title" 'About Us' do
      # visit '/static_pages/about'
      # visit about_path
      # page.should have_selector('title', text: "#{base_title} | About Us")
    # end
    
    it { should have_selector('h1',         text: 'About Us') }
    it { should have_selector('title',      text: full_title('About Us')) }
  end
  
  # Describing test for Contact page
  describe "Contact Page" do
    before { visit contact_path }
    
    # it "should have the h1 'Contact Us'" do
      # visit '/static_pages/contact'
      # visit contact_path
      # page.should have_selector('h1', text: 'Contact Us')
    # end
    
    # it "should have the title 'Contact Us'" do
      # visit '/static_pages/contact'
      # visit contact_path
      # page.should have_selector('title', text: "#{base_title} | Contact Us")
    # end
    
    it { should have_selector('h1',         text: 'Contact Us') }
    it { should have_selector('title',      text: full_title('Contact Us')) }
  end
end