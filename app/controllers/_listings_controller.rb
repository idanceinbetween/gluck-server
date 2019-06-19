class ListingsController < ApplicationController
    def index
        listings = Listing.all
        if listings
            render json: listings
        else
            render json: {error: 'There are no listings.'}, status: 404 
        end 
    end 

    def show
        listing = Listing.all.find_by(id: params[:id].to_i)
        if listing
            render json: listing
        else
            render json: {error: 'Listing not found.'}, status: 404 
        end 
    end 

    def create
        listing = Listing.new(listing_params)
        if listing.save
            render json: listing
        else
            render json: {error: "Error creating a new listing."}, status: 404
        end 
    end 

    private

    def listing_params
        params.require(:listing).permit(:id, :title, :expiry, :user_id, :gift_id, :exchange1_datetime, :exchange1_location, :exchange2_datetime, :exchange2_location)
    end 


end
