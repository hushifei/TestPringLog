//
//  exce.h
//  TestLog
//
//  Created by stevenhu on 14-11-14.
//  Copyright (c) 2014年 stevenhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface exce : NSObject
FOUNDATION_EXPORT void MRLogInt(id format, ...);
FOUNDATION_EXPORT void MRLogDouble(id format, ...);
FOUNDATION_EXPORT void MRLogFloat(id format, ...);
FOUNDATION_EXPORT void MRLogObject(id format, ...);
+ (void)MRLogObject:(id)format, ...;
@end
