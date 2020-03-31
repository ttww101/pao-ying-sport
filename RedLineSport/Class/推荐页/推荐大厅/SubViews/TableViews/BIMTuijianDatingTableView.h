#import "BIMBasicTableView.h"
#import "BIMTuijianDatingCell.h"
#import "BIMLiveScoreModel.h"
@protocol TuijianDatingTableViewDelegate <NSObject>
@optional
@end
@interface BIMTuijianDatingTableView : BIMBasicTableView
@property (nonatomic, assign) typeTuijianCell type;
@property (nonatomic, weak) id <TuijianDatingTableViewDelegate> delegateTuijianDatingTableView;
@property (nonatomic, strong) BIMLiveScoreModel *model;
@property (nonatomic, assign) BOOL hideFooter;
@property (nonatomic, assign) BOOL cellCanScroll;
@end
