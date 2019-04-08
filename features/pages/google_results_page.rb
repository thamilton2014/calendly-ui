# features/pages/google_results_page.rb

class GoogleResultsPage < BasePage

  text_field  :the_search_text_field, name: "q"

  # This creates a method that allows us to poll for the expected title upon entering a page.
  wait_for_expected_title /gherkin | Google Search/

  # This creates a method that allows us to poll for an expected element upon entering a page.
  expected_element_visible :the_search_text_field

end # => end GoogleResultsPage