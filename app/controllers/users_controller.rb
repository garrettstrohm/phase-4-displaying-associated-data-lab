class UsersController < ApplicationController

    before_action :find_user

    def show
        render json: @user, include: :items
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

end
