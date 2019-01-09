class PasswordResetsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    user.send_password_reset
    flash[:notice] = 'Please Check Your Email for Password Reset URL.'
    redirect_to root_url
  end

  def edit
    @user = User.find_by_password_reset_token!(params[:id])
  end

  def update
    @user = User.find_by_password_reset_token!(params[:id])
    if @user.password_reset_sent_at < 2.hour.ago
      flash[:notice] = 'Your Password reset has Expired'
      redirect_to new_password_reset_path
    elsif @user.update(user_params)
      flash[:notice] = 'Your Password has been Reset!'
      redirect_to new_session_path
    else
      render :edit
    end
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:password)
    end

end
