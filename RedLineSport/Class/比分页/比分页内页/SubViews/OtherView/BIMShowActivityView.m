#import "BIMShowActivityView.h"
@interface BIMShowActivityView ()
@end
@implementation BIMShowActivityView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configUI];
    }
    return self;
}
#pragma mark - Config UI
- (void)configUI {
    self.backgroundColor = [UIColor orangeColor];
}
@end
