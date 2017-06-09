//
//  TextInputViewController.m
//  Shapes
//
//  Created by Sam Meech-Ward on 2017-06-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "TextInputViewController.h"
@import WebKit;
@import SafariServices;

@interface TextInputViewController () <UITextFieldDelegate, UITextViewDelegate>

@property (nonatomic, weak) WKWebView *webView;

@end

@implementation TextInputViewController

#pragma mark - Setup

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    WKWebView *webView = [[WKWebView alloc] init];
    self.webView = webView;
    [self.view insertSubview:self.webView atIndex:0];
    
    self.webView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.webView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.webView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
    [self.webView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
    [self.webView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)tapGesture:(id)sender {
    // Tap the background
    
    [self.view endEditing:YES];
}

- (IBAction)goToReddit:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"https://www.reddit.com/"];
    SFSafariViewController *safari = [[SFSafariViewController alloc] initWithURL:url];
    
    [self presentViewController:safari animated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    NSURL *url = [NSURL URLWithString:textField.text];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:urlRequest];
    
    return YES;
}

@end
