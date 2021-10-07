class WinepurchasesController < ApplicationController
    def index
        winepurchases = Winepurchase.all
        render json:  winepurchases
    end
end
