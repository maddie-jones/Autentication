require 'rails_helper'
describe 'as a visitor' do
  it 'should create user and see welcome message' do
    name = "funbucket13"
    visit '/'

    click_on "Sign Up to Be a User"

    expect(current_path).to eq(new_user_path)

    fill_in :user_name, with: "name"
    fill_in :user_password, with: "test"

    click_on "Create User"

    expect(page).to have_content("Welcome, #{name}!")

  end
end
