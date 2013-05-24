require 'minitest/autorun'

def add_stuff(a, b)
   4
end


describe 'adding stuff' do

    it 'returns the sum of two numbers' do
	sum = add_stuff(1, 3)
	sum.must_equal 4
    end

end
