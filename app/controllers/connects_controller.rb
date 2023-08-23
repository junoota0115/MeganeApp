class ConnectsController < ApplicationController
    def index
    end

    def new
        @connect = Connect.new
    end

    def create
        @connect = Connect.new(params)

        if @connect.save
            redirect_to meganes_path
         else 
            render 'new',status: :unprocessable_entity
         end
    end
end
