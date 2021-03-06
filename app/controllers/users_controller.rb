class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
   options = {include: [:projects]}
    render json: UserSerializer.new(@users, options )
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    
    if @user.update(user_params)

      options = {include: [:projects]}
      render json: UserSerializer.new(@user, options)
      
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:first_name, :last_name,:email, :github, :linkdn, :facebook, :twitter, :reddit, :youtube, projects_attributes:[:id,:title,:video_link,:project_link,:cohort,:blog_link])
    end
end
