#include <stdio.h>
#include <math.h>
#include <iostream>
#include <algorithm>
#include <vector>

using namespace std;

const double pi = acos(-1.0);

const char tran[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

int cnt = 0;

void tobinary(int data) {
    vector < int > ans;
    ans.clear();
    while (data) {
        ans.push_back(data % 2);
        data /= 2;
    }
    while (ans.size() < 8) ans.push_back(0);
    reverse(ans.begin(), ans.end());
    for (int i = 0; i < ans.size(); i += 4) {
        int j, k, l;
        j = i + 1;
        k = j + 1;
        l = k + 1;
        printf("%c", tran[ans[i]*8+ans[j]*4+ans[k]*2+ans[l]]);
    }
    
    //for (auto x : ans) printf("%d", x);
    printf("\n");
}

int main() {
    for (double idx = 0.0; cnt < 201; cnt++, idx += pi/100) {
        //printf("%f\n", sin(idx));
        double ans = 0.5 * sin(idx) + 0.5;
        // MAX 1.84 V for (DAC_DATA = 8191)
        // generate for Intel Board
        /*
        double k = ans / 1.84;
        int delta = 0;
        int dac_data = 8191;
        if (ans > 0) {
            delta = (int)(k * 8191);
            dac_data -= delta;
        } else {
            delta = (int)(-k * 8192);
            dac_data += delta;
        }
        tobinary(dac_data);
        */

        // generate for Xilinx Board
        double k = ans / 1.0;
        tobinary(k * 255);
    }
    return 0;
}