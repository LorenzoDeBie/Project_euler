//
// Created by lorenzodb on 25/08/2020.
//
#include <vector>
#include <set>
#include <iostream>

const int aantal = 10000;

int get_sum_of_divisors(int);

int main() {
    int sum = 0;

    for(int i = 1; i <= aantal; i++) {
        int x = get_sum_of_divisors(i);
        int y = get_sum_of_divisors(x);
        if(i == y && i != x) {
            sum += x;
            sum += i;
            std::cout << "found pair: " << x << " " << i << std::endl;
        }
    }
    sum /= 2;
    std::cout << "Result: " << sum << std::endl;
    return 0;
}

int get_sum_of_divisors(int x) {
    int sum = 0;
    for(int i = 1; i < x; i++) {
        if(x % i == 0) sum +=i;
    }
    return sum;
}


