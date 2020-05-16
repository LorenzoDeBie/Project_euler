#!/usr/bin/env python3

numbers = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["", "ten", "twenty", "thrity", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

total = 0

for number in range(1, 20):
    print("adding", numbers[number], len(numbers[number]))
    total += len(numbers[number])

# all numbers till 20 are now added

for number in range(2, 10):
    for e in range(0, 10):
        print("adding", tens[number], numbers[e], len(tens[number] + numbers[e]))
        total += len(tens[number] + numbers[e])

for i in range(1, 10):
    print("adding", numbers[i], "hundred", len(numbers[i] + "hundred"))
    total += len(numbers[i] + "hundred")
    for number in range(1, 20):
        print("adding", numbers[i], "hundred and", numbers[number], len(numbers[i] + "hundredand" + numbers[number]))
        total += len(numbers[i] + "hundredand" + numbers[number])

    # all numbers till 20 are now added

    for number in range(2, 10):
        for e in range(0, 10):
            print("adding", numbers[i], "hundred and", tens[number], numbers[e], len(numbers[i] + "hundredand" + tens[number] + numbers[e]))
            total += len(numbers[i] + "hundredand" + tens[number] + numbers[e])


print("adding", "one thousand")
total += len("one" + "thousand")
print(total)