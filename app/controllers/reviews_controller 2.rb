class ReviewsController < ApplicationController

  def create
    @review = current_user.reviews.new(review_params)

    if @review.save
      flash[:success] = "Success your review!"
    else
      flash[:alert] = "Something is wrong!"
    end

    redirect_back(fallback_location: request.referer)
  end

  private
    def review_params
      params.require(:review).permit(:reservation_id, :rating, :content)
    end

end
