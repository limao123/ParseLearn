//
//  ViewController.m
//  ParseLearn
//
//  Created by bmob-LT on 16/3/25.
//  Copyright © 2016年 bmob-LT. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PFObject *gameScore = [PFObject objectWithClassName:@"GameScore"];
    gameScore[@"score"] = @1337;
    gameScore[@"playerName"] = @"礼貌";
    gameScore[@"cheatMode"] = @NO;
    [gameScore saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            // The object has been saved.
            NSLog(@"succeeded");
        } else {
            // There was a problem, check error.description
            NSLog(@"%@",error);
        }
    }];
//    [PFCloud callFunctionInBackground:@"bar" withParameters:@{@"name":@"limao"} block:^(id  _Nullable object, NSError * _Nullable error) {
//       if (error) {
//           NSLog(@"%@",error);
//       } else {
//           NSLog(@"%@",object);
//       }
//   }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
