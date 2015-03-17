class SessionsController < Devise::SessionsController
  respond_to :html, :json

  def create
    logger.debug 'controllers -> sessions'
    # user = User.find_for_database_authentication(email: params[:session][:email])
    logger.debug(params.to_yaml)
    super do |user|
      logger.debug 'controllers -> sessions2'
      if request.format.json?
        logger.debug 'controllers -> sessions3'
        data = {
          token: user.authentication_token,
          email: user.email
        }
        logger.debug 'controllers -> sessions4'
        render json: data, status: 201 and return
      end
    end
  end
end
