#import "BIMDependetNetMethods.h"
#import "PictureModel.h"
@implementation BIMDependetNetMethods
IMPLEMENTATION_SINGLETON(BIMDependetNetMethods)
#pragma mark -- 截屏分享依赖 (先上传图片)
- (void)uploadImageWithImageArr:(NSArray *)arrImage completion:(void(^)(BOOL finished,NSArray*arrUrl)) completion {
    NSMutableDictionary *parameter = [NSMutableDictionary dictionaryWithDictionary:[BIMHttpString getCommenParemeter]];
    [parameter setObject:@(3) forKey:@"flag"];
    [[BIMDCHttpRequest shareInstance] sendRequestByMethod:@"post" WithParamaters:parameter PathUrlL:[NSString stringWithFormat:@"%@%@",@"http://mobile.gunqiu.com/interface",url_ZiXunUrl] ArrayFile:arrImage Start:^(id requestOrignal) {
    } End:^(id responseOrignal) {
    } Success:^(id responseResult, id responseOrignal) {
        if ([[responseOrignal objectForKey:@"code"] isEqualToString:@"200"]) {
            NSArray *arr = [responseOrignal objectForKey:@"data"];
            NSMutableArray *arrPic = [NSMutableArray array];
            for (int i = 0; i < arr.count; i ++) {
                PictureModel *photoModel = [[PictureModel alloc] init];
                photoModel.imgthumburl = responseOrignal[@"data"][i][@"thumb"];
                photoModel.imageurl = responseOrignal[@"data"][i][@"image"];
                [arrPic addObject:photoModel];
            }
            completion(YES,arrPic);
        }else{
            [SVProgressHUD showImage:[UIImage imageNamed:@""] status:[responseOrignal objectForKey:@"msg"]];
            completion(NO,[NSArray array]);
        }
    } Failure:^(NSError *error, NSString *errorDict, id responseOrignal) {
        [SVProgressHUD showImage:[UIImage imageNamed:@""] status:errorDict];
        completion(NO,[NSArray array]);
    }];
}
- (void)loadUserInfocompletion:(void(^)(BIMUserModel *userback))userBack errorMessage:(void(^)(NSString * msg)) errormsg
{
   BIMUserModel *userModel = [BIMMethods getUserModel];
    NSMutableDictionary *parameter = [NSMutableDictionary dictionaryWithDictionary:[BIMHttpString getCommenParemeter]];
    [parameter setObject:[NSString stringWithFormat:@"%ld",(long)userModel.idId] forKey:@"id"];
    [[BIMDCHttpRequest shareInstance] sendGetRequestByMethod:@"get" WithParamaters:parameter PathUrlL:[NSString stringWithFormat:@"%@%@",APPDELEGATE.url_Server,url_usernewinfo] Start:^(id requestOrignal) {
    } End:^(id responseOrignal) {
        [APPDELEGATE.customTabbar loadUreadNotificationNum];
    } Success:^(id responseResult, id responseOrignal) {
        NSLog(@"%@",responseOrignal);
        if ([[responseOrignal objectForKey:@"code"] isEqualToString:@"200"]) {
          BIMUserModel  *user = [BIMUserModel entityFromDictionary:[responseOrignal objectForKey:@"data"]];
            [BIMMethods updateUsetModel:user];
            userBack(user);
        }else{
            errormsg([responseOrignal objectForKey:@"msg"]);
        }
    } Failure:^(NSError *error, NSString *errorDict, id responseOrignal) {
        errormsg(errorDict);
    }];
}
- (void)requestSameOdd_indexStart:(requestStart)start
                              End:(requestEnd)end
                          Success:(requestSuccess)success
                          Failure:(requestFailure)failure
{
    [[BIMDCHttpRequest shareInstance] sendGetRequestByMethod:@"get" WithParamaters:[BIMHttpString getCommenParemeter] PathUrlL:[NSString stringWithFormat:@"%@%@",APPDELEGATE.url_Server,url_sameOdd_index] Start:start End:end Success:success Failure:failure];
}
- (void)requestSameOdd_detailWithscheduleId:(NSString *)scheduleId
                               WithsclassId:(NSString *)sclassId
                                      Start:(requestStart)start
                                        End:(requestEnd)end
                                    Success:(requestSuccess)success
                                    Failure:(requestFailure)failure
{
    NSMutableDictionary *parameter = [NSMutableDictionary dictionaryWithDictionary:[BIMHttpString getCommenParemeter]];
    [parameter setObject:scheduleId forKey:@"scheduleId"];
    [parameter setObject:sclassId forKey:@"sclassId"];
    [[BIMDCHttpRequest shareInstance] sendGetRequestByMethod:@"get" WithParamaters:parameter PathUrlL:[NSString stringWithFormat:@"%@%@",APPDELEGATE.url_Server,url_sameOdd_detail] Start:start End:end Success:success Failure:failure];
}
- (void)requeSurprisestatisWithType:(NSString *)type
                              Start:(requestStart)start
                                End:(requestEnd)end
                            Success:(requestSuccess)success
                            Failure:(requestFailure)failure;
{
    NSMutableDictionary *parameter = [NSMutableDictionary dictionaryWithDictionary:[BIMHttpString getCommenParemeter]];
    [parameter setObject:type forKey:@"mtype"];
    [[BIMDCHttpRequest shareInstance] sendGetRequestByMethod:@"get" WithParamaters:parameter PathUrlL:[NSString stringWithFormat:@"%@%@",APPDELEGATE.url_Server,url_surprisestatis] Start:start End:end Success:success Failure:failure];
}
- (void)requestSurpriseWithType:(NSString *)idId
                          Start:(requestStart)start
                            End:(requestEnd)end
                        Success:(requestSuccess)success
                        Failure:(requestFailure)failure
{
    NSMutableDictionary *parameter = [NSMutableDictionary dictionaryWithDictionary:[BIMHttpString getCommenParemeter]];
    [parameter setObject:idId forKey:@"id"];
    [[BIMDCHttpRequest shareInstance] sendGetRequestByMethod:@"get" WithParamaters:parameter PathUrlL:[NSString stringWithFormat:@"%@%@",APPDELEGATE.url_Server,url_surprise] Start:start End:end Success:success Failure:failure];
}
@end
