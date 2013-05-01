//
//  HCClippingView.m
//  HCViews
//
//  Created by Klaus-Peter Dudas on 30/04/2013.
//  Copyright (c) 2013 Hypercrypt Solutions Ltd. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import "HCClippingView.h"

@implementation HCClippingView

- (void)setClippingPath:(UIBezierPath *)clippingPath
{
    if (_clippingPath != clippingPath)
    {
        _clippingPath = clippingPath;
        
        CAShapeLayer *maskLayer = [CAShapeLayer layer];
        maskLayer.path = clippingPath.CGPath;
        
        self.layer.mask = maskLayer;
        
        self.clipsToBounds = YES;
    }
}

@end
