//
//  ViewController.m
//  TestLog
//
//  Created by stevenhu on 14-11-14.
//  Copyright (c) 2014年 stevenhu. All rights reserved.
//

#import "ViewController.h"
#import "exce.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    int a=100;
    int b=100;
    int c=100;
    int d=100;
    double e=100;
    float f=100;
//   NSArray *arr=[NSArray arrayWithObjects:@"hushifei",@"liudehuafjdlsajflk",@"liudehu",@"hushifei",@"liudehuafjdlsajflk",@"liudehu",nil];
//       NSDictionary *myClassDict;
//       myClassDict = [NSDictionary dictionaryWithObjectsAndKeys:
//                              @"1", @"my1",
//                                 @"my2", @"my2",
//                                  @"my3", @"my3",
//                                  @"my4", @"my4", nil];

    
    MRLogInt(@"%@",a,b,c,d,nil);
//    MRLogDouble(@"%@",e,nil);
//    MRLogFloat(@"%@",f);
//    MRLogObject(@"%@",arr,nil);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
