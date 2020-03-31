#import <UIKit/UIKit.h>
@protocol firstHotInfoCycleViewDelegate<NSObject>
@optional
- (void)dicSelectedToFenxiWithModel:(BIMFirstPInfoListModel *)model;
@end
@interface BIMfirstHotInfoCycleView : UIView
@property (nonatomic, strong) NSArray *arrData;
@property (nonatomic, weak) id<firstHotInfoCycleViewDelegate> delegate;
- (void)setUpData:(NSArray *)arr;
@end
