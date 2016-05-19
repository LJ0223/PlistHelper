//
//  PlistHelper.m
//  PlistUtil
//
//  Created by YiTie on 16/5/16.
//  Copyright © 2016年 武文杰. All rights reserved.
//

#import "PlistHelper.h"

@implementation PlistHelper

#pragma mark - 将数组保存为本地Plist文件（Model版）
+ (void)SaveArrayToPlistWithArray:(NSArray *)plistArray savePath:(NSString *)savePath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *path = [paths objectAtIndex:0];
    NSString *filename = [path stringByAppendingPathComponent:savePath];
    
    [plistArray writeToFile:filename atomically:YES];
}

#pragma  mark - 读取本地Plist文件（Model版）
+ (NSArray *)readArrayWithSavePath:(NSString *)savePath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *path = [paths    objectAtIndex:0];
    NSString *filename = [path stringByAppendingPathComponent:savePath];
    //读
    NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:filename];
    
    return array;
}

#pragma mark - 将字典保存为本地Plist文件
+ (void)SaveModelDictionaryToPlistWithDictionary:(NSDictionary *)modelDictionary savePath:(NSString *)savePath {
    // 把数据保存到沙盒里的plist文件
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *path = [paths objectAtIndex:0];
    // 获取存储plist的完整路径
    NSString *filename = [path stringByAppendingPathComponent:savePath];
    
    [modelDictionary writeToFile:filename atomically:YES];
    NSLog(@"文件写入完成");
    
}

#pragma  mark - 读取本地Plist文件 （NSDictionary类型）
+ (NSDictionary *)readModelDictionaryWithSavePath:(NSString *)savePath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *path = [paths objectAtIndex:0];
    NSString *filename = [path stringByAppendingPathComponent:savePath];
    
    // 读
    NSDictionary *plistDic = [[NSDictionary alloc] initWithContentsOfFile:filename];
    
    return plistDic;
}

#pragma mark - 将数组保存为本地Plist文件（Model版）
+ (void)SaveModelArrayToPlistWithArray:(NSArray *)modelArray savePath:(NSString *)savePath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *path = [paths objectAtIndex:0];
    NSString *filename = [path stringByAppendingPathComponent:savePath];
    NSMutableArray *tempArray = [NSMutableArray array];
    
    for (id model in modelArray) {
        NSData *tempData = [NSKeyedArchiver archivedDataWithRootObject:model];
        [tempArray addObject:tempData];
    }
    [tempArray writeToFile:filename atomically:YES];
}

#pragma  mark - 读取本地Plist文件（Model版）
+ (NSArray *)readModelArrayWithSavePath:(NSString *)savePath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *path = [paths    objectAtIndex:0];
    NSString *filename = [path stringByAppendingPathComponent:savePath];
    //读
    NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:filename];
    NSMutableArray *tempArray = [NSMutableArray array];
    for (NSData *tempData in array) {
        id model = [NSKeyedUnarchiver unarchiveObjectWithData:tempData];
        [tempArray addObject:model];
    }
    
    return tempArray;
}

@end
