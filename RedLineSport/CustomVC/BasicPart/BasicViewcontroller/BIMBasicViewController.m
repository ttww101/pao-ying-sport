#import "BIMBasicViewController.h"
@interface BIMBasicViewController ()<UIGestureRecognizerDelegate>
@end
@implementation BIMBasicViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.translucent = NO;
}
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
