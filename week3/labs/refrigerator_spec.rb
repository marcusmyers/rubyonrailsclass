require 'minitest/autorun'
require_relative 'refrigerator'

describe Refrigerator do
    describe 'create refrigerator' do
	
	it 'holds drinks and defaults to empty list if none given' do
	    ref = Refrigerator.new
	    ref.drinks.must_be_instance_of Array
	end
	
   	it 'has a capacity of 12 if not defined' do
	    ref = Refrigerator.new
	    ref.capacity.must_equal 12
	end

	it 'current number of drinks' do
	    ref = Refrigerator.new
	    ref.count.must_be_instance_of Fixnum
	end

	it 'check if refrigerator is full' do
	    drinks = Array.new(12, 'beer')
	    ref = Refrigerator.new drinks
	    ref.is_full?.must_equal true
	end

	it 'check if refrigerator is empty' do
	    ref = Refrigerator.new 
	    ref.is_empty?.must_equal true
	end

	it 'remove a drink from the fridge' do
	    ref = Refrigerator.new ['beer'], 1
	    ref.remove
	    ref.is_empty?.must_equal true
	end	

	it 'Add a drink to the fridge' do
	    ref = Refrigerator.new
	    c = ref.count
	    ref.add 'beer'
	    ref.count.must_equal c+1
	end	

	it 'Does not allow you to remove a drink when there is now drink' do
	    ref = Refrigerator.new ['beer'], 1
	    ref.remove
	end

#	it '' do

#	end	

#	it '' do

#	end	

    end
end
