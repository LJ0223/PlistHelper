//
//  ViewController.m
//  PlistUtil
//
//  Created by YiTie on 16/5/16.
//  Copyright © 2016年 武文杰. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "PlistHelper.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark -  读写Plist文件Model数组版
- (IBAction)saveModelArray:(id)sender {
    Person *p1 = [[Person alloc] initWithName:@"战三" hobby:@"LOL"];
    NSMutableArray *array = [NSMutableArray array];
    [array addObject:p1];
    
    [PlistHelper SaveModelArrayToPlistWithArray:array savePath:@"/person.plist"];
}

- (IBAction)readModelArray:(id)sender {
    NSArray *array = [PlistHelper readModelArrayWithSavePath:@"/person.plist"];
    NSLog(@"%@", array);
}


#pragma mark -  读写Plist文件字典版
- (IBAction)saveDictionaryForPlist:(id)sender {
    
    // 将要存进Plist中的字典
    // 注意：Plist只能存放基本数据类型：字典、数组
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"sdfasa", @"person1", @"343243", @"person2", nil];
    
    
    [PlistHelper SaveModelDictionaryToPlistWithDictionary:dic savePath:@"/dicPlist.plist"];
}

- (IBAction)readDictionaryByPlist:(id)sender {
    NSDictionary *dic = [[NSDictionary alloc] initWithDictionary:[PlistHelper readModelDictionaryWithSavePath:@"/dicPlist.plist"]];
    NSLog(@"%@", dic);
}


#pragma mark -  读写Plist文件数组版
- (IBAction)saveArrayForPlist:(id)sender {
    NSArray *array = @[@"1234", @"wr", @"werwe", @"safd"];
    
    [PlistHelper SaveArrayToPlistWithArray:array savePath:@"/array.plist"];

}

- (IBAction)readArrayByPlist:(id)sender {
    NSArray *array = [PlistHelper readArrayWithSavePath:@"/array.plist"];
    NSLog(@"%@", array);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
