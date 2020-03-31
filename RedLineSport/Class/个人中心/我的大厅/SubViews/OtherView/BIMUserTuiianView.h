#import <UIKit/UIKit.h>
@protocol UserTuiianViewDelegate<NSObject>
@optional
- (void)didTouchItemWithIndex:(NSInteger)index;
@end
@interface BIMUserTuiianView : UIView
@property (nonatomic, strong) BIMUserModel *model;
@property (nonatomic, weak) id<UserTuiianViewDelegate> delegate;
@property (nonatomic, strong) NSString *imageName;
@end
