//
//  ViewController.m
//  Shapes
//
//  Created by Sam Meech-Ward on 2017-06-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "ViewController.h"
#import "CircleView.h"
#import "Shape.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet Shape *shapeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.shapeView.fillColor = [UIColor greenColor];
}

- (IBAction)switchValueChanged:(UISwitch *)sender {
    if (sender.on) {
        self.shapeView.fillColor = [UIColor greenColor];
    } else {
        self.shapeView.fillColor = [UIColor blackColor];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
