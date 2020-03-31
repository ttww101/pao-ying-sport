#import "BIMBasicModel.h"
#import "BIMDan_StringMatchsModel.h"
@interface BIMDan_StringGuanModel : BIMBasicModel
@property (nonatomic, assign)NSInteger count;
@property (nonatomic, retain)NSString *index;
@property (nonatomic, retain)NSMutableArray *matchs;
@end
