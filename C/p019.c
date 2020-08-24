//
// Created by lorenzodb on 24/08/2020.
//
#include <stdio.h>

#define NUM_DAYS 7
#define NUM_MONTHS 12

// functions for different types of months

int normal(int start_day, int days);
int feb(int year, int start_day);

int main() {
    int year = 1901, month = 0, day = 2;
    int days[12] = {31, 28, 31, 30, 31, 30, 31,31,30 ,31,30, 31};
    int res = 0;

    while(year != 2000 || month != 11) {
        // not feb
        if (month != 1) {
            day = normal(day, days[month]);
        } else {
            day = feb(year, day);
        }
        month = (month + 1) % 12;
        if (month == 0) year++;

        // first day of month is sunday
        if(day == 0) res++;
    }
    printf("There are %d months where the first day is a sunday during the twentieth century.\n", res);
    return 0;
}

int normal(int start_day, int days) {
    return (start_day + days) % NUM_DAYS;
}

int feb(int year, int start_day) {
    int end_day = start_day + 28;
    if(year % 4 == 0) {
        end_day++;
    }
    return end_day % NUM_DAYS;
}