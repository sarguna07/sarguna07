class UniversesController < ApplicationController

    def index
        data = Universe.active.joins(:students).map(&:object_json)

        render json:{
            status: true,
            data: data
        }
    end

    def create
        object = Universe.create!(allowed_params)

        render json:{
            status: true,
            data: object.id,
            message: "Successfull created..!"
        }
    end

    private

    def allowed_params
        params.permit(:name)
    end

    def object_json(obj)
       as_json(only:{
            students: {
            only: [:id, :name, :gender]
        }})
    end
end
