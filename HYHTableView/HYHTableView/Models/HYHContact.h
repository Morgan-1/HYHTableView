//
//  HYHContact.h
//  HYHTableView
//
//  Created by skyclass on 15/12/8.
//  Copyright © 2015年 skyclass. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HYHContact : NSObject

#pragma mark - 属性
#pragma mark －－姓
@property(nonatomic,copy) NSString * firstName;

#pragma mark －－ 名
@property(nonatomic,copy) NSString * lastName;

#pragma mark －－ 手机号码
@property(nonatomic,copy) NSString * phoneNumber;

#pragma mark -方法
#pragma mark -- 带参数的构造函数
-(HYHContact*)initWithFirstName:(NSString *) firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber;

#pragma mark -- 取得姓名
-(NSString *)getName;

#pragma mark -- 带参数的静态对象初始化方法
+(HYHContact *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber;

@end
