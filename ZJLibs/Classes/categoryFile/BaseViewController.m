//
//  BaseViewController.m
//  Pods
//
//  Created by chenxi on 2021/1/18.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)updateSubViewsWithImages:(NSArray *)array {
    for (int i = 0; i < array.count; i++) {
        UIImageView *imgv = [UIImageView new];
        imgv.frame = CGRectMake(10, 80+ 40*i, 30, 30);
        imgv.image = array[i];
        [self.view addSubview:imgv];
    }
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
