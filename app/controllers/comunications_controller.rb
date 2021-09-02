class ComunicationsController < ApplicationController
    
    def index
        @comunications = Comunication.all
    end

    def create
        #authorize! :create, Course, message: "You are not authorized!"
        @comunication = Comunication.new(comunication_params)
        if @comunication.save
            redirect_to comunications_path
        else
            render html: 'comunication not created'
        end
    end

    def new
        @comunication = Comunication.new
    end

    def destroy
        #authorize! :destroy, Course, message: "You are not authorized!"
        id = params[:id]
        if Comunication.exists?(id)
            @comunication = Comunication.find(id)
            @comunication.destroy
            redirect_to comunications_path
        else
            render html: 'comunication does not exist'
        end
    end
    
    private
    def comunication_params
        #vedi https://stackoverflow.com/questions/22487878/strong-parameters-require-multiple
        # for check require params
        #params.require(:course)
        #nome = params[:course].require(:nome)
        #orario = params[:course].require(:orario)
        #giorno = params[:course].require(:giorno)
        #durata = params[:course].require(:durata)
        #descrizione = params[:course].require(:descrizione)
        # for using where hash needed
        params.require(:comunication).permit(:description)
    end

end
