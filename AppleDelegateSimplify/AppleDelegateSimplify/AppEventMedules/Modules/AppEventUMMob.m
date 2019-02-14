//
//  AppEventUMMob.m
//  AppleDelegateSimplify
//
//  Created by 石显军 on 2019/2/14.
//  Copyright © 2019 石显军. All rights reserved.
//

#import "AppEventUMMob.h"
#import <UMCCommon/UMCommon/UMCommon.h>

@implementation AppEventUMMob

- (AppEventMedulePriority)appEventMedulePriority
{
    return AppEventMedulePriority_Low;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [UMConfigure initWithAppkey:@"5c6528e4b465f57e0d000e17" channel:@"App Store"];
    
    [self destroyAppEventMedule];
    
    return YES;
}


@end
