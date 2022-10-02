%lang starknet
%builtins pedersen range_check

from starkware.cairo.common.math import (
    assert_not_zero, assert_not_equal, assert_nn, assert_le, assert_lt, assert_nn_le, assert_in_range, assert_250_bit, split_felt, assert_le_felt, assert_lt_felt, abs_value, sign, unsigned_div_rem, signed_div_rem)
	
# Common Math Operations

# Welcome to the Cairo math operations tutorial!
# Here you will learn how to use the basic math operations that Cairo provides:

#   assert_not_zero
#   assert_not_equal
#   assert_nn
#   assert_le
#   assert_lt
#   assert_nn_le
#   assert_in_range
#   assert_250_bit
#   split_felt
#   assert_le_felt
#   assert_le_felt
#   assert_lt_felt
#   abs_value
#   sign
#   unsigned_div_rem
#   signed_div_rem

# Below is a suite of test cases using these operations, feel free to edit them and test for yourself!

# TODO: Fix all of the incorrect values in the function calls by modifying only the lines including the comment

@external
func test_ok():
	# assert_not_zero takes in one argument and fails if the input is zero
	let (value) = 0 # your value here
	assert_not_zero(value)
		
	# assert_not_equal takes in two arguments and fails if they are equal
	let (value_one) = 121 # your value here
	let (value_two) = 121
	assert_not_equal(value_one, value_two)

	# assert_nn takes in one argument and fails if the input is negative
	let (value) = -14 # your value here
	assert_nn(value)

	# assert_le takes in two arguments and fails if the first is greater than the second
	let (value_one) = 24 # your value here
	let (value_two) = 23
	assert_le(value_one, value_two)

	# assert_lt takes in two arguments and fails if the first is greater than or equal to the second
	let (value_one) = 561 # your value here
	let (value_two) = 561
	assert_lt(value_one, value_two)

	# assert_nn_le takes in two arguments and fails if the first is negative or greater than the second
	let (value_one) = -1 # your value here
	let (value_two) = 2
	assert_nn_le(value_one, value_two)

	# assert_in_range takes in three arguments and fails if the first is not greater than or equal to the second 
	# or less than the third
	let (value_one) = 4 # your value here
	let (value_two) = 1
	let (value_three) = 3
	assert_in_range(value_one, value_two, value_three)

	# assert_250_bit takes in one argument and fails if it is greater than 2 ** 250 - 1, the greatest 250 bit integer
	let (value) = 1809251394333065553493296640760748560207343510400633813116524750123642650624 # your value here
	assert_250_bit(value)

	# split_felt takes in one argument and returns the high and low parts of the integer (example: split_felt(1234) returns (12, 34) and split_felt(12345) returns (123, 45))
	let (value_one, value_two) = split_felt(123456789)
	assert value_one = 1234 # your value here
	assert value_two = 6789

	# assert_le_felt takes in two split felt values and fails if the first is greater than the second
	# assert_lt_felt takes in two split felt values and fails if the first is greater than or equal to the second
	let (value_one, value_two) = split_felt(1234)
	let (value_three, value_four) = split_felt(2334)
	assert_le_felt(value_two, value_four)
	assert_lt_felt(value_two, value_four)

	# abs_value takes in one value and returns the absolute value
	let (value) = -1 # your value here
	let (x) = abs_value(value)
	assert x = 2

	# sign takes in one value and returns -1 if it is negative, 0 if it is 0, and 1 if it is positive
	let (value) = -144 # your value here
	let (x) = sign(value)
	assert x = 0

	# unsigned_div_rem takes in two values and returns the absolute value of the quotient and 
	# remainder from the integer division of the first and second value
	let (value_one, value_two) = unsigned_div_rem(7, -2)
	assert value_one = 3
	assert value_two = 0 # your value here

	# signed_div_rem takes in two values and returns the quotient and 
	# remainder from the integer division of the first and second value
	let (value_one, value_two) = signed_div_rem(7, -2)
	assert value_one = 4 # your value here
	assert value_two = 1
    return ()
end
