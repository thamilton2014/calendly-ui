# features/pages/google_page.rb
#
# This is the main class in which we interact with Google's home page.
#
class GooglePage < BasePage

  button      :the_submit_button, name: "btnK"
  text_field  :the_search_text_field, name: "q"

  page_url FigNewton.google_url

  # This creates a method that allows us to poll for the expected title upon entering a page.
  wait_for_expected_title /Google/

  # This creates a method that allows us to poll for an expected element upon entering a page.
  expected_element_visible :the_search_text_field

  # This method combines the actions for our user on the search page.
  #
  # @param [String] something
  #
  def search_for(something)
    the_search_text_field_element.when_present.send_keys(something)
    the_submit_button_element.when_present.click
  end

end # => end GooglePage