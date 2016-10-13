//
//  Style_One_CollectionViewCell.m
//  TransformCollectionStyle
//
//  Created by Heejun on 16/10/13.
//  Copyright © 2016年 houchunjiao. All rights reserved.
//

#import "Style_One_CollectionViewCell.h"

@implementation Style_One_CollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.titleLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
        self.titleLab.text = @"style_1";
        [self addSubview:self.titleLab];
    }
    
    return self;
}

@end
