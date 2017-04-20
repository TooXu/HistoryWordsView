//
//  ViewController.m
//  ZRSearchHistory
//
//  Created by ZhongruiXu on 2017/4/20.
//  Copyright © 2017年 XZR. All rights reserved.
//

#import "ViewController.h"
#import "HistoryWordsView.h"
@interface ViewController ()<HistoryWordsViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *historyWordsArr = @[@"中国",@"韩国",@"日本",@"越南",@"泰国",@"巴基斯坦",@"叙利亚",@"智利",@"马来西亚",@"卡塔尔",@"菲律宾",@"新加坡",@"伊朗",@"朝鲜"];
    
    
    HistoryWordsView *historyWordsView = [[HistoryWordsView alloc]init];
    historyWordsView.frame = CGRectMake(15, 100, self.view.bounds.size.width - 30, 0);
    historyWordsView.historyWordsArr = historyWordsArr;
    historyWordsView.delegate = self;
    [self.view addSubview:historyWordsView];

}

#pragma mark - HistoryWordsViewDelegate 
- (void)historyWordHasBeenClicked:(NSString *)keyWord {
    NSLog(@"keyWord -- %@",keyWord);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
