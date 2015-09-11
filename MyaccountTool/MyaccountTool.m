//
//  MyaccountTool.m
//  新浪
//
//  Created by tarena500 on 15/8/15.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "MyaccountTool.h"

@implementation MyaccountTool
#define FILE_PATH [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject] stringByAppendingPathComponent:@"account.data"]

+(void)save:(Myaccount *)account{
    
 
    [NSKeyedArchiver archiveRootObject:account toFile:FILE_PATH];

}
+(Myaccount*)account
{
    Myaccount*account=[NSKeyedUnarchiver unarchiveObjectWithFile:FILE_PATH];
    
    NSDate*now=[NSDate date];
    if ([now compare:account.expires_time]!=NSOrderedAscending) {
        account=nil;
    }return account;
}

@end
