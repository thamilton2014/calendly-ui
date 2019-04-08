# features/step_definitions/google_steps.rb
#
# This is our main parser where we take the gherkin and use it as a means to interact with our Page Object API's.
#

Given(/^I am on the Google search page$/) do
  visit(GooglePage) do |page|
    page.wait_for_expected_title?
    page.has_expected_element_visible?
  end
end

When(/^I search for gherkin$/) do
  on(GooglePage).search_for("gherkin")
end

Then(/^I should see results related to cucumbers$/) do
  on(GoogleResultsPage) do |page|
    expect(page.title).to eq("nija - Google Search")
  end
end