#import <UIKit/UIKit.h>
@interface BIMItemControl : UIControl
- (instancetype)initWithFrame:(CGRect)frame
                    imageName:(NSString *)imageName
                        title:(NSString *)title
                       amount:(NSString *)amount hidenLine:(BOOL)hide;
@end
