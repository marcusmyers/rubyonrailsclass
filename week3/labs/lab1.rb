require 'minitest/autorun'

def is_upper?(str_text)
    str_text == str_text.upcase
end

def word_long?(str_text)
   if str_text.length >= 7
	return :long
   elsif str_text.length == 4
	return :naughty
   else
	return :short
   end
end

describe 'is upper case' do
    it 'returns true if all letters are uppercase' do
	is_upper?('TEST').must_equal(true)
    end

    it 'is the string long' do
	word_long?('Napoleon').must_equal(:long)
    end

    it 'is the string short' do
	word_long?('dog').must_equal(:short)
    end

    it 'is the string a four letter word' do
	word_long?('shit').must_equal(:naughty)
    end
end
