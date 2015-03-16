class SessionsController < Devise::SessionsController
  respond_to :html, :json

  def create
    super do |user|
    logger.debug('-------------------------BBBBB----')
      if request.format.json?
    logger.debug('-------------------------CCC----')
        data = {
          token: user.authentication_token,
          email: user.email
        }
        render json: data, status: 201 and return
      end
    end
  end
end
