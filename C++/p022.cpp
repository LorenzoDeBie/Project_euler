//
// Created by lorenzodb on 25/08/2020.
//
#include <vector>
#include <string>
#include <fstream>
#include <iostream>

int main() {
    std::ifstream input_file;
    input_file.open("data/p022_names.txt");
    if(!input_file.is_open()) return 1;
    std::vector<std::string> input;
    std::string name;
    while(getline(input_file, name, ',')) {
        name.erase(std::remove(name.begin(), name.end(), '"'), name.end());
        input.push_back(name);
    }
    input_file.close();
    std::sort(input.begin(), input.end());

    int sum = 0;
    for(int i = 0; i < input.size(); i++) {
        name = input[i];
        int namesum = 0;
        for(const char &c : name) {
            namesum += c - 'A' + 1;
        }
        sum += namesum * (i + 1);
    }

    std::cout << "Result: " << sum << std::endl;
    return 0;
}