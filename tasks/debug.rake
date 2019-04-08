
namespace :debug do
  require_all "features/pages"

  task :chrome do
    extend PageObject::PageFactory

    def reload!
      load_all "features/pages"
    end

    @browser = Watir::Browser.new(:chrome)
    visit(PracticePage)

    cmd = []
    Pry.hooks.add_hook(:before_session, "Add session hook") do |output, binding, pry|
      output.puts "Creating watir session..."
    end

    Pry.hooks.add_hook(:after_session, "Release session hook") do |output, binding, pry|
      output.puts "Closing watir session..."
    end
    opts = Pry::CLI.parse_options(cmd)
    Pry::CLI.start(opts)

  end
end
