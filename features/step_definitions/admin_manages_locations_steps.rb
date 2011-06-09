#encoding: utf-8

Given /^I am logged in as an admin$/ do
  @current_user = User.make!(:admin)
  login_as @current_user
end

Given /^a location exists$/ do
  @current_location = Location.make!
end

Given /^I am on the location creation page$/ do
  visit new_admin_location_path
end

Given /^I am on the location edition page$/ do
  visit edit_admin_location_path(@current_location)
end

When /^I am on the admin locations list$/ do
  visit admin_locations_path
end

When /^I fill in the form with the location data$/ do
  fill_in 'location_name', with: 'Sant Miquel de Toudell'
  fill_in 'location_description', with: 'This Romanesque church was built in the 12th century.'
  fill_in 'location_lat', with: '1.987654321'
  fill_in 'location_long', with: '42.12345678'
  find('form button[type=submit]').click
end

When /^I modify the location data$/ do
  fill_in 'location_name', with: 'Església de Sant Miquel de Toudell'
  find('form button[type=submit]').click
end

When /^I delete the location$/ do
  within "#location-#{@current_location.id}" do
    click_link I18n.t('simple_form.actions.destroy')
  end
end

Then /^I should see the location$/ do
  within '#locations-list' do
    page.has_content?(@current_location.name).must_equal true
  end
end

Then /^I should see the location data$/ do
  within '#location' do
    page.has_content?('Sant Miquel de Toudell').must_equal true
  end
end

Then /^I should see a confirmation message telling me that the data was successfully updated$/ do
  must_have_confirmation_message
end

Then /^I should see the modifications in the location page$/ do
  within '#location' do
    page.has_content?('Església de Sant Miquel de Toudell').must_equal true
  end
end

Then /^I should see a confirmation message telling me that the location was successfully deleted$/ do
  must_have_confirmation_message
end

Then /^I should not see the location within the admin locations list$/ do
  within '#locations-list' do
    page.has_content?(@current_location.name).must_equal false
  end
end
