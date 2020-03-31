#import <UIKit/UIKit.h>
#import "BIMLiveScoreModel.h"
#import "BIMLivingModel.h"
@interface BIMSaiTableViewCell : UITableViewCell
@property (nonatomic, strong) BIMLiveScoreModel *ScoreModel;
@property (nonatomic, assign) int peilvIndex;
@property (nonatomic, assign) int SaishiType;
@end
