require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :nom => "MyString",
      :email => "MyString",
      :mdp => "MyString",
      :liste => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_nom[name=?]", "user[nom]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_mdp[name=?]", "user[mdp]"

      assert_select "input#user_liste[name=?]", "user[liste]"
    end
  end
end
