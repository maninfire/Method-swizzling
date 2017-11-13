//
//  ViewController.m
//  Method swizzling
//
//  Created by monkey on 2016/11/9.
//  Copyright © 2016年 netease. All rights reserved.
//

#import "ViewController.h"
#import "HookManager.h"

@interface ViewController ()

@end

@implementation ViewController

+(void)load{
    [HookManager swizzleMethod:@selector(clickMe:) ofClass:[self class] withMethod:@selector(hookClickMe:)];
}

-(void)hookClickMe:(id) sender{
    NSLog(@"hook Click Me...");
    [self hookClickMe:sender];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clickMe:(id)sender {
    NSLog(@"Click Me...");
}
@end
