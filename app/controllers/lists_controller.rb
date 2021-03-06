class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy, :add_to_list, :share]

  # GET /lists
  # GET /lists.json
  def index
    @lists = List.all
    # @user = session[:user_id]
    #UserMailer.send_list().deliver

  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    @users = User.all
    if params[:search]
      @users = User.search(params[:search])
    else
      @users = User.all
    end
    #UserMailer.send_list(user).deliver

  end

  # GET /lists/new
  def new
    @list = List.new
  end

  # GET /lists/1/edit
  def edit
  end

  # POST /lists
  # POST /lists.json
  def create
    @list = List.new(list_params)

    respond_to do |format|
      if @list.save
        ListUser.create(:user_id => session[:user_id], :list_id => @list.id)
        format.html { redirect_to @list, notice: 'List was successfully created.'}
        format.json { render :show, status: :created, location: @list }
        
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    while ListUser.find_by(:list_id => @list.id) != nil
      ListUser.find_by(:list_id => @list.id).destroy
    end
    @list.destroy
    #need to destroy from list_users also
    respond_to do |format|
      format.html { redirect_to lists_url, notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def send_email
      UserMailer.send_list(List.find(ListUser.find_by(:user_id => session[:user_id]).list_id)).deliver
      #UserMailer.send_list()
      redirect_to lists_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:name, :date, :tart)
    end
end
