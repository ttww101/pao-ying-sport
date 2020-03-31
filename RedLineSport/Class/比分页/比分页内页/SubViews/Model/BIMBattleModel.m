#import "BIMBattleModel.h"
@implementation BIMBattleModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"homename" : @"homename",
             @"guestname" : @"guestname",
             @"homenumber" : @"homenumber",
             @"guestnumber" : @"guestnumber",
             @"homeplayerid" : @"homeplayerid",
             };
}
@end
