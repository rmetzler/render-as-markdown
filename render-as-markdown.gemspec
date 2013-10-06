# -*- encoding: utf-8 -*-
require File.expand_path('../lib/render-as-markdown/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Richard Metzler"]
  gem.email         = ["richard@launchco.com"]
  gem.description   = %q{
    RenderAsMarkdown is a small Ruby gem featuring simple to use objects to turn data into Markdown.
    }
  gem.summary       = %q{
    Currently implemented is a table in GitHub-flavoured Markdown.
    It works perfectly fine, but is not fully featured yet.
    }
  gem.homepage      = "https://github.com/rmetzler/render-as-markdown"

  gem.name          = "render-as-markdown"
  gem.require_paths = ["lib"]
  gem.version       = RENDER_AS_MARKDOWN::VERSION

  gem.add_development_dependency 'rake'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

end