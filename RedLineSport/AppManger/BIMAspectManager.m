#import "BIMAspectManager.h"
@implementation BIMAspectManager
+ (void)GQ_SavePageDic {
    NSMutableDictionary *dic = [NSMutableDictionary new];
    NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    [dic setObject:version forKey:@"appVersion"];
    NSDictionary *pageDic = @{@"BIMFirstViewController"                :@"首页",
                              @"BIMPanwangZhishuVC"                    :@"盘王指数",
                              @"BIMJiXianVC"                           :@"极限拐点",
                              @"BIMBettingVC"                          :@"投注异常",
                              @"BIMJiaoYiViewController"               :@"交易冷热",
                              @"BIMTongpeiTongjiVC"                    :@"同赔统计",
                              @"BIMTongPeiDetailVC"                    :@"同赔统计详情",
                              @"BIMTongPeiPeiLvDTVC"                   :@"同赔统计指数",
                              @"BIMBaolengZhishuVC"                    :@"爆冷指数",
                              @"BIMBaolengDetailVC"                    :@"爆冷指数详情",
                              @"BIMPeilvYichangVC"                     :@"指数异常",
                              @"BIMYapanZhoushouVC"                    :@"亚指助手",
                              @"BIMLiveViewController"                 :@"动画",
                              @"BIMLiveListViewController"             :@"动画详情",
                              @"BIMLiveQuizViewController"             :@"直播答题",
                              @"BIMCouponListViewController"           :@"优惠券",
                              @"BIMLiveQuizWithDrawalViewController"   :@"直播答题提现",
                              @"BIMBifenSetingViewController"          :@"比分页设置",
                              @"BIMSaishiSelecterdVC"                  :@"比分筛选",
                              @"BIMSelectedAllVC"                      :@"所有筛选",
                              @"BIMSelectedChupanVC"                   :@"初指筛选",
                              @"BIMSelectedJincaiVC"                   :@"竞猜筛选",
                              @"BIMSearchMatchVC"                      :@"比分页搜索",
                              @"BIMBifenViewController"                :@"比分大厅",
                              @"BIMGuanzhuViewController"              :@"关注",
                              @"BIMJishiViewController"                :@"即时",
                              @"BIMSaichengViewController"             :@"赛程",
                              @"BIMSaiguoViewController"               :@"赛果",
                              @"BIMFenxiPageVC"                        :@"比赛详情",
                              @"BIMPeiLvDetailVC"                      :@"指数详情",
                              @"BIMJiShiPeiLvVC"                       :@"即时指数",
                              @"BIMDoubleBattleVC"                     :@"双赔",
                              @"BIMFabuTuijianSelectedItemVC"          :@"发布推荐",
                              @"BIMRelRecNewVC"                        :@"选择指数",
                              @"BIMBuyRecordsVC"                       :@"购买记录",
                              @"BIMFaBuSucceedVCViewController"        :@"发布成功",
                              @"BIMTuijianDTViewController"            :@"推荐大厅",
                              @"BIMTuijianDetailVC"                    :@"推荐详情",
                              @"BIMSearchViewController"               :@"搜索专家",
                              @"BIMNewRecommandVC"                     :@"榜单",
                              @"BIMQBNavigationVC"                     :@"情报导航",
                              @"BIMNewQingBaoViewController"           :@"情报大厅",
                              @"BIMMyBuyTuijianVC"                     :@"我的购买",
                              @"BIMUserViewController"                 :@"个人主页",
                              @"BIMFeedbackNewVC"                      :@"意见反馈",
                              @"BIMSettingVC"                          :@"设置",
                              @"BIMPushSettingVC"                      :@"推送设置",
                              @"BIMChangePassWordVC"                   :@"修改密码",
                              @"BIMAnQuanCenterVC"                     :@"安全中心",
                              @"BIMRealNameCerVC"                      :@"实名认证",
                              @"BIMFriendsVC"                          :@"我的关注",
                              @"BIMMineViewController"               :@"个人中心",
                              @"BIMUserTuijianVC"                      :@"我的推荐",
                              @"BIMTongjiVC"                           :@"我的统计",
                              @"BIMMyProfileVC"                        :@"我的资料",
                              @"BIMSignatureVC"                        :@"个人签名",
                              @"BIMAnalystsEventFilterVC"              :@"申请分析师",
                              @"BIMToAnalystsVC"                       :@"成为分析师",
                              @"BIMForgetPswViewController"            :@"忘记密码",
                              @"BIMLoginViewController"                :@"登陆",
                              @"BIMRegisterViewController"             :@"注册",
                              @"BIMChangePhoneNumVC"                   :@"绑定手机",
                              @"BIMLotteryWebViewController"           :@"活动web",
                              };
    [dic setObject:pageDic forKey:@"pageDic"];
    NSString*doc=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
    NSString*path=[doc stringByAppendingPathComponent:PAGE_PATH];
    [dic writeToFile:path atomically:YES];
}
+ (NSMutableDictionary *)GQ_PathForPageDic {
    NSString*doc=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
    NSString*path=[doc stringByAppendingPathComponent:PAGE_PATH];
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithContentsOfFile:path];
    return dic;
}
@end
