Authy.api_key = Rails.application.secrets.authy_api_key

if Rails.env.production?
  Authy.api_uri = 'https://api.authy.com/'
else
  Authy.api_uri = 'https://sandbox-api.authy.com/'
end
