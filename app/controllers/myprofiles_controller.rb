class MyprofilesController < ApplicationController
    def show
        id = params[:id]
        if User.exists?(id)
            @user = User.find(id)
        else
            render html: 'User does not exist'
        end
    end
end