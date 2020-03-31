#import "BIMDateValueFormatter.h"
@interface BIMDateValueFormatter()
{
    NSArray * _arr;
}
@end
@implementation BIMDateValueFormatter
-(id)initWithArr:(NSArray *)arr{
    self = [super init];
    if (self)
    {
        _arr = arr;
    }
    return self;
}
- (NSString *)stringForValue:(double)value axis:(ChartAxisBase *)axis
{
    if (value<0) {
        return @"";
    }
    if ((NSInteger)value >_arr.count-1) {
        return @"";
    }
    return _arr[(NSInteger)value];
}
@end
