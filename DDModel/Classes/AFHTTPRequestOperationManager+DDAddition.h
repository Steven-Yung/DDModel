//
//  AFHTTPRequestOperationManager+DDMoDDAddition.h
//  DDModel
//
//  Created by DeJohn Dong on 15/6/3.
//  Copyright (c) 2015年 DDKit. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"

@interface AFHTTPRequestOperationManager (DDAddition)

/**
 *  dynomic replace the url
 *
 *  @param url target url
 */
- (void)dd_exchangeURL:(NSString *)url;

/**
 *  add a new url into http client
 *
 *  @param url target url
 */
- (void)dd_addURL:(NSString *)url;

@end
