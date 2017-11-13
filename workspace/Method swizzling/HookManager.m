//
//  HookManager.m
//  Method swizzling
//
//  Created by monkey on 2016/11/9.
//  Copyright © 2016年 netease. All rights reserved.
//

#import <objc/runtime.h>
#import "HookManager.h"

@implementation HookManager

+ (void)swizzleMethod:(SEL)aOriginalMethod
              ofClass:(Class)class
           withMethod:(SEL)aNewMethod
{
    Method oldMethod = class_getInstanceMethod(class, aOriginalMethod);
    Method newMethod = class_getInstanceMethod(class, aNewMethod);
    
    method_exchangeImplementations(oldMethod, newMethod);
}

@end
