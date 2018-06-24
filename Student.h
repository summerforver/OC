//
//  Student.h
//  OC1_类的设计-课程类
//
//  Created by 王一卓 on 2018/6/12.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Course.h"

@interface Student : NSObject {
    NSString *_name;
    NSInteger _age;
    NSInteger _score;
    
    Course *_course1;
    Course *_course2;
    Course *_course3;
}
//构造方法
- (id)initWithName:(NSString *)name andAge:(NSInteger)age;
//getter方法
- (NSString *)name;
- (NSInteger)age;
- (NSInteger)score;

//setter方法
- (void)setName:(NSString *)name andAge:(NSInteger)age;

//功能方法

- (NSString *)getAllCourseNames;//获取所有课程名
- (NSString *)getAllTeacherNames;//获取所有的老师名称
- (NSInteger)getAllCourseTime;//获取总课时

//通过课程的索引位置设置课程
- (void)setCourse:(Course *)newCourse byIndex:(NSInteger)index;

//打印学生信息
- (void)printStudentInfo;

+ (void)textStudent;



@end
