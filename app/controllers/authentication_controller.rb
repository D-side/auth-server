class AuthenticationController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.from_facebook(request.env['omniauth.auth'])

    sign_in(@user)

    redirect_to return_path
  end

  def logout
    sign_out_and_redirect :user
  end

  protected

  # Overrided
  def after_omniauth_failure_path_for(_)
    return_path
  end

  def return_path
    session.delete(:guest_return_url) || root_path
  end
end
