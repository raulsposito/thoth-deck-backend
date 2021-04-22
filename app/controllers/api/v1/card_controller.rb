module Api
  module V1 
    class CardController < ApplicationController
      before_action :set_card, only: [:show]

      def index
        filtered_cards
        render json: @cards
      end
    
      def show
        render json: @card 
      end

      private 

      def filtered_cards
        @cards = Card.all
        cards = cards.index if params[:index].present?
        cards = cards.title if params[:title].present?
        cards = cards.search_input(params[:query]) if params[:query].present?
      end

      def set_card
        @card = Card.find(params[:index])
      end

      def card_params
        params.require(:card).permit(:index, :title)
      end
    end
  end
end
