//
//  URLRouter_ReactNative.m
//  URLRouter+ReactNative
//
//  Created by Alberto Chamorro on 01/12/2016.
//  Copyright © 2016 Hudl. All rights reserved.
//

#import "URLRouter_ReactNative.h"

@interface ReactNativeURLRouter()
    
@property (nonnull, nonatomic, copy) URLRouter router;

@end

@implementation ReactNativeURLRouter
    
- (instancetype)initWithRouter:(URLRouter)router
{
    if (self = [super init])
    {
        _router = router;
    }
    
    return self;
}
    
RCT_EXPORT_MODULE("URLRouter")
    
RCT_EXPORT_METHOD(open: (NSString * _Nonnull)url)
{
    self.router([NSURL URLWithString:url], ^(id result) {
        if (![result isKindOfClass:[UIViewController class]]) {
            @throw @"Expected a result of type UIViewController, but got something differnt";
        }
        
        UIWindow *mainWindow = [UIApplication sharedApplication].delegate.window;
        UIViewController *rootViewController = mainWindow.rootViewController;
        [rootViewController showViewController:result sender:nil];
    });
}

@end
