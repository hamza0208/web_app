require 'spec_helper'

describe "LayoutLinks" do

  it "devrait trouver une page Accueil à '/home'" do
    get '/home'
    response.should have_selector('title', :content => "Home")
  end

  it "devrait trouver une page d'Inscription à '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "signup")
  end

  it "devrait trouver une page Contact at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an À Propos page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

  it "devrait trouver une page Iade à '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end

  it "devrait avoir le bon lien sur le layout" do
    visit root_path
    click_link "À Propos"
    response.should have_selector('title', :content => "About")
    click_link "About"
    response.should # fill in
    click_link "Contact"
    response.should # fill in
    click_link "Home"
    response.should # fill in
    click_link "Create Account"
    response.should # fill in
  end
end
