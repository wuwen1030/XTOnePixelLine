//
//  XTOnePixelLine.m
//  XTOnePixelLine
//
//  Created by Ben on 15/7/11.
//  Copyright (c) 2015年 X-Team. All rights reserved.
//

#import "XTOnePixelLine.h"

@implementation XTOnePixelLine

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self _commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self _commonInit];
    }
    return self;
}

- (void)_commonInit
{
    self.backgroundColor = [UIColor clearColor];
    _lineColor = [UIColor blackColor];
    _linePosition = XTLinePositionTop;
    self.userInteractionEnabled = NO;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextBeginPath(context);
    switch (self.linePosition)
    {
        case XTLinePositionTop:
        {
            CGContextMoveToPoint(context, 0, SINGLE_LINE_ADJUST_OFFSET);
            CGContextAddLineToPoint(context, CGRectGetMaxX(rect),  SINGLE_LINE_ADJUST_OFFSET);
        }
            break;
        case XTLinePositionLeft:
        {
            CGContextMoveToPoint(context, SINGLE_LINE_ADJUST_OFFSET, 0);
            CGContextAddLineToPoint(context, SINGLE_LINE_ADJUST_OFFSET,  CGRectGetMaxY(rect));
            
        }
            break;
        case XTLinePositionRight:
        {
            CGContextMoveToPoint(context, CGRectGetMaxX(rect) -  SINGLE_LINE_ADJUST_OFFSET, 0);
            CGContextAddLineToPoint(context, CGRectGetMaxX(rect) -  SINGLE_LINE_ADJUST_OFFSET,  CGRectGetMaxY(rect));
        }
            
            break;
        case XTLinePositionBottom:
        {
            CGContextMoveToPoint(context, 0, CGRectGetMaxY(rect) - SINGLE_LINE_ADJUST_OFFSET);
            CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMaxY(rect) - SINGLE_LINE_ADJUST_OFFSET);
            
        }
            break;
            
        default:
            break;
    }
    
    CGContextSetLineWidth(context, SINGLE_LINE_WIDTH);
    CGContextSetStrokeColorWithColor(context, self.lineColor.CGColor);
    CGContextStrokePath(context);
}

- (void)setLineColor:(UIColor *)lineColor
{
    _lineColor = lineColor;
    [self setNeedsDisplay];
}

- (void)setLinePosition:(NSInteger)linePosition
{
    _linePosition = linePosition;
    [self setNeedsDisplay];
}

@end
