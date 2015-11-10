
#import <UIKit/UIKit.h>

#import "AppCommunicator.h"

@interface AppCommunicator ()

@property (nonatomic) NSDictionary *defaultParameters;

@end

@implementation AppCommunicator

+ (instancetype)appCommunicatorWithDefaultParameters:(NSDictionary *)parameters {
    AppCommunicator *appCommunicator = [AppCommunicator new];
    appCommunicator.defaultParameters = parameters;
    return appCommunicator;
}

- (BOOL)sendDataToURL:(NSString *)url withAction:(NSString *)action data:(NSDictionary *)data {
    NSURL *requestURL = [self urlWithString:url action:action data:data];
    if (![self.application canOpenURL:requestURL]) {
        return NO;
    }
    
    [self.application openURL:requestURL];
    return YES;
}

- (NSURL *)urlWithString:(NSString *)string action:(NSString *)action data:(NSDictionary *)data {
    NSMutableArray *additionalData = [NSMutableArray array];
    [data enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [additionalData addObject:[NSURLQueryItem queryItemWithName:key value:obj]];
    }];
    
    NSURLComponents *components = [NSURLComponents componentsWithString:string];
    components.host = action;
    components.queryItems = [additionalData arrayByAddingObjectsFromArray:self.defaultQueryItems];
    return components.URL;
}


- (NSArray *)defaultQueryItems {
    NSMutableArray *items = [NSMutableArray array];
    [self.defaultParameters enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [items addObject:[NSURLQueryItem queryItemWithName:key value:obj]];
    }];

    return items;
}

- (UIApplication *)application {
    return [UIApplication sharedApplication];
}

@end
