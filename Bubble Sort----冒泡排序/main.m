//
//  main.m
//  Bubble Sort----冒泡排序
//
//  Created by affee on 14/02/2019.
//  Copyright © 2019 affee. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSMutableArray *numbers = [NSMutableArray arrayWithObjects:@"2",@"312",@"42",@"124",@"66",@"27",@"97",@"82", nil];
//        NSLog(@"排序前%@",numbers);
//        for (int i = 0; i < numbers.count ; i++) {
////            比较的趟数
//            for (int j = 0; j < numbers.count - i-1; j++) {
////                比较的次数
//                if ([numbers[j] intValue] > [numbers[j+1] intValue] ) {
////                    升序排序
//                    int temp = [numbers[j] intValue ];
//                    numbers[j] = numbers[j+1];
//                    numbers[j+1] = [NSString stringWithFormat:@"%d",temp];
//                }
//            }
//        }
//        NSLog(@"排序后%@",numbers);
        NSMutableArray *result = [NSMutableArray arrayWithObjects:@"2",@"312",@"42",@"124",@"66",@"27",@"97",@"82", nil];
        //        NSLog(@"排序前%@",numbers);
        for (int i = 0; i<result.count-1; i++) {
            for (int j = 0; j<result.count-1-i; j++) {
                NSInteger left = [result[j] integerValue];
                NSInteger right = [result[j+1] integerValue];
                if (left>right) {
                    [result exchangeObjectAtIndex:j withObjectAtIndex:j+1];
                }
            }
        }
        NSLog(@"%@",result);
    
    }
    return 0;
}
