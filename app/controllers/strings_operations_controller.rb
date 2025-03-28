class StringsOperationsController < ApplicationController
    include StringCalculation

    def add_strings
        numbers="1,2"
        result = add(numbers) 
        render plain: result
    end
end