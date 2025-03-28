class StringOperationsController < ApplicationController
    include StringCalculation

    def add_strings
        numbers=""
        add(numbers) 
    end
end