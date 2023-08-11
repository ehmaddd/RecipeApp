require 'rails_helper'

RSpec.describe 'Integration tests for the foods index view', type: :feature do
  before(:each) do
    @user = User.create(name: 'luis', email: 'luis@gmail.com', password: 'password',
                        password_confirmation: 'password')
    @food = Food.create(name: 'food', measurement_unit: 'grams', price: 3, quantity: 2, user_id: @user.id)
    login_as(@user, scope: :user)
    visit foods_path
  end

  it 'renders the title of the page' do
    expect(page).to have_content('Foods')
  end

  it 'renders the name of the food' do
    expect(page).to have_content('food')
  end

  it 'renders the measurement unit of the food' do
    expect(page).to have_content('grams')
  end

  it 'renders the price of the food' do
    expect(page).to have_content('3')
  end

  it 'displays a link to create a new food' do
    expect(page).to have_link('Add Food', href: new_food_path)
  end
end
