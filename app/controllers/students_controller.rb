class StudentsController < ApplicationController

    def create
        universe = Universe.find(params[:universe_id])
        object = universe.students.create!(allowed_params)

        render json:{
            status: true,
            data: object.id,
            message: "Successfully Created..!"
        }
    end

    def student_in_all_universe
        universe_count = Universe.active.count

        data = Student.all.group(:entity_id).having("COUNT(*) > #{universe_count - 1}")

        render json:{
            status: true,
            data: data
        }
    end

    private

    def allowed_params
        params.permit(:name, :gender, :height, :weight, :entity_id)
    end

end


