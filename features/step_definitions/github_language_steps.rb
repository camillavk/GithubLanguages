When(/^I enter "([^"]*)"$/) do |user|
  fill_in :username, with: user
end

When(/^I click "([^"]*)"$/) do |button|
  click_button button
end
