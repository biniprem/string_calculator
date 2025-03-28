module StringCalculation
    def add(numbers)
        return 0 if numbers.empty?

        delimiter = ','

        numbers = numbers.gsub("\n" , delimiter)
        number_list = numbers.split(delimiter).map(&:to_i)
        number_list.sum
    end
end