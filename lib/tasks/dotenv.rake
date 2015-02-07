if defined?(Dotenv)
  require 'dotenv/tasks'
end

desc <<-DESC.strip_heredoc
  Generate a .env file

  By default, this task will create a template with the following env vars:

    - SECRET_KEY_BASE
    - AUTHY_API_KEY
    - GITHUB_APP_KEY
    - GITHUB_APP_SECRET

  The values of these files will be set persisted if they are passed, example:

    SECRET_KEY_BASE='foo' rake generate_dotenv # SECRET_KEY_BASE will be 'foo'

  If the SECRET_KEY_BASE variable is not set, a new secret will be generated using
  Rails' `rake secret`
DESC

task :generate_dotenv do
  require 'securerandom'
  secret_key_base = ENV.fetch('SECRET_KEY_BASE') { SecureRandom.hex(64) }
  env_file = Rails.root.join('.env')

  template = <<-TEMPLATE.strip_heredoc
    SECRET_KEY_BASE=#{secret_key_base}
    AUTHY_API_KEY=#{ENV['AUTHY_API_KEY']}
    GITHUB_APP_KEY=#{ENV['GITHUB_APP_KEY']}
    GITHUB_APP_SECRET=#{ENV['GITHUB_APP_SECRET']}
  TEMPLATE

  if File.exists?(env_file)
    puts ".env file already exists at #{env_file}"

  else
    File.open(env_file, 'w') { |f| f.write(template) }
    puts ".env file written to #{env_file}"
  end
end
