//
//  AppEventShareSDK.m
//  AppleDelegateSimplify
//
//  Created by 石显军 on 2019/2/14.
//  Copyright © 2019 石显军. All rights reserved.
//

#import "AppEventShareSDK.h"

@implementation AppEventShareSDK

- (AppEventMedulePriority)appEventMedulePriority
{
    return AppEventMedulePriority_Default;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // registered
    
    
    [self destroyAppEventMedule];
    
    return YES;
}

@end
