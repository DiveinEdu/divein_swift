//
//  OCViewController.m
//  SwiftOCTest
//
//  Created by WuQiong on 6/10/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

#import "OCViewController.h"

@interface OCViewController ()

@end

@implementation OCViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    CFAbsoluteTime beginTime = CFAbsoluteTimeGetCurrent();
//    for (long index = 0; index < 10000; index++) {
//        printf("%f", CFAbsoluteTimeGetCurrent());
//    }
//    CFAbsoluteTime endTime = CFAbsoluteTimeGetCurrent();
//    printf("OC: %f\n", endTime - beginTime);
    
    NSURL *url = [NSURL URLWithString:@"http://www.i7wu.cn/bang/xiazai-0-3.htm"];
    NSStringEncoding enc =CFStringConvertEncodingToNSStringEncoding (kCFStringEncodingGB_18030_2000);
    NSString *str = [NSString stringWithContentsOfURL:url encoding:enc error:nil];
    NSLog(@"%@", str);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
