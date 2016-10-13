//
//  Style_Two_CollectionViewCell.m
//  TransformCollectionStyle
//
//  Created by Heejun on 16/10/13.
//  Copyright © 2016年 houchunjiao. All rights reserved.
//

#import "Style_Two_CollectionViewCell.h"

@implementation Style_Two_CollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.titleLab = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 300, 50)];
        self.titleLab.text = @"style_2";
        [self addSubview:self.titleLab];
    }
    return self;
}

@end
