//
//  ViewController.m
//  Category
//
//  Created by 周刚涛 on 2018/12/2.
//  Copyright © 2018年 XYZ. All rights reserved.
//
#import <objc/runtime.h>
#import "Preson.h"
#import "Preson+Test.h"
#import "Preson+Test2.h"
#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)printMethodNamesOfClass:(Class)cls
{
    unsigned int count;
    // 获得方法数组
    Method *methodList = class_copyMethodList(cls, &count);
    // 存储方法名
    NSMutableString *methodNames = [NSMutableString string];
    // 遍历所有的方法
    for (int i = 0; i < count; i++) {
        // 获得方法
        Method method = methodList[i];
        // 获得方法名
        NSString *methodName = NSStringFromSelector(method_getName(method));
        // 拼接方法名
        [methodNames appendString:methodName];
        [methodNames appendString:@", "];
    }
    // 释放
    free(methodList);
    // 打印方法名
    NSLog(@"%@ - %@", cls, methodNames);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Preson *p = [[Preson alloc] init];
    [p run];
//    [self printMethodNamesOfClass:[Preson class]];
    Student *student = [[Student alloc] init];
    //父类的分类方法可以被子类集成
    [student test];
    //分类添加成员变量
    student.specialName = @"fuck";
    NSLog(@"specialName %@ \n",student.specialName);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
