#import <UIKit/UIKit.h>
#import "BIMUserlistModel.h"
@protocol FirstPUserlistViewDelegate <NSObject>
@optional
- (void)selectedUserWithId:(BIMUserlistModel *)user;
@end
@interface BIMFirstPUserlistView : UIView
@property (nonatomic, strong) NSArray *arrData;
@property (nonatomic, weak) id<FirstPUserlistViewDelegate> delegate;
@end
