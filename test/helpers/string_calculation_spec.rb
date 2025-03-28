RSpec.describe StringCalculation do
    describe '#add' do
        it 'returns 0 for an empty string' do
            expect(add("")).to eq(0)
        end

        it 'returns the same number for a single number' do
            expect(add("2")).to eq(2)
        end

        it 'returns the sumof two numbers' do
            expect(add("2,4")).to eq(6)
        end
    end
end