//
//  UIAlertView+UserInfo.m
//  bitspring
//
//  Created by Daniel Biran on 6/23/15.
//  Copyright (c) 2015. All rights reserved.
//
//  Open source licensed under MIT
//

#import "UIAlertView+UserInfo.h"
#import <objc/runtime.h>

static const void *UIAlertViewUserInfoKey                        = &UIAlertViewUserInfoKey;

@implementation UIAlertView (UserInfo)

- (NSDictionary *)userInfo {
    return objc_getAssociatedObject(self, UIAlertViewUserInfoKey);
}

- (void)setUserInfo:(NSDictionary * __nullable)userInfo {
    
    objc_setAssociatedObject(self, UIAlertViewUserInfoKey, userInfo, OBJC_ASSOCIATION_RETAIN);
}

@end
