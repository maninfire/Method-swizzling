//
//  HookManager.h
//  Method swizzling
//
//  Created by monkey on 2016/11/9.
//  Copyright © 2016年 netease. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HookManager : NSObject

+ (void)swizzleMethod:(SEL)aOriginalMethod
              ofClass:(Class)class
           withMethod:(SEL)aNewMethod; 

@end
