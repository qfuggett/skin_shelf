class ApplicationController < ActionController::Base

    def welcome
        @routines = Routine.all

    end
end
