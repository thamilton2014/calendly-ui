# features/step_definitions/practice_steps.rb
#
# This is our main parser where we take the gherkin and use it as a means to interact with our Page Object API's.
#
Given(/^I am on the Practice page$/) do
  visit(PracticePage) do |page|
    page.wait_for_expected_title?
    page.has_expected_element_visible?
  end
end

When(/^I create a 3x3 board$/) do
  on(PracticePage).create_board(3)
  sleep 3
end