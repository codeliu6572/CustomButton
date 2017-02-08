//
//  LHButton.m
//  MyButton
//
//  Created by 刘浩浩 on 2017/2/7.
//  Copyright © 2017年 CodingFire. All rights reserved.
//

#import "LHButton.h"

@implementation LHButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/




- (void)setMyButtonIcon:(UIImage *)image titleTest:(NSString *)title titleFont:(CGFloat)fontSize titleColor:(UIColor *)color
{
    CGFloat titleWidth = [self configureLength:title titleFont:fontSize];
    
    UIView *lineLeft = [[UIView alloc]initWithFrame:CGRectMake(0, self.frame.size.height/2, (self.frame.size.width - titleWidth - 15 - 13)/2, 1)];
    lineLeft.backgroundColor = [UIColor colorWithRed:0.84f green:0.83f blue:0.80f alpha:1.00f];
    [self addSubview:lineLeft];
    
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake((self.frame.size.width - titleWidth - 15 - 13)/2 + 5, (self.frame.size.height - 13)/2, 13, 13)];
    imageView.image = image;
    [self addSubview:imageView];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake((self.frame.size.width - titleWidth - 15 - 13)/2 + 3 + 13 + 3, 0, titleWidth + 9, self.frame.size.height)];
    label.text = title;
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = color;
    [self addSubview:label];
    
    UIView *lineRight = [[UIView alloc]initWithFrame:CGRectMake(self.frame.size.width - (self.frame.size.width - titleWidth - 15 - 13)/2, self.frame.size.height/2, (self.frame.size.width - titleWidth - 15 - 13)/2, 1)];
    lineRight.backgroundColor = [UIColor colorWithRed:0.84f green:0.83f blue:0.80f alpha:1.00f];
    [self addSubview:lineRight];
}

#pragma mark - 计算长度
- (NSInteger)configureLength:(NSString *)titleTest titleFont:(CGFloat)fontSize
{
    NSDictionary *attribute = @{NSFontAttributeName: [UIFont systemFontOfSize:fontSize]};
    CGSize size = [titleTest boundingRectWithSize:CGSizeMake(1000, 0) options: NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;
    return size.width;
}
@end
