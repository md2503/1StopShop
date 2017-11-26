class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :make_admin]
  skip_before_action :authenticate, only: [:new, :create]
  before_action :admin_only, only: [:edit, :update, :destroy, :make_admin]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search])
    else
      @users = User.all
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
    # Tell the UserMailer to send a welcome Email after save
    #UserMailer.welcome_email(@user).deliver
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    # @user1 = User.new(user_params)
    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome Email after save
        UserMailer.welcome_email(@user).deliver
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }

      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def make_admin
    @user.toggle!(:admin)
    if @user.save
      redirect_to users_path, notice: 'User was successfully updated.'
    else
      flash[:alert]= 'Error updating user'
      redirect_to users_path
    end 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
      if @user == current_user || current_user.admin?
        return @user
      else
        redirect_to root_path
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :dietary_reqs)
    end
    
    def admin_only
      if !current_user.admin?
        redirect_to root_path
      end
    end
end
