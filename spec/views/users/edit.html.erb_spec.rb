require 'rails_helper'

RSpec.describe "users/edit", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :nom => "MyString",
      :email => "MyString",
      :mdp => "MyString",
      :liste => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_nom[name=?]", "user[nom]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_mdp[name=?]", "user[mdp]"

      assert_select "input#user_liste[name=?]", "user[liste]"
    end
  end
end
