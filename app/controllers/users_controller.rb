class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  # POST /users
  # POST /users.json
  def create
        user = User.new(user_params)

      if user.save
        render json: user, status: 201

      else
        render json: { errors: user.errors}, status: 422
      end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :phone_number, :group_id, :home_place_id, :work_place_id)
    end
end
