#import <UIKit/UIKit.h>
#import "BIMOptionView.h"
typedef NS_ENUM(NSUInteger, payMentType) {
    payMentTypeApplePurchase = 0,
    payMentTypeWx,
    payMentTypeAli,
    payMentTypeCoupon
};
typedef void(^payType)(payMentType type);
@interface BIMSelectPayMentView : UIView
+ (instancetype)showPaymentInfo:(id)information
                        options:(NSArray *)option
                     animations:(BOOL)animation
                   selectOption:(payType)payType;
@end
