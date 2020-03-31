#import <UIKit/UIKit.h>
@class BIMSelectedDataView;
@protocol SelecterDateViewDelegate <NSObject>
@optional
- (void)BIMSelecterMatchView:(BIMSelectedDataView *)matchView selectedAtIndex:(NSInteger)index WithSelectedName:(NSString *)name;
- (void)touchTapView;
@end
@interface BIMSelectedDataView : UIView
@property (nonatomic, strong) NSArray *arrData;
@property (nonatomic, weak) id<SelecterDateViewDelegate> delegate;
- (void)updateSelectedIndex:(NSInteger)index;
@end
