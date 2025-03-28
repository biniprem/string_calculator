require 'test_helper'

RSpec.describe StringCalculation, type: :helper do
    describe '#add' do
        it 'returns 0 for an empty string' do
            expect(StringCalculation.add("")).to eq(0)
        end

        it 'returns the same number for a single number' do
            expect(StringCalculation.add("2")).to eq(2)
        end

        it 'returns the sum of two numbers' do
            expect(StringCalculation.add("2,4")).to eq(6)
        end

        it 'returns the sum of multiple numbers' do
            expect(StringCalculation.add("2,4,6,5")).to eq(17)
        end

        it 'returns sum of numbers if contains new lines between numbers' do
            expect(StringCalculation.add("5\n6,4")).to eq(15)
        end

        it 'return sum if different delimiters contains in the string' do
            expect(StringCalculation.add("//;\n1;2")).to eq(3)
        end

        it 'return error message for negative numbers' do
            expect(StringCalculation.add("2,-4,6,-8")).to eq("negative numbers not allowed -4,-8")
        end
    end
end