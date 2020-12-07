class ApplicationController < ActionController::Base

    def welcome
        @routines = Routine.all
        @products = Product.all
    end
end
