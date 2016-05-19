//
//  Person.m
//  PlistUtil
//
//  Created by YiTie on 16/5/16.
//  Copyright © 2016年 武文杰. All rights reserved.
//

#import "Person.h"

@implementation Person

// 解码
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if(self)
    {
        
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.sex = [aDecoder decodeObjectForKey:@"sex"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
        self.hobby = [aDecoder decodeObjectForKey:@"hobby"];
        
        
    }
    return self;
}

// 编码
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.sex  forKey:@"sex"];
    [aCoder encodeObject:self.age forKey:@"age"];
    [aCoder encodeObject:self.hobby forKey:@"hobby"];
    return;
}

- (void)dealloc
{
    
}

-(id)initWithName:(NSString *)name sex:(NSNumber *)sex age:(NSNumber *)age hobby:(NSString *)hobby
{
    self = [super init];
    if (self) {
        self.name = name;
        self.sex = sex;
        self.age = age;
        
        self.hobby = hobby;
    }
    return self;
}

-(id)initWithName:(NSString *)name hobby:(NSString *)hobby
{
    self = [super init];
    if (self) {
        self.name = name;
        self.hobby = hobby;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ 性别:%@ 年龄:%@ 爱好:%@", _name, _sex, _age, _hobby];
}

@end
