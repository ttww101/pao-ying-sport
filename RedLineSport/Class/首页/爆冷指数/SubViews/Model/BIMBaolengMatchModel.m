#import "BIMBaolengMatchModel.h"
@implementation BIMBaolengMatchModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"matchtime" : @"matchtime",
             @"FirstGuestWin" : @"FirstGuestWin",
             @"FirstHomeWin" : @"FirstHomeWin",
             @"homescore" : @"homescore",
             @"guestscore" : @"guestscore",
             @"FirstStandoff" : @"FirstStandoff",
             @"mid" : @"mid",
             @"league" : @"league",
             @"hometeam" : @"hometeam",
             @"kind" : @"kind",
             @"guestteam" : @"guestteam",
             };
}
@end
