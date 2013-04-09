require 'spec_helper'

describe "Gsm terminal" do

  describe "Home page" do

    it "should have the content 'Gsm terminal'" do
      visit '/gsm_terminal/home'
      page.should have_content('Gsm terminal')
    end

    it "should have the title 'Home'" do
      visit '/gsm_terminal/home'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/gsm_terminal/help'
      page.should have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/gsm_terminal/home'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/gsm_terminal/about'
      page.should have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/gsm_terminal/home'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  
end