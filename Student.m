//
//  Student.m
//  OC1_类的设计-课程类
//
//  Created by 王一卓 on 2018/6/12.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "Student.h"

@implementation Student


//构造方法
- (id)initWithName:(NSString *)name andAge:(NSInteger)age {
    self = [super init];
    if ( self ) {
        _name = name;
        _age = age;
    }
    return self;
}
//getter方法
- (NSString *)name {
    return _name;
}
- (NSInteger)age {
    return _age;
}
- (NSInteger)score {
    return _score;
}

//setter方法
//修改实例变量的值
- (void)setName:(NSString *)name andAge:(NSInteger)age {
    _name = name;
    _age = age;
}

//功能方法
//获取所有课程名
- (NSString *)getAllCourseNames {
    NSString *str = @"";
    if ( _course1 ) {
        str = [str stringByAppendingString:[_course1 courseName]];
    }
    if ( _course2 ) {
        str = [str stringByAppendingString:[_course2 courseName]];
    }
    if ( _course3 ) {
        str = [str stringByAppendingString:[_course3 courseName]];
    }
    
    return str;
}

//获取所有的老师名称
- (NSString *)getAllTeacherNames {
    NSString *str = @"";
    if ( _course1 ) {
        str = [str stringByAppendingString:[_course1 teacherName]];
    }
    if ( _course2 ) {
        str = [str stringByAppendingString:[_course1 teacherName]];
    }
    if ( _course3 ) {
        str = [str stringByAppendingString:[_course3 teacherName]];
    }
    return str;
}

//获取总课时
- (NSInteger)getAllCourseTime {
    NSInteger time = 0;
    if ( _course1 ) {
        time += [_course1 courseTime];
    }
    if ( _course2 ) {
        time += [_course2 courseTime];
    }
    if ( _course3 ) {
        time += [_course3 courseTime];
    }
    
    return time;
}

//通过课程的索引位置设置课程
- (void)setCourse:(Course *)newCourse byIndex:(NSInteger)index {
    if ( index == 1 ) {
        _course1 = newCourse;
    } else if ( index == 2 ) {
        _course2 = newCourse;
    } else if ( index == 3 ) {
        _course3 = newCourse;
    }
}

//打印学生信息
- (void)printStudentInfo {
    NSLog(@"name = %@ age = %li score = %li", [self name], [self age], [self score]);
    [_course1 printCourse];
    [_course2 printCourse];
    [_course3 printCourse];
}

+ (void)textStudent {
    Student *stu = [[Student alloc] initWithName:@"小华" andAge:18];
    
    
    Course *course1 = [[Course alloc]initWithCourseName:@"中文" andCourseTime:40];
    [course1 setTeacherName:@"张老师"];
    
    Course *course2 = [[Course alloc]initWithCourseName:@"英文" andCourseTime:50];
    [course2 setTeacherName:@"王老师"];
    
    Course *course3 = [[Course alloc]initWithCourseName:@"数学" andCourseTime:60];
    [course3 setTeacherName:@"李老师"];
    
    
    //设置课程
    stu->_course1 = course1;
    stu->_course2 = course2;
    //stu->_course3 = course3;
    [stu setCourse:course3 byIndex:3];
    
    //获取所有的课程名
    NSLog(@"%@", [stu getAllCourseNames]);
    //获取所有任课老师名
    NSLog(@"%@", [stu getAllTeacherNames]);
    //获取总课时
    NSLog(@"%li", [stu getAllCourseTime]);
    
    [stu printStudentInfo];
    
}

@end
