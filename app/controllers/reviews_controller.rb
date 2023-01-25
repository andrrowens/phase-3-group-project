class ReviewController < ApplicationController

    get "/reviews" do
        Review.all.to_json
    end

    get "/reviews/:id" do
        review = find_review
        review.to_json
    end

    delete "/reviews/:id" do
        review = find_review
        review.destroy
        review.to_json
    end

    private

    def find_review
        Review.find_by(id: params["id"])
    end

end