//
//  ViewController.m
//  internationalizationDemo
//
//  Created by bbigcd on 16/7/27.
//  Copyright © 2016年 cd. All rights reserved.
//

#import "ViewController.h"

#define CURRENT_LANGUAGE  ([[NSLocale preferredLanguages] objectAtIndex:0])
#define LocalStringWithKey(KEY,CON)  ([NSString DPLocalizedString:(KEY)])
#define LocalStringWithKeyAndValue(KEY,VALUE)  ([NSString DPLocalizedString:(KEY) comment:(VALUE)])


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 120, 40)];
    // 
    [label setText:NSLocalizedString(@"test data", nil)];
    NSLog(@"%@", CURRENT_LANGUAGE);
    [label setFont:[UIFont systemFontOfSize:20]];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:label];
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 300, 120, 40)];
    //
    [label1 setText:NSLocalizedString(@"老刘菊花向天", nil)];
    [label1 setFont:[UIFont systemFontOfSize:20]];
    [label1 setTextAlignment:NSTextAlignmentCenter];
    [label1 setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:label1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
