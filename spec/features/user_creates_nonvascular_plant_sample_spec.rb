require 'rails_helper'

RSpec.feature 'User creates a non-vascular plant sample' do
  let(:user) { create(:user) }

  before do
    create(:plot)
    sign_in(user)
    visit new_nonvascular_plant_sample_path
  end

  scenario 'with valid sample attributes' do
    fill_in('Collection date', with: '09/11/2001')
    select('Plot #1', from: 'Plot')
    fill_in('Location within plot', with: 'Fake location')
    fill_in('Description', with: 'Fake description')
    click_on('Create Sample')
    expect(page).to have_content('Nonvascular plant sample was successfully created')
  end

  scenario 'with invalid sample attributes' do
    click_on('Create Sample')
    expect(page).to have_content('The form contains 4 errors.')
    page.find('.alert').tap do |error_explanations|
      expect(error_explanations).to have_content('Plot must exist')
      expect(error_explanations).to have_content("Collected on can't be blank")
      expect(error_explanations).to have_content("Location within plot can't be blank")
      expect(error_explanations).to have_content("Description can't be blank") 
    end
  end

end
