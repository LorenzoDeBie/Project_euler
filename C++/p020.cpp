#include <vector>
#include <iostream>
#include <numeric>

int main() {
    std::vector<int> res{1};

    for(int i = 2; i < 101; i++) {
        std::transform(res.begin(), res.end(), res.begin(), [=](int x){
            return x*i;
        });

        for(int n = 0; n < res.size(); n++) {
            int carry = res[n] / 10, remainder = res[n] % 10;
            res[n] = remainder;
            if(carry != 0) {
                if (n == res.size() - 1) res.push_back(carry);
                else res[n + 1] += carry;
            }
        }
    }

    int sum = std::accumulate(res.begin(), res.end(), 0);
    
    std::cout << "Sum: " << sum << std::endl;
    return 0;
}
