.class public Lcom/wsw/cospa/widget/view/ButtomMenuLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIMATION_TIME:I = 0x12c


# instance fields
.field private isShow:Z

.field private llSeekProgress:Landroid/widget/LinearLayout;

.field private mButtomLayout:Landroid/widget/LinearLayout;

.field private mChapterUrl:Ljava/lang/String;

.field private mTopLayout:Landroidx/appcompat/widget/Toolbar;

.field private mTopView:Landroid/view/View;

.field private tvChapterUrl:Landroid/widget/TextView;

.field private tvSaveBook:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow:Z

    return-void
.end method

.method public static synthetic access$001(Lcom/wsw/cospa/widget/view/ButtomMenuLayout;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public initChapterUrl(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->tvChapterUrl:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->tvChapterUrl:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public initData(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 4
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public initSaveBookText(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->tvSaveBook:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->tvSaveBook:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public initSkipChapter(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->llSeekProgress:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->llSeekProgress:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public isShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09046a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mChapterUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mChapterUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mTopView:Landroid/view/View;

    const v2, 0x7f0902ab

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mTopLayout:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mTopView:Landroid/view/View;

    const v2, 0x7f09046a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->tvChapterUrl:Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mTopView:Landroid/view/View;

    const v2, 0x7f0904a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->tvSaveBook:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mButtomLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f09028b

    .line 7
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->llSeekProgress:Landroid/widget/LinearLayout;

    .line 8
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mTopLayout:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060141

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 9
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->tvChapterUrl:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    iget-object v3, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mTopLayout:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 13
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 14
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 15
    invoke-static {}, Landroid/support/v4/j10;->class()I

    move-result v0

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mTopLayout:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mTopLayout:Landroidx/appcompat/widget/Toolbar;

    .line 17
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mTopLayout:Landroidx/appcompat/widget/Toolbar;

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iget-object v4, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mTopLayout:Landroidx/appcompat/widget/Toolbar;

    .line 19
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    .line 20
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 10

    const/high16 v0, 0x42b40000    # 90.0f

    const/high16 v1, 0x42a00000    # 80.0f

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_2

    const/4 v8, 0x4

    if-eq p1, v8, :cond_1

    const/16 v8, 0x8

    if-eq p1, v8, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v1

    neg-float v1, v1

    invoke-direct {v8, v7, v7, v7, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4
    invoke-virtual {p1, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 6
    invoke-virtual {p1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 7
    new-instance v1, Lcom/wsw/cospa/widget/view/ButtomMenuLayout$1;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout$1;-><init>(Lcom/wsw/cospa/widget/view/ButtomMenuLayout;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mTopView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 10
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v0

    invoke-direct {v1, v7, v7, v7, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 11
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 14
    invoke-virtual {p1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mButtomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 16
    new-instance v0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout$2;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout$2;-><init>(Lcom/wsw/cospa/widget/view/ButtomMenuLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 17
    iput-boolean v2, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow:Z

    goto :goto_0

    .line 18
    :cond_1
    invoke-super {p0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-super {p0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 20
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 21
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v1

    neg-float v1, v1

    invoke-direct {v2, v7, v7, v1, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 22
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v7, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 25
    invoke-virtual {p1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 26
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mTopView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 27
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 28
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v0

    invoke-direct {v1, v7, v7, v0, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 29
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 32
    invoke-virtual {p1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mButtomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    iput-boolean v6, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow:Z

    :goto_0
    return-void
.end method

.method public updateChapterUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->tvChapterUrl:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->mChapterUrl:Ljava/lang/String;

    return-void
.end method
