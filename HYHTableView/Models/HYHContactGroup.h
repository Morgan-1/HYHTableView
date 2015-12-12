//
//  HYHContactGroup.h
//  HYHTableView
//
//  Created by skyclass on 15/12/8.
//  Copyright © 2015年 skyclass. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HYHContactGroup : NSObject
#pragma mark －- 组名
@property(nonatomic,copy) NSString * name;

#pragma mark －- 分组描述
@property(nonatomic,copy) NSString * detail;

#pragma mark －－ 联系人
@property(nonatomic,strong) NSMutableArray * contacts;

#pragma mark - 方法

#pragma mark -- 带参数的构造函数

- (HYHContactGroup *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts;

#pragma mark -- 静态初始化方法
+(HYHContactGroup *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts;



@end
