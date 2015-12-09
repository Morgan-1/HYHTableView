//
//  HYHContactGroup.m
//  HYHTableView
//
//  Created by skyclass on 15/12/8.
//  Copyright © 2015年 skyclass. All rights reserved.
//

#import "HYHContactGroup.h"

@implementation HYHContactGroup

-(HYHContactGroup *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts{

    if (self = [super init]) {
        self.name = name;
        self.detail = detail;
        self.contacts = contacts;
    }
    return self;
}

+(HYHContactGroup *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts{

    HYHContactGroup * contactGroup = [[HYHContactGroup alloc]initWithName:name andDetail:detail andContacts:contacts];
    return contactGroup;
}
@end
