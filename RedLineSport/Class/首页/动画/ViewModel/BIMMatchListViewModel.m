#import "BIMMatchListViewModel.h"
#import <YYModel/YYModel.h>
@implementation BIMMatchListViewModel
- (void)fetchMatchDateInterfaceWithParameter:(id)parameter  callBack:(requestCallBack)response {
    NSMutableDictionary *baseParameter = [NSMutableDictionary dictionaryWithDictionary:[BIMHttpString getCommenParemeter]];
    [BIMLodingAnimateView showLodingView];
    [[BIMDCHttpRequest shareInstance]sendGetRequestByMethod:@"get" WithParamaters:baseParameter PathUrlL:[NSString stringWithFormat:@"http://api.live.gunqiu.com:88/radar?action=getDayData&day=%@",parameter] Start:^(id requestOrignal) {
    } End:^(id responseOrignal) {
    } Success:^(id responseResult, id responseOrignal) {
        [BIMLodingAnimateView dissMissLoadingView];
        LiveListArrayModel *model = [LiveListArrayModel yy_modelWithDictionary:responseOrignal];
        if (response) {
            response(YES, model);
        }
    } Failure:^(NSError *error, NSString *errorDict, id responseOrignal) {
        [BIMLodingAnimateView dissMissLoadingView];
        if (response) {
            response(false, errorDict);
        }
    }];
}
@end
