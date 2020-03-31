#import <UIKit/UIKit.h>
#import "BIMTuijiandatingModel.h"
typedef NS_ENUM(NSInteger,TuijianDetailHeaderViewtype)
{
    TuijianDetailHeaderViewShowContent = 1,
    TuijianDetailHeaderViewHideContent = 0,
};
@interface BIMTuijianDetailHeaderView : UITableViewCell
@property (nonatomic, assign) CGFloat webViewHight;
@property (nonatomic) TuijianDetailHeaderViewtype type;
@property (nonatomic, strong) BIMTuijiandatingModel *model;
@end
