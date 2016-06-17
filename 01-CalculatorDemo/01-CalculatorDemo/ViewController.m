//
//  ViewController.m
//  01-CalculatorDemo
//
//  Created by qingyun on 16/4/25.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

//监听计算按钮的点击事件
- (IBAction)add:(UIButton *)sender {
    //1、取出两个输入框中的文本
    NSInteger value1 = [_textField1.text integerValue];
    NSInteger value2 = [_textField2.text integerValue];
    //2、两个文本相加
    NSInteger resultValue = value1 + value2;
    //3、把结果值添加到resultLabel上
    _resultLabel.text = [@(resultValue) stringValue];
    
    //回收键盘
#if 0
    //（取消第一响应者）
    [_textField2 resignFirstResponder];
    [_textField1 resignFirstResponder];
#else
    //结束共同父视图的编辑状态
    [self.view endEditing:YES];
#endif
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
