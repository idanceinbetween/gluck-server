class UsersController < ApplicationController
    def index
        users = User.all
        if users
            render json: users
        else
            render json: {error: 'There are no users.'}, status: 404 
        end 
    end 

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, include: '**'
        else 
            render json: {error: 'User cannot be found.'}, status: 404
        end 
    end 

    def signup
        user = User.new(username: params[:username], email: params[:email], password_digest: BCrypt::Password.create(params[:password]))
        if user.save
            render json: {user: user, token: issue_token({id: user.id})}
        else
            render json: { error: "Unable to create account. Please try again." }, status: 400  
        end
    end 

    def signin
        user = User.find_by(email: params[:email])
        if user and user.authenticate(params[:password])
          render json: {user: user, token: issue_token({id: user.id})}
        else
          render json: { error: "User/password combination failed. Please try again." }, status: 400
        end
      end
    
    def validate
    user = get_current_user
    if user
        render json: {user: user}
    else
        render json: {error: 'Invalid user.'}, status: 404
    end 
    end

end
