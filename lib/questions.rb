# keep only the elements that start with an a
def select_elements_starting_with_a(array)
    array.select {|i| i[0] == "a"}
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
    array.select {|i|  i[0] == "a" || i[0] =="e" || i[0] == "i" || i[0] == "o" || i[0] == "u"}
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
    array.select {|i| i != nil}
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
    array.select {|i| i != nil && i != false }
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
    new_array = Array.new
    array.each {|element|
    new_array << element.reverse
    } 
    new_array
end

# given an array of student names, like ['Bob', 'Dave', 'Clive']
# give every possible pairing - in this case:
# [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
# make sure you don't have the same pairing twice,
def every_possible_pairing_of_students(array)
    # 1 - 1st with 2nd, 3rd ... final
    i = 1
    current_student = 0
    max = array.size
    new_array = []
    array.each {|student|
        # 3 -  final does nothing
        while i < max
        new_array << [student,array[i]]
        i += 1
        end
    # 2 -  2nd with 3rd, 4th ... final
    current_student += 1
    i = 1 + current_student
    }
    new_array
end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
    array[3..-1]
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
    array.unshift(element)
end

# sort an array of words by their last letter, e.g.
# ['sky', 'puma', 'maker'] becomes ['puma', 'maker', 'sky']
def array_sort_by_last_letter_of_word(array)
    new_array = Array.new
    array.each {|element|
    new_array << element.reverse
    } 
    new_array.sort!
    new_array2 = Array.new
    new_array.each {|element|
    new_array2 << element.reverse
    } 
    new_array2
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
    # Find string length
    # half string length
    # if odd, add one
    string_length = string.size
    string_length += 1 if string_length.odd?
    half_string_length = string_length/2
    string[0..(half_string_length-1)]
    #return string up to half
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
    new_number = number if number < 0
    new_number = -number if number > 0
    new_number
end

# turn an array of numbers into two arrays of numbers, one an array of
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)
    #Find out if each element even or odd
    # if even, put into one array
    # if odd, put into other array
    # combine arrays
    even_array = Array.new
    odd_array = Array.new
    final_array = Array.new
    array.each{|number|
    if number.odd?
        odd_array << number
    else
        even_array << number
    end
    }
    final_array = [even_array,odd_array]
end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
    # reverse the element
    # check if reversed element is same as previous element
    # add one to the count if yes
    count = 0
    array.each {|element|
    count += 1 if element == element.reverse
    }
    count
end

# return the shortest word in an array
def shortest_word_in_array(array)
    # check each element of array
    # if the shortest, update the shortest word
    shortest_word = array[0]
    array.each {|word|
    shortest_word = word if shortest_word.size>word.size
    }
    shortest_word
end

# return the longest word in an array
def longest_word_in_array(array)
    longest_word = array[0]
    array.each {|word|
    longest_word = word if longest_word.size<word.size
    }
    longest_word
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
    # iterate through array
    # have a sum variable keeping track
    # add to sum variable each time
    sum = 0
    array.each {|x|
        sum += x
    }
    sum
end

# turn an array into itself repeated twice. So [1, 2, 3]
# becomes [1, 2, 3, 1, 2, 3]
def double_array(array)
    array*2
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
    symbol.to_s
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
    sum = 0
    array.each {|x|
        sum += x
    }
    (sum.round(2) / array.size).round
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
    # go through array putting into new array
    # if greater than 5, stop
    new_array = []
    array.each {|x|
        break if x > 5
        new_array << x
    }
    new_array
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
    # work out how many key value pairs
    #loop through adding keys and values
    hash=Hash.new
    number_of_keys = (array.size)
    number_of_keys.times {|i|
    next if i.odd?
    hash[array[i]] = array[i+1]
    }
    hash
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
    #go through each word
    new_array = []
    array.each {|word|
        new_array << word.split(//)
    }
    new_array.flatten.sort
    #separate each letter and add to new array of letters - .split(//)
    #take all letters and sort for alphabet
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
    hash.invert
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
    #Extract all keys and values
    #Sum all items
    new_array = []
    new_array << hash.keys
    new_array << hash.values
    new_array = new_array.flatten
    sum = 0
    new_array.each {|x|
        sum += x
    }
    sum
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
    #iterate through letter by letter and see if caps = what it was before
    new_string = ""
    string.split("").each {|letter|
        new_string << " " if letter == " "
        if letter != letter.capitalize
              new_string << letter
        end
    }
    new_string
    #if yes, don't put the letter into a new string
    # if not a capital, do put the letter in a new string
    #final value is the string
end

#----------------------------------------------------- Did this on Mac - need to pull the updates in

# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
end

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
end

#-----------------------------------------------------Did this on Mac - need to pull the updates in

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
    true_or_false = false
    # collect all non-special characters
    chars = []
    chars = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a + (0..9).to_a + ["0","1","2","3","4","5","6","7","8","9"]
    chars << " "
    # check each part of string to see if any special characters
   string.split("").each {|character|
        if !chars.include?(character)
            true_or_false = true
        else
            next
        end
    }
    true_or_false
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
    range.max
end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
    range.to_s.include?("...")
end

# get the square root of a number
def square_root_of(number)
    Math.sqrt(number)
end

# count the number of words in a file
def word_count_a_file(file_path)
    word_count = 0
    f = File.open(file_path, "r")
        f.each_line {|line|
            word_count += line.to_s.split.size
        }
    word_count
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
    send(str_method)
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
   # e.g. year, month, day
   # date format:  Time.local(1976, 8, 3)
   y = 2014
      # store array of bank holiday dates
    array = [Time.local(y,12,25),Time.local(y,12,26),Time.local(y,8,25),Time.local(y,5,26),Time.local(y,5,5),Time.local(y,4,21),Time.local(y,4,18),Time.local(y,1,1)]
   # check if date can be found in array
   array.each {|bank_hol_date|
    return true if bank_hol_date == date
   }
   false
   # if yes - return true
   # if no - return false
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
    # Key: tells you the YEAR where birthday will be on a Fri
    # each year = moves up 2 days
    loop {
    if birthday.friday? == true
        return birthday.year
    end
    # key -> don't need to account for day of week change in addition, only 1 year onwards - the .friday? will work out what day of the week it is
    birthday = birthday + (365*24*60*60) }
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
    # take each word, get the size and store it
    word_size_array = Array.new
    f = File.read(file_path)
        f.split.each {|word|
        word_size_array << word.gsub(/[.,]/,"").size
    }
    # count the frequency of each number
    #store in a hash
    # give hash default value of 0 to avoid nil class issue, that way, for each key, counting up by 1
    hash = Hash.new(0)
    word_size_array.each {|x|
        hash[x] += 1
    }
    hash
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo
    please enter a number
    puts "Please enter a whole number, no decimals"
    input = gets.chomp.to_i
    ######################### TEST ALL 1-100
    #100.times do |i|
    #    input = i
    #########################################
        #Work around: if #.0/# - #/# > 0
        #if multiple of 3 or 5, fizzbuzz
        if (input/3.0) - (input/3) == 0 && (input/5.0) - (input/5) == 0
            puts "fizzbuzz"
        #if multiple of 3, fizz
        elsif
            (input/3.0) - (input/3) == 0
            puts "fizz"
        #if multiple of 5, buzz
        elsif
            (input/5.0) - (input/5) == 0
            puts "buzz"
        else puts input.to_s
        end
    end
end

# To test fizzbuzz:
##### fizzbuzz_without_modulo

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer
end
