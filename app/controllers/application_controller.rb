class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  # protect_from_forgery with: :null_session

  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  # before_filter :authenticate_user_from_token!, :except => [:index]
  before_filter :authenticate_user_from_token!, :except => [:landing_page]

  # Enter the normal Devise authentication path,
  # using the token authenticated user if available
  # before_filter :authenticate_user!, :except => [:index]
  before_filter :authenticate_user!, :except => [:landing_page]

  def landing_page
    render :landing_page
  end

  private
    def authenticate_user_from_token!
      authenticate_with_http_token do |token, options|
        user_email = options[:email].presence
        user = user_email && User.find_by_email(user_email)

        if user && Devise.secure_compare(user.authentication_token, token)
          sign_in user, store: false
        end
      end
    end
end
