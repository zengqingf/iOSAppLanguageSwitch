//
//  SecondViewController.m
//  iOSAppLanguageSwitchDemo
//
//  Created by zengqingfu on 2017/6/13.
//  Copyright © 2017年 zengqingfu. All rights reserved.
//

#import "SecondViewController.h"
#import "NSBundle+AppLanguageSwitch.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)closeAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)setupChineseAction:(id)sender {
    [NSBundle setCusLanguage:@"zh-Hans"];
}

- (IBAction)setupEnglishAction:(id)sender {
    [NSBundle setCusLanguage:@"en"];
}

- (IBAction)currentLanguage:(id)sender {
    NSString *currLanguage = [NSBundle getCusLanguage];
    NSLog(@"当前语言是=%@", currLanguage);
}
- (IBAction)restoreLanguageAction:(id)sender {
    [NSBundle restoreSysLanguage];
}
- (IBAction)strTestAction:(id)sender {
    
    NSString *tes = NSLocalizedString(@"cus_item", nil);
    NSLog(@"测试字符的结果是=%@", tes);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
