class UserController < ApplicationController
  def show
	@user = User.find(params[:id])
	@pins = @user.pins.page(params[:page]).per_page(4)
  end
end
