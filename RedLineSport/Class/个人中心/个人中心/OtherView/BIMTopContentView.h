#import <UIKit/UIKit.h>
@protocol TopContentViewDelegate <NSObject>
- (void)addAtention:(BOOL)attention;
@end
@interface BIMTopContentView : UIView
@property (nonatomic , strong) BIMUserModel *model;
@property (nonatomic, weak) id <TopContentViewDelegate> delegate;
@end
