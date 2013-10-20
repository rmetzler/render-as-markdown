require "json"
require "bundler/gem_tasks"


desc "copy README.md into gh-page content"
task :readme_to_ghpage do
  File.open "params.json", "w" do |file|
    params = {
      name:     "RenderAsMarkdown",
      tagline:  "This gem is a Markdown helper that renders well formatted Markdown for bigger Markdown elements like tables",
      body:     File.read('README.md'),
      google:   "UA-44998391-1",
      note:     "Don't delete this file! It's used internally to help with page regeneration."
    }
    file.write params.to_json
  end
end
