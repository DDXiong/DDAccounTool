//
//  MyaccountTool.h
//  新浪
//
//  Created by tarena500 on 15/8/15.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Myaccount.h"
@interface MyaccountTool : NSObject
+(void)save:(Myaccount*)account;
+(Myaccount*)account;
@end
