//
//  StarView.m
//  Shapes
//
//  Created by Sam Meech-Ward on 2017-06-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "StarView.h"

@implementation StarView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //// Star Drawing
    UIBezierPath* starPath = [UIBezierPath bezierPath];
    [starPath moveToPoint: CGPointMake(120, 1)];
    [starPath addLineToPoint: CGPointMake(131.98, 87.73)];
    [starPath addLineToPoint: CGPointMake(197.13, 28.96)];
    [starPath addLineToPoint: CGPointMake(150.33, 103.06)];
    [starPath addLineToPoint: CGPointMake(238.18, 99.75)];
    [starPath addLineToPoint: CGPointMake(154.49, 126.56)];
    [starPath addLineToPoint: CGPointMake(223.92, 180.25)];
//    [starPath addLineToPoint: CGPointMake(142.51, 147.22)];
//    [starPath addLineToPoint: CGPointMake(161.04, 232.79)];
    [starPath moveToPoint:CGPointMake(120, 155.37)];
    [starPath addLineToPoint: CGPointMake(78.96, 232.79)];
    [starPath addLineToPoint: CGPointMake(97.49, 147.22)];
    [starPath addLineToPoint: CGPointMake(16.08, 180.25)];
    [starPath addLineToPoint: CGPointMake(85.51, 126.56)];
    [starPath addLineToPoint: CGPointMake(1.82, 99.75)];
    [starPath addLineToPoint: CGPointMake(89.67, 103.06)];
    [starPath addLineToPoint: CGPointMake(42.87, 28.96)];
    [starPath addLineToPoint: CGPointMake(108.02, 87.73)];
//    [starPath closePath];
    
    [self.fillColor setFill];
    [self.fillColor setStroke];
    
    [starPath stroke];
    
//    [starPath fill];
}
 

@end
