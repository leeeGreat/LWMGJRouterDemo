//
//  ViewController.m
//  LWMGJRouter
//
//  Created by xinglw on 2018/10/25.
//  Copyright © 2018年 xinglw. All rights reserved.
//

#import "ViewController.h"
#define TEMPLATE_URL @"mgj://search/:keyworddd"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *topView = [MGJRouter objectForURL:@"search_top_bar"];
    
//    [MGJRouter registerURLPattern:@"mgj://foo/bar" toHandler:^(NSDictionary *routerParameters) {
//        NSLog(@"routerParameterUserInfo:%@", routerParameters[MGJRouterParameterUserInfo]);
//    }];
//    [MGJRouter openURL:@"mgj://foo/bar"];
    
//    [MGJRouter registerURLPattern:@"mgj://category/家具" toHandler:^(NSDictionary *routerParameters) {
//        NSLog(@"routerParameters:%@", routerParameters);
//    }];
//    [MGJRouter openURL:@"mgj://category/家具"];
//    [MGJRouter openURL:@"mgj://category/家具" withUserInfo:@{@"name":@"liwei"} completion:nil];
    
//    [MGJRouter registerURLPattern:@"mgj://search/:query" toHandler:^(NSDictionary *routerParameters) {
//        NSLog(@"routerParameters[query]:%@", routerParameters[@"query"]); // bicycle
//        NSLog(@"routerParameters[color]:%@", routerParameters[@"color"]); // red
//    }];
//
//    [MGJRouter openURL:@"mgj://search/bicycle?color=red"];

    
//    [MGJRouter registerURLPattern:@"mgj://" toHandler:^(NSDictionary *routerParameters) {
//        NSLog(@"没有人处理该 URL，就只能 fallback 到这里了");
//    }];
//    [MGJRouter openURL:@"mgj://search/travel/china?has_travelled=0"];
    
//    [MGJRouter registerURLPattern:@"mgj://detail" toHandler:^(NSDictionary *routerParameters) {
//        NSLog(@"匹配到了 url, 一会会执行 Completion Block");
//
//        // 模拟 push 一个 VC
////        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.25 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
////            void (^completion)() = routerParameters[MGJRouterParameterCompletion];
////            if (completion) {
////                completion();
////            }
////        });
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5*NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            void (^completion)(id) = routerParameters[MGJRouterParameterCompletion];
//            if (completion) {
//                completion(@"asdf");
//            }
//        });
//
//
//    }];
//
//    [MGJRouter openURL:@"mgj://detail" withUserInfo:nil completion:^(id result) {
//        NSLog(@"Open 结束，我是 Completion Block");
//    }];
    

    
    [MGJRouter registerURLPattern:TEMPLATE_URL  toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"routerParameters[keyword]:%@", routerParameters[@"keyworddd"]); // Hangzhou
    }];
    
    [MGJRouter openURL:[MGJRouter generateURLWithPattern:TEMPLATE_URL parameters:@[@"Hangzhou"]]];
    NSLog(@"%@",[MGJRouter generateURLWithPattern:TEMPLATE_URL parameters:@[@"Hangzhou",@"zhejiang"]]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
