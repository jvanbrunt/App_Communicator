
#import <Foundation/Foundation.h>

@interface AppCommunicator : NSObject

+ (instancetype)appCommunicatorWithDefaultParameters:(NSDictionary *)parameters;

- (BOOL)sendDataToURL:(NSString *)url withAction:(NSString *)action data:(NSDictionary *)data;

@end
