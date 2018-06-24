//
//  Course.m
//  OC1_类的设计-课程类
//
//  Created by 王一卓 on 2018/6/12.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "Course.h"

@implementation Course

//构造方法
//初始化一个对象
- (id)initWithCourseName:(NSString *)courseName andCourseTime:(NSInteger)courseTime {
    self = [super init];
    if ( self ) {
        _courseName = courseName;
        _courseTime = courseTime;
    }
    return self;
}

//getter方法
- (NSString *)courseName {
    return _courseName;
}

- (NSString *)teacherName {
    return _teacherName;
}

- (NSInteger)courseTime {
    return _courseTime;
}

//setter方法
- (void)setTeacherName:(NSString *)teacherName {
    _teacherName = teacherName;
}

//打印课程
- (void)printCourse {
    NSLog(@"courseName = %@ courseTime = %li teacherName = %@", [self courseName], [self courseTime], [self teacherName]);
}


@end
