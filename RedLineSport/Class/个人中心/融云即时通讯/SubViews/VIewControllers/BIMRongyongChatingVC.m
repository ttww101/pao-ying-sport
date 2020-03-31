#import "BIMRongyongChatingVC.h"
#import "BIMRongYongGroupChatingVC.h"
#import "BIMRongyunChatVC.h"
@interface BIMRongyongChatingVC ()
@end
@implementation BIMRongyongChatingVC
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setDisplayConversationTypes:@[@(ConversationType_PRIVATE),@(ConversationType_CHATROOM),@(ConversationType_APPSERVICE),                                          @(ConversationType_SYSTEM),@(ConversationType_DISCUSSION),@(ConversationType_GROUP)]];
    [self setCollectionConversationType:@[@(ConversationType_DISCUSSION),@(ConversationType_GROUP)]];
}
- (void)onSelectedTableRow:(RCConversationModelType)conversationModelType
         conversationModel:(RCConversationModel *)model
               atIndexPath:(NSIndexPath *)indexPath {
    if (model.conversationType == ConversationType_DISCUSSION || model.conversationType == ConversationType_GROUP) {
        BIMRongYongGroupChatingVC *chatVC = [[BIMRongYongGroupChatingVC alloc] init];
        [APPDELEGATE.customTabbar pushToViewController:chatVC animated:YES];
    }else{
        BIMRongyunChatVC *conversationVC = [[BIMRongyunChatVC alloc]init];
        conversationVC.conversationType = model.conversationType;
        conversationVC.targetId = model.targetId;
        conversationVC.title = @"想显示的会话标题";
        [APPDELEGATE.customTabbar pushToViewController:conversationVC animated:YES];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
