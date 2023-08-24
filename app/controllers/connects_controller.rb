class ConnectsController < ApplicationController
    def index
        @connects = Connect.all
    end

    def new
        @connect = Connect.new
    end

    def create
        @connect = Connect.new(connect_params)

        if @connect.save
            redirect_to meganes_path
         else 
            render 'new',status: :unprocessable_entity
         end
    end

    private
    def connect_params
        params.require(:connect).permit(:name,:name_kana,:email,:tel_number,:inquiry,:content)
    end
end
