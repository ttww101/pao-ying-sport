#import <UIKit/UIKit.h>
#import "BIMRecommandListModel.h"
@interface BIMBangDanListCell : UITableViewCell
@property (nonatomic, assign)NSInteger cellNum;
@property (nonatomic, strong)BIMRecommandListModel  *model;
@property (nonatomic, assign)NSInteger type;
@end
