//
//  Preson+Test.m
//  Category
//
//  Created by 周刚涛 on 2018/12/2.
//  Copyright © 2018年 XYZ. All rights reserved.
//
#import <objc/runtime.h>
#import "Preson+Test.h"

static const void *SpecialNameKey = &SpecialNameKey;

@implementation Preson (Test)

//+ (void)initialize {
//    NSLog(@"Preson (Test) + initialize");
//}

@dynamic specialName,age;

- (NSString *)specialName {
    NSLog(@"Preson (Test) - specialName");
    //如果属性值是非id类型，可以通过属性值先构造OC的id对象，再通过对象获取非id类型属性
    return objc_getAssociatedObject(self, SpecialNameKey);
}

- (void)setSpecialName:(NSString *)specialName {
    NSLog(@"Preson (Test) - setSpecialName %@ \n",specialName);
    //如果属性值是非id类型，可以通过属性值先构造OC的id对象，再通过对象获取非id类型属性
    objc_setAssociatedObject(self, SpecialNameKey, specialName, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)test {
    NSLog(@"Preson (Test) - test");
}

+ (void)abc {
    
}

- (void)setAge:(int)age {
    
}

- (int)age {
    return 10;
}

@end




