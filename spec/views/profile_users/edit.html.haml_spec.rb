require 'rails_helper'

RSpec.describe "profile_users/edit", type: :view do
  before(:each) do
    @profile_user = assign(:profile_user, ProfileUser.create!(
      profile: nil,
      user: nil
    ))
  end

  it "renders the edit profile_user form" do
    render

    assert_select "form[action=?][method=?]", profile_user_path(@profile_user), "post" do

      assert_select "input[name=?]", "profile_user[profile_id]"

      assert_select "input[name=?]", "profile_user[user_id]"
    end
  end
end
