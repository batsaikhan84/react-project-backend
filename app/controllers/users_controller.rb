class UsersController < ApplicationController
    def create
        byebug
        user = User.create!(
            email: params['user']['email'],
            password: params['user']['password'],
            password_confirmation: params['user']['password_confirmation'],
            name: params['user']['name']
        )
        if user
            session[:user_id] = user.id
            render json: {
              status: :created,
              user: user
            }
        else
            render json: { status: 500 }
        end
    end
end
