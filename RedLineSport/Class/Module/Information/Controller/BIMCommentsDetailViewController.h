#import "BIMBasicViewController.h"
#import "BIMInfoModel.h"
@interface BIMCommentsDetailViewController : BIMBasicViewController
@property (nonatomic , strong) InfoGroupModel *dataModel;
@property (nonatomic , strong) NSString *ID;
@property (nonatomic , copy) NSString *commentsID;
@property (nonatomic , strong) NSString *module;
@end
