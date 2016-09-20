class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  # GET /groups
  # GET /groups.json

  def index
  @groups = Group.all
  render json: @groups, status: 403
  end



  # POST /groups
  # POST /groups.json
  def create
   group = Group.new(group_params) 
        # if the user is saved successfully than respond with json data and status code 201
        if group.save 
    render json: group, status: 201
   else
    render json: { errors: group.errors}, status: 422
   end
  end

  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name)
    end
end
