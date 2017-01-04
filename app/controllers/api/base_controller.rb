class Api::BaseController < ApplicationController
  include JSONAPI::ActsAsResourceController

  before_filter :authenticate_user_from_token!

  # Enter the normal Devise authentication path,
  # using the token authenticated user if available
  before_filter :authenticate_user!

  # No auth
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
  private
    def context
      {user: current_user}
    end

    def user_not_authorized
      head :forbidden
    end

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
