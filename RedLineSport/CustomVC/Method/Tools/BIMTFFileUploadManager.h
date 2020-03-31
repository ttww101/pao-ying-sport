#import <Foundation/Foundation.h>
@interface BIMTFFileUploadManager : NSObject<NSURLConnectionDataDelegate>
+(instancetype)shareInstance;
-(void)uploadFileWithURL:(NSString*)uBIMtring params:(NSDictionary*)params fileKey:(NSString*)fileKey filePath:(NSString*)filePath completeHander:(void(^)(NSURLResponse *response, NSData *data, NSError *connectionError))completeHander;
@end
