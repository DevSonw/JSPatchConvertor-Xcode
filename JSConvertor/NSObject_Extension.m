//
//  NSObject_Extension.m
//  JSConvertor
//
//  Created by Hao on 16/1/21.
//  Copyright © 2016年 com.Rainbow.colors. All rights reserved.
//


#import "NSObject_Extension.h"
#import "JSConvertor.h"

@implementation NSObject (Xcode_Plugin_Template_Extension)

+ (void)pluginDidLoad:(NSBundle *)plugin
{
    static dispatch_once_t onceToken;
    NSString *currentApplicationName = [[NSBundle mainBundle] infoDictionary][@"CFBundleName"];
    if ([currentApplicationName isEqual:@"Xcode"]) {
        dispatch_once(&onceToken, ^{
            sharedPlugin = [[JSConvertor alloc] initWithBundle:plugin];
        });
    }
}
@end
