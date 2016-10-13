//
//  ViewController.m
//  TransformCollectionStyle
//
//  Created by Heejun on 16/10/12.
//  Copyright © 2016年 houchunjiao. All rights reserved.
//

#import "ViewController.h"

#import "Style_Two_CollectionViewCell.h"
#import "Style_One_CollectionViewCell.h"

#define k_ScreenWidth [UIScreen mainScreen].bounds.size.width
#define k_ScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic, assign) BOOL style;
@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.style = NO;

    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 44, 100, 40)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"变换格式" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnDidClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 100, k_ScreenWidth, k_ScreenHeight) collectionViewLayout:layout];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self.collectionView registerClass:[Style_One_CollectionViewCell class] forCellWithReuseIdentifier:@"cell1"];
    [self.collectionView registerClass:[Style_Two_CollectionViewCell class] forCellWithReuseIdentifier:@"cell2"];
    [self.view addSubview:self.collectionView];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
 
    UICollectionViewCell *cell;
    
    if (self.style) {
        cell = [[Style_One_CollectionViewCell alloc] init];
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell1" forIndexPath:indexPath];
        
    }else{
        cell = [[Style_Two_CollectionViewCell alloc] init];
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell2" forIndexPath:indexPath];
    }
    
    cell.backgroundColor = [UIColor brownColor];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (self.style) {
        return CGSizeMake(k_ScreenWidth - 20, 80);
    }
    return CGSizeMake(k_ScreenWidth / 2 - 15 , k_ScreenWidth / 2 - 15);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(10, 10, 0, 10);
}

- (void)btnDidClicked{
    if (self.style == NO) {
        self.style = YES;
    }else{
        self.style = NO;
    }
    
    [self.collectionView reloadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
