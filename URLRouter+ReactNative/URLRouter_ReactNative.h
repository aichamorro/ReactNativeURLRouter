//
//  URLRouter_ReactNative.h
//  URLRouter+ReactNative
//
//  Created by Alberto Chamorro on 01/12/2016.
//  Copyright © 2016 Hudl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RCTBridge.h"
@import URLRouter;

typedef void(^URLResultHandler)(id _Nullable);
typedef BOOL(^URLRouter)(NSURL *_Nonnull, URLResultHandler _Nullable);

@interface ReactNativeURLRouter : NSObject<RCTBridgeModule>
    
- (_Nullable instancetype)initWithRouter:(URLRouter _Nonnull)router;

@end
