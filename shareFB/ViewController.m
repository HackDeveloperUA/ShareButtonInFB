//
//  ViewController.m
//  shareFB
//
//  Created by MD on 09.06.16.
//  Copyright © 2016 MD. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKLoginKit/FBSDKLoginKit.h>

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    FBSDKShareLinkContent *contentLink = [[FBSDKShareLinkContent alloc] init];
    contentLink.contentURL = [NSURL  URLWithString:@"https://itunes.apple.com/us/app/dinosaurs-american-museum/id351849237?mt=8"];
    contentLink.contentDescription = @"Я ололо";
    contentLink.contentTitle       = @"Мой средний балл: 31";
    contentLink.imageURL           = [NSURL URLWithString:@"https://pp.vk.me/c635100/v635100167/10566/3xZuIhgGFqU.jpg"];
    contentLink.quote              = @"quote";

    
    FBSDKShareButton *shareButton = [[FBSDKShareButton alloc] init];
    shareButton.shareContent = contentLink;
    shareButton.center = self.view.center;
    [self.view addSubview:shareButton];


    

}


@end
