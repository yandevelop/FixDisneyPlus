#import <Foundation/Foundation.h>

%hook NSBundle
- (NSDictionary *)infoDictionary {
    NSDictionary *plist = %orig;
	NSMutableDictionary *mPlist = [plist mutableCopy] ?: [NSMutableDictionary dictionary];
    [mPlist setValue:@"2.12" forKey:@"CFBundleShortVersionString"];
	return mPlist;
}
%end