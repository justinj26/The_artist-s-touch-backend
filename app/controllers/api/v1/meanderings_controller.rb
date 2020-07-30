class Api::V1::MeanderingsController < ApplicationController

# each of these actions needs a corressponding create
    def scraps
        @some_scraps = Meandering.where(type: Type.find_by(name: "scraps"), user: User.find_by(username: params[:username]))
        if @some_scraps.empty?
            type = Type.find_by(name: "scraps").id
            user = User.find_by(username: params[:username]).id
            created = "never created"
            # byebug
            render json: [{type_id: type, user_id: user, created_at: created}, {type_id: type, user_id: user, created_at: created}]
        else
            render json: @some_scraps
        end
    end

    def show_scrap
        meandering = Meandering.find(params[:id])
        render json: meandering
    end

    def create_scraps
        meandering = Meandering.create(meandering_params)
        render json: meandering 
    end

    def undecideds
        @undecideds = Meandering.where(type: Type.find_by(name: "undecideds"), user: User.find_by(username: params[:username]))
        if @undecideds.empty?
            type = Type.find_by(name: "undecideds").id
            user = User.find_by(username: params[:username]).id
            created = "never created"
            # byebug
            render json: [{type_id: type, user_id: user, created_at: created}, {type_id: type, user_id: user, created_at: created}]
        else
            render json: @undecideds
        end
    end

    def show_undecided
        meandering = Meandering.find(paramd[:id])
        render json: meandering
    end

    def create_undecideds
        meandering = Meandering.create(meandering_params)
        render json: meandering 
    end

    def possibilities
        @possibilities = Meandering.where(type: Type.find_by(name: "possibilities"), user: User.find_by(username: params[:username]))
        if @possibilities.empty?
            type = Type.find_by(name: "possibilities").id
            user = User.find_by(username: params[:username]).id
            created = "never created"
            # byebug
            render json: [{type_id: type, user_id: user, created_at: created}, {type_id: type, user_id: user, created_at: created}]
        else
            render json: @possibilities
        end
    end

    def show_possibility
        meandering = Meandering.find(paramd[:id])
        render json: meandering
    end

    def create_possibilities
        meandering = Meandering.create(meandering_params)
        render json: meandering 
    end

    def constraints
        @constraints = Meandering.where(type: Type.find_by(name: "constraints"), user: User.find_by(username: params[:username]))
        if @constraints.empty?
            type = Type.find_by(name: "constraints").id
            user = User.find_by(username: params[:username]).id
            created = "never created"
            # byebug
            render json: [{type_id: type, user_id: user, created_at: created}, {type_id: type, user_id: user, created_at: created}]
        else
            render json: @constraints
        end
    end

    def show_constraint
        meandering = Meandering.find(paramd[:id])
        render json: meandering
    end

    def create_constraints
        meandering = Meandering.create(meandering_params)
        render json: meandering 
    end

    def inspirings
        @inspirings = Meandering.where(type: Type.find_by(name: "inspirings"), user: User.find_by(username: params[:username]))
        if @inspirings.empty?
            type = Type.find_by(name: "inspirings").id
            user = User.find_by(username: params[:username]).id
            created = "never created"
            # byebug
            render json: [{type_id: type, user_id: user, created_at: created}, {type_id: type, user_id: user, created_at: created}]
        else
            render json: @inspirings
        end 
    end

    def show_inspiring
        meandering = Meandering.find(paramd[:id])
        render json: meandering
    end

    def create_inspirings
        meandering = Meandering.create(meandering_params)
        render json: meandering 
    end

    def uninspirings
        @uninspirings = Meandering.where(type: Type.find_by(name: "uninspirings"), user: User.find_by(username: params[:username]))
        if @uninspirings.empty?
            type = Type.find_by(name: "uninspirings").id
            user = User.find_by(username: params[:username]).id
            created = "never created"
            # byebug
            render json: [{type_id: type, user_id: user, created_at: created}, {type_id: type, user_id: user, created_at: created}]
        else
            render json: @uninspirings
        end
    end

    def show_uninspiring
        meandering = Meandering.find(paramd[:id])
        render json: meandering
    end

    def create_uninspirings
        meandering = Meandering.create(meandering_params)
        render json: meandering 
    end

    def musings
        @musings = Meandering.where(type: Type.find_by(name: "musings"), user: User.find_by(username: params[:username]))
        if @musings.empty?
            type = Type.find_by(name: "musings").id
            user = User.find_by(username: params[:username]).id
            created = "never created"
            # byebug
            render json: [{type_id: type, user_id: user, created_at: created}, {type_id: type, user_id: user, created_at: created}]
        else
            render json: @musings
        end
    end

    def show_musing
        meandering = Meandering.find(paramd[:id])
        render json: meandering
    end

    def create_musings 
        meandering = Meandering.create(meandering_params)
        render json: meandering 
    end

    def techniques 
        @techniques = Meandering.where(type: Type.find_by(name: "techniques"), user: User.find_by(username: params[:username]))
        if @techniques.empty?
            type = Type.find_by(name: "techniques").id
            user = User.find_by(username: params[:username]).id
            created = "never created"
            # byebug
            render json: [{type_id: type, user_id: user, created_at: created}, {type_id: type, user_id: user, created_at: created}]
        else
            render json: @techniques
        end
    end

    def show_techinque
        meandering = Meandering.find(paramd[:id])
        render json: meandering
    end

    def create_techniques
        meandering = Meandering.create(meandering_params)
        render json: meandering 
    end

    def landscapes
        @landscapes = Meandering.where(type: Type.find_by(name: "landscapes"), user: User.find_by(username: params[:username]))
        if @landscapes.empty?
            type = Type.find_by(name: "landscapes").id
            user = User.find_by(username: params[:username]).id
            created = "never created"
            # byebug
            render json: [{type_id: type, user_id: user, created_at: created}, {type_id: type, user_id: user, created_at: created}]
        else
            render json: @landscapes
        end
    end

    def show_landscape
        meandering = Meandering.find(paramd[:id])
        render json: meandering
    end

    def create_landscapes
        meandering = Meandering.create(meandering_params)
        render json: meandering 
    end

    def worlds
        @worlds = Meandering.where(type: Type.find_by(name: "worlds"), user: User.find_by(username: params[:username]))
        if @worlds.empty?
            type = Type.find_by(name: "worlds").id
            user = User.find_by(username: params[:username]).id
            created = "never created"
            # byebug
            render json: [{type_id: type, user_id: user, created_at: created}, {type_id: type, user_id: user, created_at: created}]
        else
            render json: @worlds
        end 
    end

    def show_world
        meandering = Meandering.find(paramd[:id])
        render json: meandering
    end

    def create_worlds
        meandering = Meandering.create(meandering_params)
        render json: meandering 
    end

    def update_meandering
        meandering = Meandering.find(params[:id])
        meandering.update(meandering_params)
        render json: meandering
    end

    def delete_meandering
        meandering = Meandering.find(params[:id])
        meandering.destroy
        render json: "Deleted"
    end

    private

    def meandering_params
        params.require(:meandering).permit(:content, :type_id, :user_id)
    end
end
