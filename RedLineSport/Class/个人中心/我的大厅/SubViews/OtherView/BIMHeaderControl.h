#import <UIKit/UIKit.h>
@interface BIMHeaderControl : UIControl
@property (nonatomic , copy) NSString *content;
- (instancetype)initWithFrame:(CGRect)frame
                      content:(NSString *)content
                showRightLine:(BOOL)show;
@end
