#!/usr/bin/ruby

require 'spec_helper'

feature 'Creating Projects' do
  scenario "can create a project" do
    visit '/'
    fill_in 'Name', with: "Textbox 1"
    fill_in 'Description', with: "The Editor for os x"
    click_button 'Create Project'
    expect(page).to have_content('Porject has been created.')
  end
end
