#import "BIMBasicModel.h"
#import "BIMUserTongjiModel.h"
@interface BIMUserTongjiAllModel : BIMBasicModel
@property (nonatomic, strong) BIMUserTongjiModel *month;
@property (nonatomic, strong) BIMUserTongjiModel *all;
@property (nonatomic, strong) BIMUserTongjiModel *week;
@property (nonatomic, strong) NSArray *recent;
@end
