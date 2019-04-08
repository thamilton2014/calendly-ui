# features/support/hooks.rb

# This sets up our initial browser capabilities.
capabilities = YAML.load(ERB.new(File.read("config/capabilities.yml")).result(binding))

Before do
  @browser = Watir::Browser.new(:remote, capabilities['default'])
end

After do |scenario|
  if scenario.failed?
    @browser.screenshot.save("results/screenshots") unless @browser.nil?
    Cucumber.wants_to_quit = true
  end

  @browser.close unless @browser.nil?
end

at_exit do
  # Code you wish you had
end
