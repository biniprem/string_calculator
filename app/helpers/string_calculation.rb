module StringCalculation
    def add(numbers)
        return 0 if numbers.empty?

        delimiter = ','
        if numbers.start_with?("//")
            parts = numbers.split("\n")
            delimiter = ";"
            numbers = parts[1]
        end
        numbers = numbers.gsub("\n" , delimiter)
        number_list = numbers.split(delimiter).map(&:to_i)
        number_list.sum
    end
end