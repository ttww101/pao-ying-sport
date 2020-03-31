#import <UIKit/UIKit.h>
@protocol PlycPeilvViewdelegate<NSObject>
@optional
- (void)didselePlycPeilvViewWithIndex:(NSInteger)index;
- (void)touchPlycPeilvViewBgView;
@end
@interface BIMPlycPeilvView : UIView
@property (nonatomic,weak) id<PlycPeilvViewdelegate> delegate;
@end
