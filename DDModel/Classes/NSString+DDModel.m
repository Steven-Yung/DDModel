//
//  NSString+md5.m
//  DDModel
//
//  Created by DeJohn Dong on 15-3-10.
//  Copyright (c) 2015年 DDKit. All rights reserved.
//

#import "NSString+DDModel.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (DDModel)

- (NSString *)dd_cacheMD5 {
    const char *cStr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    
    return [[NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1], result[2], result[3],
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15]
             ] lowercaseString];
}

- (NSDictionary *)dd_dictionaryWithJSON {
    NSError *jsonError = nil;
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:jsonData
                                                               options:NSJSONReadingAllowFragments
                                                                 error:&jsonError];
    return dictionary;
}

@end

