class RelationshipsController < ApplicationController
  before_action :require_user_logged_in

  def create
    @product = Product.find(params[:product_id])
    current_user.purchase(@product)
    flash[:success] = 'ユーザをフォローしました。'
    redirect_to user
  end

  def destroy
  end
end