//
//  exce.m
//  TestLog
//
//  Created by stevenhu on 14-11-14.
//  Copyright (c) 2014年 stevenhu. All rights reserved.
//

#import "exce.h"

@implementation exce
void MRLogInt(id format, ...) {
    NSMutableArray *arr=[NSMutableArray array];
    va_list params;
    va_start(params,format);
    if (format) {
        if(![format isEqualToString:@"%@"])
        NSLog(@"%@",format);
        int arg;
        while((arg = va_arg(params,int)))
        {
            if (arg){
                [arr addObject:[NSString stringWithFormat:@"%d",arg]];
//                [str stringByAppendingString:[NSString stringWithFormat:@"%d",arg]];
            }
        }
         NSLog(@"%@",arr);
        //置空
        va_end(params);
    }
}
void MRLogDouble(id format, ...){
    va_list params;
    va_start(params,format);
    if (format) {
        if(![format isEqualToString:@"%@"])
        NSLog(@"%@",format);
        double arg;
        while((arg = va_arg(params,double)))
        {
            if (arg){
                NSLog(@"%f",arg);
            }
        }
        //置空
        va_end(params);
    }
}
void MRLogObject(id format, ...){
    va_list params;
    va_start(params,format);
    if (format) {
        if(![format isEqualToString:@"%@"])
            NSLog(@"%@",format);
        id arg;
        while((arg = va_arg(params,id)))
        {
            if (arg){
                NSLog(@"%@",arg);
            }
        }
        //置空
        va_end(params);
    }
}

void MRLogFloat(id format, ...){
    va_list params;
    va_start(params,format);
    if (format) {
        if(![format isEqualToString:@"%@"])
        NSLog(@"%@",format);
        float arg;
        while((arg = va_arg(params,double)))
        {
            if (arg){
                NSLog(@"%f",arg);
            }
        }
        //置空
        va_end(params);
    }
}

+ (void)MRLogObject:(id)format, ... {
    va_list params; //定义一个指向个数可变的参数列表指针;
    va_start(params,format);//va_start 得到第一个可变参数地址,
    if (format) {
       if(![format isEqualToString:@"%@"])
        NSLog(@"%@",format);
        //将第一个参数添加到array
        //va_arg 指向下一个参数地址
        //这里是问题的所在 网上的例子，没有保存第一个参数地址，后边循环，指针将不会在指向第一个参数
        id arg;
        while( (arg = va_arg(params,id)) )
        {
            if ( arg ){
                NSLog(@"%@",arg);
            }
        }
        //置空
        va_end(params);
    }
    
}

@end
