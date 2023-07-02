class SessionsController < ApplicationController
    def create
      # find a user
      user = User.find_by(username: params[:username])
      # if yu find , save
      if user
        session[:user_id] = user.id
        render json: user
        # else display errors
      else
        render json: { error: 'Invalid username' }, status: :unprocessable_entity
      end
    end
    #  Remove the user ID from the session hash

    def destroy
      session[:user_id] = nil
      head :no_content
    end
  end
