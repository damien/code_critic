# The OmniauthCallbacksController contains all the integration work needed to
# support creation or authentication of users from 3rd identity providers
class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def github
    @user = github_user_from_omniauth(auth_hash)

    # Don't bother confirming emails from Github;
    # we trust Github to do that for us
    @user.skip_confirmation!

    if @user.persisted?
      # :authentication will be thrown if @user is not activated
      sign_in_and_redirect @user

      if is_navigational_format?
        set_flash_message(:notice, :success, kind: 'Github')
      end

    else
      session['devise.github_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end

  # rubocop:disable Metrics/AbcSize
  def github_user_from_omniauth(auth)
    User.where(github_id: auth_hash.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.github_username = auth_hash.info.nickname
      user.github_access_token = auth_hash.credentials.token
    end
  end
  # rubocop:enable Metrics/AbcSize
end
