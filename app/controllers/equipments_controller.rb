  class EquipmentsController < ApplicationController
    before_action :authenticate

    def index
          @equipments = Equipment.all

          respond_to do |format|
            format.json
          end
      end

    def show
      @equipment = Equipment.find(params[:id])

      respond_to do |format|
        format.json
      end
    end

    def create
      equipment = Equipment.new(equipment_params)

      if equipment.save
        render json: equipment, status: 201, location: equipment
      end
    end


    def update
      equipment = Equipment.find(params[:id])

     if equipment.update_attributes!(equipment_params)
        render json: equipment, status: 200
      end
    end

    def destroy
      equipment = Equipment.find(params[:id])
      equipment.destroy
      head 204
    end



    private
    def authenticate
      api_key = request.headers['X-Api-Key']
      @user = User.where(api_key: api_key).first if api_key

      unless @user
        head status: :unauthorized
        return false
      end
    end


    def equipment_params
      params.permit(:name, :ip, :location,  :status)
    end

  end





