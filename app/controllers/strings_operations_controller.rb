class StringsOperationsController < ApplicationController
    include StringCalculation

    def add_strings
        numbers="//;\n1;2"
        result = StringCalculation.add(numbers) 
        render plain: result
    end
end