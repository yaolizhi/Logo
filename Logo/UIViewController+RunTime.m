//
//  UIViewController+RunTime.m
//  Logo
//
//  Created by 姚立志 on 2019/10/25.
//  Copyright © 2019 姚立志. All rights reserved.
//

#import "UIViewController+RunTime.h"


@implementation UIViewController (RunTime)



+ (void)load {

//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        Method presentM = class_getInstanceMethod(self.class, @selector(presentViewController:animated:completion:));
//        Method presentSwizzlingM = class_getInstanceMethod(self.class, @selector(lq_presentViewController:animated:completion:));
//
//        method_exchangeImplementations(presentM, presentSwizzlingM);
//    });
}

- (void)lq_presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion {

    if ([viewControllerToPresent isKindOfClass:[UIAlertController class]]) {
//        NSLog(@"title : %@",((UIAlertController *)viewControllerToPresent).title);
//        NSLog(@"message : %@",((UIAlertController *)viewControllerToPresent).message);

        UIAlertController *alertController = (UIAlertController *)viewControllerToPresent;
        if (alertController.title == nil && alertController.message == nil) {
            return;
        }
    }

    [self lq_presentViewController:viewControllerToPresent animated:flag completion:completion];
}

@end
