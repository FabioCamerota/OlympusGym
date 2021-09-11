class AllreservationsController < ApplicationController

    #Da qui
    attr_accessor :courses
    attr_accessor :users
    attr_accessor :reservations
    def initialize
      @courses = []
      @users = []
      @reservations = []
    end
    #fino a qui. Serve per poter fare l'append su courses. Vedi https://stackoverflow.com/questions/19100463/why-cant-i-append-an-array/19100484#19100484
    def index
      reservations = Reservation.all
      for reservation in reservations
        c = Course.find(reservation.course_id)
        @courses.append(c)
        u = User.find(reservation.user_id)
        @users.append(u)
        @reservations.append(reservation)
      end
  
      render layout: "application"
      
    end
end