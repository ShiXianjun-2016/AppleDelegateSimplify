//
//  AppEventMedulesManager.m
//  AppleDelegateSimplify
//
//  Created by 石显军 on 2019/2/14.
//  Copyright © 2019 石显军. All rights reserved.
//

#import "AppEventModulesManager.h"
#import "AppEventModuleBase.h"

#import "AppEventUMMob.h"
#import "AppEventShareSDK.h"

@implementation AppEventModulesManager

+ (instancetype)shareManager
{
    static AppEventModulesManager *_shareManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shareManager = [[AppEventModulesManager alloc] init];
    });
    
    return _shareManager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self registeredAllModules];
        
    }
    return self;
}

- (void)registeredAllModules
{
    self.arrMedules = [NSMutableArray array];
    
    [self.arrMedules addObject:[AppEventShareSDK new]];
    [self.arrMedules addObject:[AppEventUMMob new]];
}

- (void)handlerApplicationEvent:(SEL)eventSel complete:(void (^)(id module, SEL sel))complete
{
    
    if (eventSel == nil || complete == nil) {
        return;
    }
    
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"appEventMedulePriority" ascending:NO];
    
    NSMutableArray *arrModules = [[NSMutableArray alloc] initWithArray:self.arrMedules];
    
    [arrModules sortUsingDescriptors:@[sort]];
    
    for (id <AppEventModuleProtocol> module in arrModules) {
        
        if ([module conformsToProtocol:@protocol(AppEventModuleProtocol)]) {
            
            if ([module respondsToSelector:eventSel]) {
                
                complete(module, eventSel);
                
            }
        }
    }
}

- (void)removeModuelWithID:(NSString *)moduelID
{
    NSMutableArray *arrRemoveItems = [NSMutableArray array];
    
    for (AppEventModuleBase *module in self.arrMedules) {
        if ([[module meduleID] isEqualToString:moduelID]) {
            [arrRemoveItems addObject:module];
        }
    }
    
    [self.arrMedules removeObjectsInArray:arrRemoveItems];
}

@end
