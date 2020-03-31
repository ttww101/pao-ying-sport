#import "BIMBasicModel.h"
#import "BIMBaolengDTModel.h"
#import "BIMBaolengMatchModel.h"
@interface BIMBaolengDetailModel : BIMBasicModel
@property (nonatomic, strong) BIMBaolengDTModel *body;
@property (nonatomic, strong) NSArray *list;
@end
