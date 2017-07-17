//
//  ViewController.m
//  JLTaoBao
//
//  Created by xp on 2017/4/5.
//  Copyright © 2017年 Long. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *arr1 = @[@"ABC",@"ABC",@"BCD"].mutableCopy;
    
    [arr1 enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%lu",idx);
        if([obj isEqualToString:@"ABC"])
        {
            *stop = YES;
            [arr1 removeObject:obj];
        }
    }];
    NSLog(@"arra1 Count:%lu",(unsigned long)arr1.count);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
