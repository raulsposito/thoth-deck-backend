module Api
  module V1 
    class CardController < ApplicationController
      def index
        @cards = Card.all
      end
    
      def show
        @card = Card.find_by_id(params[:id])
      end
    end
  end
end
