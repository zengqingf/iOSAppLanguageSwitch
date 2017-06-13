//
//  SecondViewController.m
//  iOSAppLanguageSwitchDemo
//
//  Created by zengqingfu on 2017/6/13.
//  Copyright © 2017年 zengqingfu. All rights reserved.
//

#import "SecondViewController.h"
#import "NSBundle+AppLanguageSwitch.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChange:) name:ZZAppLanguageDidChangeNotification object:nil];
}



- (void)languageChange:(id)sender {
    if (self.isViewLoaded && !self.view.window) {
        //这里置为nil，当视图再次显示的时候会重新走viewDidLoad方法
        self.view = nil;
    }
}

- (IBAction)closeAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)setupChineseAction:(id)sender {
    [self showHUDCompletion:^{
        [NSBundle setCusLanguage:@"zh-Hans"];
    }];
}

- (IBAction)setupEnglishAction:(id)sender {
    [self showHUDCompletion:^{
        [NSBundle setCusLanguage:@"en"];
    }];
    
}

- (IBAction)currentLanguage:(id)sender {
    NSString *currLanguage = [NSBundle getCusLanguage];
    NSLog(@"当前语言是=%@", currLanguage);
}
- (IBAction)restoreLanguageAction:(id)sender {
    
    [self showHUDCompletion:^{
        [NSBundle restoreSysLanguage];
    }];
    
}
- (IBAction)strTestAction:(id)sender {
    
    NSString *tes = NSLocalizedString(@"cus_item", nil);
    NSLog(@"测试字符的结果是=%@", tes);
}

- (void)showHUDCompletion:(void (^ __nullable)(void))completion {
    ThirdViewController *vc = [[ThirdViewController alloc] init];
    [self presentViewController:vc animated:NO completion:completion];
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
