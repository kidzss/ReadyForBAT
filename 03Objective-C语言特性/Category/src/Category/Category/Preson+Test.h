//
//  Preson+Test.h
//  Category
//
//  Created by 周刚涛 on 2018/12/2.
//  Copyright © 2018年 XYZ. All rights reserved.
//

#import "Preson.h"

@interface Preson (Test)

@property (assign, nonatomic) NSInteger age;
@property (nonatomic, copy) NSString *specialName;

- (void)test;
+ (void)abc;
- (void)setAge:(int)age;
- (int)age;

@end

