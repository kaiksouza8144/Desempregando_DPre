require 'rails_helper'

RSpec.describe "profile_users/new", type: :view do
  before(:each) do
    assign(:profile_user, ProfileUser.new(
      profile: nil,
      user: nil
    ))
  end

  it "renders new profile_user form" do
    render

    assert_select "form[action=?][method=?]", profile_users_path, "post" do

      assert_select "input[name=?]", "profile_user[profile_id]"

      assert_select "input[name=?]", "profile_user[user_id]"
    end
  end
end
