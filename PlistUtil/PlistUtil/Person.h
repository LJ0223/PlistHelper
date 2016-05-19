//
//  Person.h
//  PlistUtil
//
//  Created by YiTie on 16/5/16.
//  Copyright © 2016年 武文杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCoding>

@property(nonatomic, copy)NSString *name;

@property(nonatomic, strong)NSNumber *sex;

@property(nonatomic, strong)NSNumber *age;

@property(nonatomic, copy)NSString *hobby;

-(id)initWithName:(NSString *)name sex:(NSNumber *)sex age:(NSNumber *)age hobby:(NSString *)hobby;

-(id)initWithName:(NSString *)name hobby:(NSString *)hobby;


@end
