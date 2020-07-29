//
//  KKSortingMethod.m
//  CodeFragmentation
//
//  Created by Kai Lv on 2020/7/16.
//  Copyright © 2020 Kaaaaai. All rights reserved.
//

#import "KKSortingMethod.h"

@implementation KKSortingMethod

/*
 # 1、冒泡排序（Bubble Sort）
     冒泡排序是一种简单的排序算法。它重复地走访过要排序的数列，一次比较两个元素，如果它们的顺序错误就把它们交换过来。走访数列的工作是重复地进行直到没有再需要交换，也就是说该数列已经排序完成。这个算法的名字由来是因为越小的元素会经由交换慢慢“浮”到数列的顶端。
 
## 1.1 算法描述
     比较相邻的元素。如果第一个比第二个大，就交换它们两个；
     对每一对相邻元素作同样的工作，从开始第一对到结尾的最后一对，这样在最后的元素应该会是最大的数；
     针对所有的元素重复以上的步骤，除了最后一个；
     重复步骤1~3，直到排序完成。
 */
+(NSMutableArray*)bubbleSotr:(NSMutableArray*)sortArr{
    
    NSInteger length = sortArr.count;

    for (int i = 0; i<length - 1; i++) {
        for (int j = 0; j < length - 1 - i; j++) {
            if (sortArr[j] > sortArr[j+1]) {
                id temp = sortArr[j+1];
                sortArr[j+1] = sortArr[j];
                sortArr[j] = temp;
            }
        }
    }
    return sortArr;
}


@end
