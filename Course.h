//
//  Course.h
//  OC1_类的设计-课程类
//
//  Created by 王一卓 on 2018/6/12.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject {
    NSString *_courseName;//课程名
    NSString *_teacherName;//任课老师名
    NSInteger _courseTime;//课时数
}

//构造方法
//初始化一个对象
- (id)initWithCourseName:(NSString *)courseName andCourseTime:(NSInteger)courseTime;

//getter方法
- (NSString *)courseName;

- (NSString *)teacherName;

- (NSInteger)courseTime;

//setter方法
- (void)setTeacherName:(NSString *)teacherName;

//打印课程
- (void)printCourse;

@end
