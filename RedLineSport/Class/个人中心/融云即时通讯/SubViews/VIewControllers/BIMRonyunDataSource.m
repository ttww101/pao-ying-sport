#import "BIMRonyunDataSource.h"
@implementation BIMRonyunDataSource
+ (BIMRonyunDataSource *)shareInstance {
    static BIMRonyunDataSource *instance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        instance = [[[self class] alloc] init];
    });
    return instance;
}
@end
