# features/pages/practice_page.rb
#
# This is our main class in which we interact with our Practice page.
#
class PracticePage < BasePage

  div :main_content, id: "result-iframe-wrap"
  in_iframe id: "result" do |frame|
    button :the_start_button, id: "start", frame: frame
    text_field :the_board_size_text_field, id: "number", frame: frame
  end

  # This is the
  page_url FigNewton.practice_url

  # This creates a method that allows us to poll for the expected title upon entering a page.
  wait_for_expected_title "Broken (on purpose) Tic Tac Toe"

  # This creates a method that allows us to poll for an expected element upon entering a page.
  expected_element_visible :main_content

  # This method allows us to create the tic tac to board based on user input.
  #
  # @param [Integer] size
  #
  def create_board(size)
    the_board_size_text_field_element.send_keys(size)
    the_start_button_element.click
  end

end # => end PracticePage