#import <Foundation/Foundation.h>
#import "BIMUserModel.h"
typedef void(^requestStart)(id requestOrignal);
typedef void (^UserInfo)(BIMUserModel* user);
@interface BIMUniversalNetwork : NSObject
+ (void)getUserModelWithUserId:(NSInteger)Idid WithUserModel:(UserInfo)user;
+ (void)getUserWithUserId:(NSInteger)Idid WithUserModel:(void(^)(BIMUserModel* useInfo))user;
@end
