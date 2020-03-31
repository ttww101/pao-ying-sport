#import <UIKit/UIKit.h>
@protocol DataModelViewDelegate<NSObject>
@optional
- (void)didSelectedDataModelViewIndex:(NSInteger)index;
@end
@interface BIMDataModelView : UIView
@property (nonatomic, weak) id<DataModelViewDelegate> delegate;
@end
