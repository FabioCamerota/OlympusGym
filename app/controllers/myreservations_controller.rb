class MyreservationsController < ApplicationController
  def index
    @reservations = Reservation.where(:user_id => current_user.id)
    @courses = Course.all #Da eliminare
    #@courses = Course.where(@reservations.contains()) #DA FINIRE !!!
  end
end
