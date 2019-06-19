class ExchangesController < ApplicationController

    def index
        exchanges = Exchange.all
        if exchanges
            render json: exchanges
        else
            render json: {error: 'There are no exchanges.'}, status: 404 
        end 
    end 

    def show
        exchange = Exchange.all.find_by(id: params[:id].to_i)
        if exchange
            render json: exchange
        else
            render json: {error: 'Exchange not found.'}, status: 404 
        end 
    end

    def create
        exchange = Exchange.new(exchange_params)
        if exchange.save
            render json: exchange
        else 
            render json: {error: 'Server error.'}, status: 404
        end 
    end 

    def update
        exchange = Exchange.all.find_by(id: params[:id].to_i)
        if exchange.update(exchange_params)
            render json: exchange
        else
            render json: {error: 'Exchange cannot be updated.'}, status: 404 
        end 
    end

    private

    def exchange_params
        params.require(:exchange).permit(:exchange_stat_id, :date, :gift_id, :gifter_id, :recipient_id)
    end 
end
