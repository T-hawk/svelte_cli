Gem::Specification.new do |s|
  s.name        = "svelte_cli"
  s.version     = File.read("VERSION").strip
  s.licenses    = ["MIT"]
  s.summary     = "SUMMARY HERE"
  s.authors     = ["AUTHOR NAME"]
  s.email       = "AUTHOR EMAIL"
  s.files       = Dir.glob("{lib}/**/*") + ["Gemfile"]
  s.homepage    = "https://rubygems.org/gems/svelte_cli"
  s.metadata    = { "source_code_uri" => "https://github.com/PATH_TO_PROJECT" }
  s.require_path = "lib"
  s.platform    = Gem::Platform::RUBY
  s.executables = ["svelte_cli"]
  s.post_install_message = <<MSG

\e[32mThanks for installing svelte_cli!\e[0m
\e[32mSet it up by running `\e[0msvelte_cli --setup\e[32m`\e[0m

MSG
end
