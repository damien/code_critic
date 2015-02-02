# Define haml_lint rake task only if HamlLint is available
if defined?(HamlLint)
  require 'haml_lint/rake_task'
  HamlLint::RakeTask.new
end
