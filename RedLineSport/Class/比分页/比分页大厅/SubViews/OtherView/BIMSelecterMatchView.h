#import <UIKit/UIKit.h>
@class BIMSelecterMatchView;
@protocol SelecterMatchViewDelegate <NSObject>
@optional
- (void)BIMSelecterMatchView:(BIMSelecterMatchView *)matchView selectedAtIndex:(NSInteger)index;
- (void)touchTapView;
@end
@interface BIMSelecterMatchView : UIView
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *arrData;
@property (nonatomic, weak) id<SelecterMatchViewDelegate> delegate;
@end
