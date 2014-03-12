Given(/^user with "(.*?)" email and "(.*?)" password$/) do |arg1, arg2|
  email =arg1 
  password =arg2
end


Given(/^I go to portal$/) do
  visit "/"
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
	#form=Form.input (:text=>arg1,:elementid=>arg2)
	fill_in(arg1, :with => arg2)
end

When(/^I click "(.*?)" button$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content arg1
end