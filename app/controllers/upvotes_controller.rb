class UpvotesController < ApplicationController
  def create
    # Upvote?
    @product = Product.find(params[:product_id])
    @product.upvotes.create! user: current_user

    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
  end

  def destroy
    upvote = Upvote.find(params[:id])
    @product = upvote.product

    upvote.destroy

    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
  end
end
