//
//  ViewController.m
//  iOS_ipa
//
//  Created by zd on 16/8/2024.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)install_btn_action:(UIButton *)sender {
    //    NSString *scheme = @"itms-services://?action=download-manifest&url=https://jobs8.cn:9000/download/manifest.plist";
    NSString *scheme = @"itms-services://?action=download-manifest&url=https://google.hahaya.top:9001/download/manifest.plist";
    NSURL *url = [NSURL URLWithString:scheme];
    UIApplication *application = [UIApplication sharedApplication];
    [application openURL:url options:@{} completionHandler:^(BOOL success) {
        if(success){
            NSLog(@"open %@",scheme);
        }else {
            NSLog(@"open fail");
        }
    }];
}

@end
