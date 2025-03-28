RSpec.describe StringCalculation do
    describe '#add' do
        it 'returns 0 for an empty string' do
            expect(add("")).to eq(0)
        end

        it 'returns the same number for a single number' do
            expect(add("2")).to eq(2)
        end

        it 'returns the sum of two numbers' do
            expect(add("2,4")).to eq(6)
        end

        it 'returns the sum of multiple numbers' do
            expect(add("2,4,6,5")).to eq(17)
        end

        it "returns sum of numbers if contains new lines between numbers" do
            expect(add("5\n6,4")).to eq(15)
          end
    end
end