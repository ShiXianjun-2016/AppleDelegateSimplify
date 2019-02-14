//
//  AppEventMedulesManager.h
//  AppleDelegateSimplify
//
//  Created by 石显军 on 2019/2/14.
//  Copyright © 2019 石显军. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AppEventModuleBase;

NS_ASSUME_NONNULL_BEGIN

@interface AppEventModulesManager : NSObject

+ (instancetype)shareManager;

@property (nonatomic, strong) NSMutableArray<AppEventModuleBase *> *arrMedules;

- (void)registeredAllModules;

- (void)handlerApplicationEvent:(SEL)eventSel complete:(void (^)(id module, SEL sel))complete;

- (void)removeModuelWithID:(NSString *)moduelID;

@end

NS_ASSUME_NONNULL_END
