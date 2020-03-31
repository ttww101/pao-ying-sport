#import <UIKit/UIKit.h>
#import "BIMCommentModel.h"
#import "BIMCommentChildModel.h"
typedef NS_ENUM(NSInteger,typeCommentCell)
{
    typeCommentCellTuijian = 0,
    typeCommentCellZixun = 1,
};
@protocol TuijianDetailCommentCellDelegate<NSObject>
@optional
- (void)didShowMoreBtn;
- (void)touchBasicViewToHideHudViewWithIdid:(NSInteger)Idid;
@end
@interface BIMTuijianDetailCommentCell : UITableViewCell
@property (nonatomic, strong) BIMCommentModel *model;
@property (nonatomic, weak) id<TuijianDetailCommentCellDelegate> delegate;
@property (nonatomic) typeCommentCell type;
- (void)hideHudView;
@end
