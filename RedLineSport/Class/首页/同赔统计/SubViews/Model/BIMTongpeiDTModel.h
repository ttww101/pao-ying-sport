#import "BIMBasicModel.h"
#import "BIMTongpeiDetailModel.h"
@interface BIMTongpeiDTModel : BIMBasicModel
@property (nonatomic, strong) BIMTongpeiDetailModel *same;
@property (nonatomic, strong) BIMTongpeiDetailModel *all;
@end
