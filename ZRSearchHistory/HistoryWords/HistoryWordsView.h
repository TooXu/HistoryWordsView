//
//  HistoryWordsView.h
//  ZRSearchHistory
//
//  Created by ZhongruiXu on 2017/4/20.
//  Copyright © 2017年 XZR. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol HistoryWordsViewDelegate <NSObject>

- (void)historyWordHasBeenClicked:(NSString *)keyWord;
@end

@interface HistoryWordsView : UIView
@property(nonatomic, strong) NSArray<NSString *> *historyWordsArr;
@property(nonatomic, weak) id<HistoryWordsViewDelegate> delegate;

@end
