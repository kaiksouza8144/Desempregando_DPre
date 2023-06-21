require 'rails_helper'

RSpec.describe "profile_users/index", type: :view do
  before(:each) do
    assign(:profile_users, [
      ProfileUser.create!(
        profile: nil,
        user: nil
      ),
      ProfileUser.create!(
        profile: nil,
        user: nil
      )
    ])
  end

  it "renders a list of profile_users" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
