# features/pages/base_page.rb
#
# This is the main class in which we extend the rest of our frameworks page objects.
#
class BasePage
  include DataMagic
  include FigNewton
  include PageObject

end # => end BasePage