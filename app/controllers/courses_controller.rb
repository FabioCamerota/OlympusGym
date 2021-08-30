class CoursesController < ApplicationController
    #Ricordati di cancellare la seguente riga
    skip_before_action :verify_authenticity_token

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
        params.require(:course)
        nome = params[:course].require(:nome)
        orario = params[:course].require(:orario)
        giorno = params[:course].require(:giorno)
        durata = params[:course].require(:durata)
        descrizione = params[:course].require(:descrizione)
        Course.create!(:nome => nome, :orario => orario, :giorno => giorno, :durata => durata, :descrizione => descrizione)
        redirect_to courses_path
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
end
