//
//  JSConvertor.h
//  JSConvertor
//
//  Created by Hao on 16/1/21.
//  Copyright © 2016年 com.Rainbow.colors. All rights reserved.
//

#import <AppKit/AppKit.h>

@class JSConvertor;

static JSConvertor *sharedPlugin;

@interface JSConvertor : NSObject

+ (instancetype)sharedPlugin;
- (id)initWithBundle:(NSBundle *)plugin;

@property (nonatomic, strong, readonly) NSBundle* bundle;
@end