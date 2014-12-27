require 'rails_helper'

RSpec.describe "users/show", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :nom => "Nom",
      :email => "Email",
      :mdp => "Mdp",
      :liste => "Liste"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Mdp/)
    expect(rendered).to match(/Liste/)
  end
end
