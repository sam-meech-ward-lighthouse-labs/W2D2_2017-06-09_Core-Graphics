//
//  CircleView.m
//  Shapes
//
//  Created by Sam Meech-Ward on 2017-06-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
    
    [self.fillColor setFill];
    [[UIColor yellowColor] setStroke];
    
    path.lineWidth = 10;
    
    [path fill];
    [path stroke];
    
}

- (void)coreGraphicsCircle:(const CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextAddEllipseInRect(context, rect);
    
    CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);
    
    CGContextFillPath(context);
}
 

@end
