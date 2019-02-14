//
//  AppEventMeduleProtocol.h
//  AppleDelegateSimplify
//
//  Created by 石显军 on 2019/2/14.
//  Copyright © 2019 石显军. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, AppEventMedulePriority) {
    
    AppEventMedulePriority_Required = 750,
    AppEventMedulePriority_Height   = 500,
    AppEventMedulePriority_Low      = 250,
    
    AppEventMedulePriority_Default  = AppEventMedulePriority_Height,
    
};

@protocol AppEventModuleProtocol <NSObject>

@required

- (AppEventMedulePriority)appEventMedulePriority;

- (void)destroyAppEventMedule;

- (NSString *)meduleID;

@end

NS_ASSUME_NONNULL_END
