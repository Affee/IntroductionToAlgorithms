//
//  main.m
//  Shells Sort----希尔排序
//
//  Created by affee on 2018/8/14.
//  Copyright © 2018年 affee. All rights reserved.
//
//希尔排序是1959 年由D.L.Shell 提出来的，相对直接排序有较大的改进。希尔排序又叫缩小增量排序
//
//　　基本思想：先将整个待排序的记录序列分割成为若干子序列分别进行直接插入排序，待整个序列中的记录“基本有序”时，再对全体记录进行依次直接插入排序。
//
//　　算法流程：
//
//　　1）选择一个增量序列t1，t2，…，tk，其中ti>tj，tk=1；
//
//　　2）按增量序列个数k，对序列进行k 趟排序；
//
//　　3）每趟排序，根据对应的增量ti，将待排序列分割成若干长度为m 的子序列，分别对各子表进行直接插入排序。仅增量因子为1 时，整个序列作为一个表来处理，表长度即为整个序列的长度。
//
//　　时间复杂度：O(n^(1+e))(其中0<e<1)，在元素基本有序的情况下，效率很高。希尔排序是一种不稳定的排序算法。



#import <Foundation/Foundation.h>
#include <stdio.h>
typedef int ElementType;

void Swap(ElementType *A, ElementType *B) {
    ElementType temp = *A;
    *A = *B;
    *B = temp;
}

/* 原始希尔排序C语言描述 */
void Shell_Sort(ElementType Data[], int N) {
    int D, P, i;
    ElementType temp;
    for (D = N / 2; D > 0; D /= 2) { /*原始希尔排序增量序列*/
        for (P = D; P < N; P++) { /*插入排序*/
            temp = Data[P];
            for (i = P; i >= D && Data[i - D]>temp; i -= D)
                Data[i] = Data[i - D];
            Data[i] = temp;
        }
    }
}

int main() {
    ElementType Data[] = {19, 3, 10, 20, 22, 28, 33, 23, 15, 30};
    Shell_Sort(Data, 10);
    return 0;
}
