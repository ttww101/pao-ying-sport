#import <UIKit/UIKit.h>
@class BIMCommentsView;
@protocol CommentsViewDelegate <NSObject>
- (void)commentViewDidSelectCommnetList:(BIMCommentsView *)commentView;
- (void)commentViewDidSelectReply:(BIMCommentsView *)commentView;
- (void)commentViewDidSelectShare:(BIMCommentsView *)commentView;
@end
@interface BIMCommentsView : UIView
@property (nonatomic , copy) NSString *newsID;
@property (nonatomic , copy) NSString *module;
- (void)loadData;
@property (nonatomic, weak) id <CommentsViewDelegate> delegate;
@end
