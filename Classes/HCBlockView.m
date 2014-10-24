//
//  HCBlockView.m
//  HCViews
//
//  Created by Klaus-Peter Dudas on 17/10/2012.
//  Copyright (c) 2012 Hypercrypt Solutions Ltd. All rights reserved.
//

#import "HCBlockView.h"

@implementation HCBlockView

- (instancetype)initWithFrame:(CGRect)frame drawRectBlock:(HCBlockViewDrawRectBlock)drawRectBlock
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        _drawRectBlock = [drawRectBlock copy];
    }
    
    return self;
}

- (void)setDrawRectBlock:(HCBlockViewDrawRectBlock)drawRectBlock
{
    if (_drawRectBlock != drawRectBlock)
    {
        _drawRectBlock = [drawRectBlock copy];
        [self setNeedsDisplay];
    }
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    if (self.drawRectBlock)
    {
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSaveGState(context);
        {
            self.drawRectBlock(self, context, rect);
        }
        CGContextRestoreGState(context);
    }
}

@end
