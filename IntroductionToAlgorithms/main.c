//
//  main.c
//  IntroductionToAlgorithm
//
//  Created by Affee on 2018/6/6.
//  Copyright © 2018年 affee. All rights reserved.
//是sssj'k'd's  算法导论 函数的增长
#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    int i, j, k;
    for(i=1; i<n; i++)
    {
        //找到要插入的位置
        for(j=0; j<i; j++)
            if(a[i] < a[j])
                break;
        //插入，并后移剩余元素
        if(j != i)
        {
            int temp = a[i];
            for(int k=i-1; k>=j; k--)
                a[k+1] = a[k];
            a[j] = temp;
        }
    }
    PrintDataArray(a, n);
    return 0;
    
    
    
    
}
