# Define rubocop rake task only if Rubocop is available
if defined?(RuboCop)
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new
end
