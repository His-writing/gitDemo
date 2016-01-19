//
//  ViewController.m
//  gitDemo
//
//  Created by china on 16/1/19.
//  Copyright © 2016年 china. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+animatedGIF.h"
//https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=4081366343,2899472368&fm=116&gp=0.jpg

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSString *name = @"qu.jpg";
    NSString *filePath = [[NSBundle bundleWithPath:[[NSBundle mainBundle] bundlePath]] pathForResource:name ofType:nil];
    NSData *imageData = [NSData dataWithContentsOfFile:filePath];
    self.imag.image =[UIImage  animatedImageWithAnimatedGIFData:imageData];
 
    UIImage *gitI=[UIImage animatedImageWithAnimatedGIFURL:[NSURL URLWithString:@"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=4081366343,2899472368&fm=116&gp=0.jpg"]];
    self.gitImage.image=gitI;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
