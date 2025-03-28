class StringsOperationsController < ApplicationController
    include StringCalculation

    def add_strings
        numbers=""
        result = add(numbers) 
        render plain: result
    end
end