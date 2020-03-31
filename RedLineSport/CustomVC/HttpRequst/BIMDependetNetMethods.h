#import <Foundation/Foundation.h>
#import "ZLSingleton.h"
@interface BIMDependetNetMethods : NSObject
INTERFACE_SINGLETON(BIMDependetNetMethods)
- (void)uploadImageWithImageArr:(NSArray *)arrImage completion:(void(^)(BOOL finished,NSArray*arrUrl)) completion;
- (void)loadUserInfocompletion:(void(^)(BIMUserModel *userback))userBack errorMessage:(void(^)(NSString * msg)) errormsg;
- (void)requestSameOdd_indexStart:(requestStart)start
                              End:(requestEnd)end
                          Success:(requestSuccess)success
                          Failure:(requestFailure)failure;
- (void)requestSameOdd_detailWithscheduleId:(NSString *)scheduleId
                               WithsclassId:(NSString *)sclassId
                                      Start:(requestStart)start
                              End:(requestEnd)end
                          Success:(requestSuccess)success
                          Failure:(requestFailure)failure;
- (void)requeSurprisestatisWithType:(NSString *)type
                                    Start:(requestStart)start
                              End:(requestEnd)end
                          Success:(requestSuccess)success
                          Failure:(requestFailure)failure;
- (void)requestSurpriseWithType:(NSString *)idId
                          Start:(requestStart)start
                            End:(requestEnd)end
                        Success:(requestSuccess)success
                        Failure:(requestFailure)failure;
@end
