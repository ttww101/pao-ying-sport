#import "BIMBasicModel.h"
@interface BIMLiveEventMedel : BIMBasicModel
@property (nonatomic, assign) NSInteger time;
@property (nonatomic, assign) NSInteger teamid;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger ishome;
@property (nonatomic, assign) NSInteger headerOrFooter;
@end
