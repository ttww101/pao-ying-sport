#import "BIMBasicTableView.h"
@interface BIMTuijianDatingTable : BIMBasicTableView
@property (nonatomic, assign) NSInteger playType;
- (id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style playType:(NSInteger)type;
- (void)addSelectedView;
@end
