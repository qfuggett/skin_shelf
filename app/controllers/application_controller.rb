class ApplicationController < ActionController::Base

    def welcome
        @routines = Routine.all
        @products = Product.all
        @popular_product = Product.all.popular
    end
end
