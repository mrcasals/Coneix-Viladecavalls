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
  pending # express the regexp above with the code you wish you had
end

When /^I modify the location data$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I delete a location$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see the location$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see the location within the locations list$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a confirmation message telling me that the data was successfully updated$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see the modifications in the location page$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a confirmation message telling me that the location was successfully deleted$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should not see the location within the admin locations list$/ do
  pending # express the regexp above with the code you wish you had
end
