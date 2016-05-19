//
//  PlistHelper.h
//  PlistUtil
//
//  Created by YiTie on 16/5/16.
//  Copyright © 2016年 武文杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlistHelper : NSObject

// 读写Plist文件Model数组版
/**
 *  将数组存到plist文件中
 *
 *  @param modelArray 对象数组
 *  @param savePath   存储路径
 */
+ (void)SaveModelArrayToPlistWithArray:(NSArray *)modelArray savePath:(NSString *)savePath;


/**
 *  读取plist文件
 *
 *  @param savePath 存储路径
 *
 *  @return 返回数组
 */
+ (NSArray *)readModelArrayWithSavePath:(NSString *)savePath;


// 读写Plist文件字典版
+ (void)SaveModelDictionaryToPlistWithDictionary:(NSDictionary *)modelDictionary savePath:(NSString *)savePath;
+ (NSDictionary *)readModelDictionaryWithSavePath:(NSString *)savePath;


// 读写Plist文件数组版
+ (void)SaveArrayToPlistWithArray:(NSArray *)plistArray savePath:(NSString *)savePath;
+ (NSArray *)readArrayWithSavePath:(NSString *)savePath;

@end
