class ReviewController < ApplicationController

    get "/reviews" do
        Review.all.to_json
    end

    get "/reviews/:id" do
        review = find_review
        review.to_json
    end

    post "/reviews" do
        review = Review.create(name:params[:name], review:params[:review])

        # review.to_json
        if review.id
            halt 201, {review:review}.to_json
        else
            halt 400, {message:review.errors.full_messages.to_sentence}.to_json
        end
    end

    delete "/reviews/:id" do
        review = find_review
        review.destroy
        review.to_json
    end

    patch "/reviews/:id" do
        review = find_review
        # binding.pry
        if review && review.update(name:params[:name], review:params[:review]) 
            halt 200, review.to_json
        else 
             halt 400, review.errors.full_messages.to_sentence.to_json
        end
    end

    private

    def find_review
        Review.find_by(id: params["id"])
    end

end