class UsersController < ApplicationController
  include ApplicationHelper

  skip_before_action :verify_authenticity_token
  before_action :set_user, only: [:show, :edit, :update, :destroy, :password_change]
  before_action :authenticate_user!, except:[:index, :show, :new, :create]

  # When registering for new user
  def new
    @user = User.new
  end

  # GET /users
  def index
    @users = User.all.order("created_at desc")
  end

  # GET /users/:id
  def show
  end

  # GET /users/:id/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      @user.set_username
      @user.save
      redirect_to home_path, flash: { success: 'User was successfully registered.' }
    else
      respond_to do |format|
        format.html
        format.js { flash.now[:alert] = @user.errors.messages }
      end
    end
  end
  
  # PATCH/PUT /users/:id
  def update
    respond_to :html, :js
    if @user.update(user_params)
      redirect_to @user, flash: { success: 'User was successfully updated.' }
    else
      redirect_to root_url, flash: { alert: 'Failed to Edit user.' }
    end
  end

  # POST /users/:id/password
  def password_change
    user = User.find_by(username: params[:session][:username])
    respond_to do |format|
      if @user.nil?
        format.html
        format.js { flash.now[:alert] = @user.errors.messages }
      else
        if user && user.authenticate(params[:session][:password])
          @user.password = params[:user][:new_password] unless params[:user][:new_password].nil? || params[:user][:new_password].empty?
          @user.save
          format.html
          format.js { flash.now[:success] = "Password has successfully updated!" }
        end
      end
    end
  end

  # DELETE /users/:id
  def destroy
    @user.destroy
    respond_to do |format|
      format.html
      format.js { flash.now[:alert] = "User was successfully removed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # before_action, only owner can :edit :update :destroy their profile
    def authenticate_user!
      if current_user.id != @user.id
        redirect_back(fallback_location: root_path)
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :first_name, :last_name, :identity_number, :email, :phone_number, :password, :pasword_confirmation, :password_reset_sent_at, :password_reset_token)
    end
    
end
