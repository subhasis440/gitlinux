#!/bin/bash

# Reading input from the user
read -p "Enter a number (a): " a
read -p "Enter another number (b): " b

# Arithmetic operators
echo "Arithmetic Operators:"
echo "a = $a, b = $b"
echo "a + b = $((a + b))"
echo "a - b = $((a - b))"
echo "a * b = $((a * b))"
echo "b / a = $((b / a))"
echo "b % a = $((b % a))"
echo

# Relational operators
echo "Relational Operators:"
echo "a = $a, b = $b"
echo "a > b is $((a > b))"
echo "a < b is $((a < b))"
echo "a == b is $((a == b))"
echo "a != b is $((a != b))"
echo

# Logical operators
echo "Logical Operators:"
d=true
e=false
echo "d = $d, e = $e"
echo "d AND e is $((d && e))"
echo "d OR e is $((d || e))"
echo "NOT d is $((!d))"
echo

# String operators
echo "String Operators:"
read -p "Enter a string (str1): " str1
read -p "Enter another string (str2): " str2
echo "str1 = $str1, str2 = $str2"
echo "str1 = str2 is $([ "$str1" = "$str2" ] && echo true || echo false)"
echo "str1 != str2 is $([ "$str1" != "$str2" ] && echo true || echo false)"
echo "str1 -n is $([ -n "$str1" ] && echo true || echo false)"
echo "str2 -z is $([ -z "$str2" ] && echo true || echo false)"
echo

# Assignment operators
echo "Assignment Operators:"
f=$a
echo "f = $f"
echo "f += $b -> f = $((f += b))"
echo "f -= $b -> f = $((f -= b))"
echo "f *= $b -> f = $((f *= b))"
echo "f /= $b -> f = $((f /= b))"
echo "f %= $b -> f = $((f %= b))"
echo

# Bitwise operators
echo "Bitwise Operators:"
echo "a = $a, b = $b"
echo "a AND b = $((a & b))"
echo "a OR b = $((a | b))"
echo "a XOR b = $((a ^ b))"
echo "NOT a = $((~a))"
echo "a << 1 = $((a << 1))"
echo "b >> 1 = $((b >> 1))"
echo

# Miscellaneous operators
echo "Miscellaneous Operators:"
i=$a
echo "i = $i"
echo "i++ = $((i++))"
echo "++i = $((++i))"
echo "i-- = $((i--))"
echo "--i = $((--i))"
