class CoursesController < ApplicationController

    def index
        @courses = Course.all
    end

    def show
        id = params[:id]
        if Course.exists?(id)
            @course = Course.find(id)
        else
            render html: 'Course does not exist'
        end
    end

    def create
        @course = Course.new(course_params)
        if @course.save
            redirect_to courses_path
        else
            render html: 'Course not created'
        end
    end

    def new
        @course = Course.new
    end

    def destroy
        id = params[:id]
        if Course.exists?(id)
            @course = Course.find(id)
            @course.destroy
            redirect_to courses_path
        else
            render html: 'Course does not exist'
        end
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        if @course.update(course_params)
            redirect_to courses_path
        else
            render html: 'Course does not exist'
        end
    end
    
    private
    def course_params
        #vedi https://stackoverflow.com/questions/22487878/strong-parameters-require-multiple
        # for check require params
        #params.require(:course)
        #nome = params[:course].require(:nome)
        #orario = params[:course].require(:orario)
        #giorno = params[:course].require(:giorno)
        #durata = params[:course].require(:durata)
        #descrizione = params[:course].require(:descrizione)
        # for using where hash needed
        params.require(:course).permit(:nome, :orario, :giorno, :durata, :descrizione)
    end

end
