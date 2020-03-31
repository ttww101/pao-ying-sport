#import <UIKit/UIKit.h>
@protocol DataModelViewofFPDelegate <NSObject>
@optional
- (void)dataModelViewofFPDidSelectedAtIndex:(NSInteger)index;
@end
@interface BIMDataModelViewofFP : UIView
@property (nonatomic, weak) id<DataModelViewofFPDelegate> delagate;
@end
