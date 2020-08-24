//
// Created by lorenzodb on 23/08/2020.
//
#include <stdio.h>

#define ROWS 15

int max(int, int);

int main() {
    int data[ROWS][ROWS] = {
            { 75 },
            { 95, 64 },
            { 17, 47, 82 },
            { 18, 35, 87, 10 },
            { 20, 4, 82, 47, 65 },
            { 19, 1, 23, 75, 3, 34 },
            { 88, 2, 77, 73, 7, 63, 67 },
            { 99, 65, 04, 28, 6, 16, 70, 92 },
            { 41, 41, 26, 56, 83, 40, 80, 70, 33 },
            { 41, 48, 72, 33, 47, 32, 37, 16, 94, 29 },
            { 53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14 },
            { 70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57 },
            { 91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48 },
            { 63, 66, 4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31 },
            { 4, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 4, 23 },
    };

    // loop over all rows from bottom to top
    // skip bottom row because was already initialized
    for(int i = ROWS - 2; i >= 0; i--) {
        // loop over all numbers in this row
        for(int n = 0; n <= i; n++) {
            int child_left = data[i + 1][n], child_right = data[i + 1][n + 1];
            int biggest_child = max(child_left, child_right);
            data[i][n] += biggest_child;
        }
    }
    printf("Maximum path sum: %d\n", data[0][0]);
    return 0;
}

int max(int a, int b) {
    return a > b ? a : b;
}