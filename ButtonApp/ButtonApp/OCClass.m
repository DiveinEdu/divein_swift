//
//  OCClass.m
//  ButtonApp
//
//  Created by WuQiong on 6/14/14.
//  Copyright (c) 2014 xxxx. All rights reserved.
//

#import "OCClass.h"

#import <UIKit/UIKit.h>

@implementation OCClass

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"xxxx" owner:self options:nil];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
