class ApplicationController < ActionController::Base

    # def current_user
    #     return unless session[:user_id]
    #     @current_user ||= User.find(session[:user_id])
    # end

    def welcome
        @routines = Routine.all

    end
end
