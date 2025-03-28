module StringCalculation
    def self.add(numbers)
        return 0 if numbers.empty?

        delimiter = ','
        if numbers.start_with?("//")
            parts = numbers.split("\n")
            delimiter = ";"
            numbers = parts[1]
        end
        numbers = numbers.gsub("\n" , delimiter)
        number_list = numbers.split(delimiter).map(&:to_i)
        negative_numbers = number_list.select { |num| num < 0 }
        
        if negative_numbers.empty?
            number_list.sum
        else
            "negative numbers not allowed #{negative_numbers.join(',')}"
        end        
    end
end