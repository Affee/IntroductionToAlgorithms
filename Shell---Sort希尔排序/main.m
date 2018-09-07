//
//  main.m
//  Shell---Sort希尔排序
//
//  Created by affee on 2018/9/7.
//  Copyright © 2018年 affee. All rights reserved.
//

#import <Foundation/Foundation.h>
void ShellSort(int arr[],int nLength);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}

void ShellSort(int arr[],int nLength)
{
    int gap;
    int i; //小组
    int j;//插入排序
    int k;
    int temp;//保存无序数组的第一个
    
    if(arr == NULL || nLength <=0)return;
    
    //定步长
    for(gap = nLength/2 ; gap >0 ; gap/=2)
    {
        //按照步长分组
        for(i = 0;i<gap;i++)
        {
            //各组内部插入排序
            for(j = i+gap;j<nLength;j+=gap)
            {
                k = j - gap; //有序数组的最后一个
                temp = arr[j]; //无序数组的第一个
                
                while(arr[k] > temp && k >=i)
                {
                    arr[k +gap] = arr[k];
                    k-=gap;
                }
                arr[k+gap] = temp;
            }
        }
    }
}


//希尔排序的优化
//分组时，让各组一起进行插入排序，都只进行一次，然后循环进行，代码看起来简洁，但是实际耗时基本相同！
void ShellSort2(int arr[],int nLength)
{
    int gap;
    int i; //小组
    int j;//插入排序
    int k;
    int temp;//保存无序数组的第一个
    
    if(arr == NULL || nLength <=0)return;
    
    //定步长
    for(gap = nLength/2 ; gap >0 ; gap/=2)
    {
        for(i = gap;i<nLength;i++)
        {
            //各组内部插入排序
            k = i - gap; //有序数组的最后一个
            temp = arr[i]; //无序数组的第一个
            
            while(arr[k] > temp && k >=0)
            {
                arr[k +gap] = arr[k];
                k-=gap;
            }
            arr[k+gap] = temp;
        }
    }
}

