require 'rails_helper'

RSpec.describe 'Create A Project', type: :feature do
  include_context 'when user signed in'

  scenario 'user creates the project' do
    visit new_project_path

    fill_in 'Name', with: 'My test project'
    fill_in 'Description', with: 'Any description'

    click_button 'Create Project'

    expect(page).to have_content('Project was successfully created.')
    expect(page).to have_content('My test project')
    expect(page).to have_content('Any description')
  end

end
