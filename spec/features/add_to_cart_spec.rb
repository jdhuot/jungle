require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js:true do

 # SETUP
 before :each do
  @category = Category.create! name: 'Apparel'

  1.times do |n|
    @category.products.create!(
      name:  'fakeTitle',
      description: Faker::Hipster.paragraph(4),
      image: open_asset('apparel1.jpg'),
      quantity: 10,
      price: 64.99
    )
  end
end

scenario "They add product to cart" do
  # ACT
  visit root_path

  click_on 'Add'

  within ".navbar-right li:nth-child(2)" do
    expect(page.find 'a').to have_content 'My Cart (1)'
  end
end


end

