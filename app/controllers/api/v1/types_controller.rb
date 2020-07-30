class Api::V1::TypesController < ApplicationController

    def index 
        types = Type.all 
        render json: types 
    end
end
