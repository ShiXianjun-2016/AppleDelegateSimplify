//
//  AppEventMeduleBase.m
//  AppleDelegateSimplify
//
//  Created by 石显军 on 2019/2/14.
//  Copyright © 2019 石显军. All rights reserved.
//

#import "AppEventModuleBase.h"

@implementation AppEventModuleBase


- (AppEventMedulePriority)appEventMedulePriority
{
    return AppEventMedulePriority_Default;
}

- (void)destroyAppEventMedule
{
    [[AppEventModulesManager shareManager] removeModuelWithID:self.meduleID];
}

- (NSString *)meduleID
{
    return NSStringFromClass([self class]);
}

@end
