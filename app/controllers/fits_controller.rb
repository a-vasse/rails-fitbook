class FitsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @fit = Fit.new
  end

  def create
    @user = User.find(params[:user_id])
    @fit = Fit.new(fit_params)
    @fit.user = @user
    if @fit.save
      redirect_to users_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @fit = Fit.find(params[:id])
    @fit.destroy
    redirect_to fits_path
  end

  private

  def fit_params
    params.require(:fit).permit(:name, :sneaker_id, :watch_id, :top_id, :pant_id, :user_id)
  end
end
