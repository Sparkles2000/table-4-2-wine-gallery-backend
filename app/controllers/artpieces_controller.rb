class ArtpiecesController < ApplicationController
    def index
        artpieces = Artpiece.all
        render json:  artpieces
    end
end
