class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create]

  def new
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def create

  end
end
