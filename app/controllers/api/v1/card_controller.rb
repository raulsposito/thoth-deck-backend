module Api
  module V1 
    class CardController < ApplicationController
      before_action :set_card, only: [:show]

      def index
        @cards = Card.all
        render json: @cards
      end
    
      def show
        render json: @card 
      end

      private 

      def set_card
        @card = Card.find(params[:index])
      end

      def card_params
        params.require(:card).permit(:index, :title)
      end
    end
  end
end
