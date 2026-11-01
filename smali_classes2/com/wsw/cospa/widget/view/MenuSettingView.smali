.class public Lcom/wsw/cospa/widget/view/MenuSettingView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final ANIMATION_TIME:I = 0x12c


# instance fields
.field private isShow:Z

.field public longClickMenuView:Landroid/widget/LinearLayout;

.field public refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/MenuSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/MenuSettingView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/view/MenuSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/MenuSettingView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/MenuSettingView;->initView()V

    return-void
.end method


# virtual methods
.method public hideLongClickMenu(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/MenuSettingView;->longClickMenuView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/MenuSettingView;->longClickMenuView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public isShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/MenuSettingView;->isShow:Z

    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v1, p0, Lcom/wsw/cospa/widget/view/MenuSettingView;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    invoke-virtual {v1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/MenuSettingView;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/MenuSettingView;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MenuSettingView;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MenuSettingView;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f0903fb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/MenuSettingView;->longClickMenuView:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 9
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    invoke-static {}, Landroid/support/v4/j10;->goto()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 8

    const-wide/16 v0, 0x12c

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x43960000    # 300.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    const/4 v7, 0x4

    if-eq p1, v7, :cond_1

    const/16 v7, 0x8

    if-eq p1, v7, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-super {p0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v3

    invoke-direct {v5, v6, v6, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5
    invoke-virtual {p1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    iput-boolean v4, p0, Lcom/wsw/cospa/widget/view/MenuSettingView;->isShow:Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-super {p0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-super {p0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 13
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v3

    invoke-direct {v4, v6, v6, v3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 14
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v6, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 15
    invoke-virtual {p1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 16
    invoke-virtual {p1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    iput-boolean v5, p0, Lcom/wsw/cospa/widget/view/MenuSettingView;->isShow:Z

    :goto_0
    return-void
.end method
