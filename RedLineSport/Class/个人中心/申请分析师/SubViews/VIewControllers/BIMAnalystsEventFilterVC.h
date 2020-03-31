@protocol AnalystsEventFilterVCDelegate <NSObject>
- (void)backStr:(NSString *)str;
@end
#import "BIMBasicViewController.h"
@interface BIMAnalystsEventFilterVC : BIMBasicViewController
@property (nonatomic, assign)id<AnalystsEventFilterVCDelegate> delegate;
@end
