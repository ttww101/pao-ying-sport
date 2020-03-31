#import "BIMTabConfig.h"
#import "ArchiveFile.h"
#import "BIMWebModel.h"

//NSString *homePageUrl = @"http://localhost:8888/Switch/tuijianIndex.html";

@interface BIMTabConfig ()
@property (nonatomic, readwrite, strong) BIMDCTabBarController *tabBarController;
@end
@implementation BIMTabConfig
- (BIMDCTabBarController *)tabBarController {
    if (_tabBarController == nil) {
        _tabBarController = [[BIMDCTabBarController alloc]initWithItemArray:[self loadLocalTabBarConfig]];
        [[UITabBar appearance] setTranslucent:false];
    }
    return _tabBarController;
}

- (NSArray *)loadLocalTabBarConfig {
    NSDictionary *gameTabBarItemsAttributes = [self tabBarItemControllerName:@"BIMBifenViewController" title:@"赛事" defaultImage:@"bifen" selectImage:@"bifen-1"];
    NSDictionary *newsTabBarItemsAttributes = [self tabBarItemControllerName:@"BIMNewQingBaoViewController" title:@"资讯" defaultImage:@"qingbao" selectImage:@"qingbao-1"];
    
    BIMWebModel *model = [[BIMWebModel alloc]init];
    model.title = @"首页";
//    model.webUrl = [NSString stringWithFormat:homePageUrl, APPDELEGATE.url_ip,H5_Host];
    model.webUrl = @"http://baoying-mobile.github.io/home";
//    NSString* path = [[NSBundle mainBundle] pathForResource:@"tuijianIndex" ofType:@"html"];
//    NSString *htmlString = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
//    model.webUrl = [NSString stringWithFormat:@"file://%@", path];
    model.hideNavigationBar = YES;
    NSDictionary *homeTabBarItemsAttributes = @{
                                                 GQTableBarControllerName : @"BIMToolWebViewController",
                                                 GQTabBarItemTitle : @"首页",
                                                 GQTabBarItemImage : [[UIImage imageNamed:@"shouye"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal],
                                                 GQTabBarItemSelectedImage : [[UIImage imageNamed:@"shouye-select"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal],
                                                 GQTabBarItemWbebModel : model,
                                                 GQTabBarItemLoadH5 : @(1)
                                                 };
    BIMWebModel *expertModel = [[BIMWebModel alloc]init];
    expertModel.title = @"首页";
//    expertModel.webUrl = [NSString stringWithFormat:@"https://localhost/new-speciallist-hots.html?type=0", APPDELEGATE.url_ip,H5_Host];
    expertModel.webUrl = @"http://baoying-mobile.github.io";
    expertModel.hideNavigationBar = YES;
    NSDictionary *expertTabBarItemsAttributes = @{
                                                GQTableBarControllerName : @"BIMToolWebViewController",
                                                GQTabBarItemTitle : @"专家",
                                                GQTabBarItemImage : [[UIImage imageNamed:@"tab-find"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal],
                                                GQTabBarItemSelectedImage : [[UIImage imageNamed:@"tab-find-select"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal],
                                                GQTabBarItemWbebModel : expertModel,
                                                GQTabBarItemLoadH5 : @(1)
                                                };
    
    NSDictionary *aboutMeTabBarItemsAttributes = [self tabBarItemControllerName:@"BIMMineViewController" title:@"我的" defaultImage:@"wode" selectImage:@"wode-1"];
    NSArray *array = @[homeTabBarItemsAttributes, expertTabBarItemsAttributes, gameTabBarItemsAttributes,  newsTabBarItemsAttributes, aboutMeTabBarItemsAttributes];
    return array;
}
- (NSDictionary *)tabBarItemControllerName:(NSString *)name
                                       title:(NSString *)title
                                defaultImage:(NSString *)defaultImaeg
                                 selectImage:(NSString *)selectImage; {
    return @{
             GQTableBarControllerName : name,
             GQTabBarItemTitle : title,
             GQTabBarItemImage : [[UIImage imageNamed:defaultImaeg] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal],
             GQTabBarItemSelectedImage : [[UIImage imageNamed:selectImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal],
             };
}
@end
