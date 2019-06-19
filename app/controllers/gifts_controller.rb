class GiftsController < ApplicationController
    def index
        gifts = Gift.all
        if gifts
            render json: gifts
        else
            render json: {error: 'There are no gifts.'}, status: 404 
        end 
    end 

    def show
        gift = Gift.all.find_by(id: params[:id].to_i)
        if gift
            render json: gift
        else
            render json: {error: 'Gift not found.'}, status: 404 
        end 
    end 

    def create
        gift = Gift.new(gift_params)
        if gift.save
            render json: gift
        else
            render json: {error: "Error creating a new gift."}, status: 404
        end 
    end 


    def update
        gift = Gift.find_by(id: params[:id])
        if gift.update(gift_params)
            render json: gift
        else
            render json: {error: "Error editing your gift."}, status: 404
        end 
    end 

    private

    def gift_params
        params.require(:gift).permit(:title, :description, :image, :gifter_id, :expiry, :listing_stat_id, :exchange1_datetime, :exchange1_location, :exchange2_datetime, :exchange2_location)
    end 

end
