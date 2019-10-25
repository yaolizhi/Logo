//
//  ViewController.m
//  Logo
//
//  Created by 姚立志 on 2019/10/25.
//  Copyright © 2019 姚立志. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *aa = [[UIButton alloc]initWithFrame:CGRectMake(100, 40, 100, 200)];
    [aa setBackgroundColor:[UIColor redColor]];
    [aa addTarget:self action:@selector(snow:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:aa];
}


- (void)snow:(id)sender
{
    [self changeAppIconWithName:@"THH"];
}



- (void)rain:(id)sender {
    [self changeAppIconWithName:@"rain"];
}
- (void)cloudy:(id)sender {
    [self changeAppIconWithName:@"rain"];
}

- (void)sunshine:(id)sender {
    [self changeAppIconWithName:@"sunshine"];
}

- (void)changeAppIconWithName:(NSString *)iconName {
    if (![[UIApplication sharedApplication] supportsAlternateIcons]) {
        return;
    }

    if ([iconName isEqualToString:@""]) {
        iconName = nil;
    }
    [[UIApplication sharedApplication] setAlternateIconName:iconName completionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"更换app图标发生错误了 ： %@",error);
        }
    }];
}







@end
