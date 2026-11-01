.class public Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c00a1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;->view:Landroid/view/View;

    const p2, 0x7f09048b

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;->mImageView:Landroid/widget/ImageView;

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$001(Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setVisibility(IZ)V
    .locals 13

    if-nez p2, :cond_0

    const v0, 0x7f0e0008

    goto :goto_0

    :cond_0
    const v0, 0x7f0e0007

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget-object v5, p0, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/support/v4/j10;->this(Landroid/content/Context;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {v3, v4, v4, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 v11, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    if-eqz p2, :cond_2

    const/16 v1, -0x78

    .line 5
    :cond_2
    new-instance p2, Landroid/view/animation/RotateAnimation;

    const/4 v7, 0x0

    int-to-float v8, v1

    move-object v6, p2

    move v9, v11

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 7
    invoke-virtual {p1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v4, 0x12c

    .line 9
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 10
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 11
    invoke-virtual {p2, v4, v5}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    const-wide/16 v1, 0x3e8

    .line 12
    invoke-virtual {p2, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 13
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    new-instance p2, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout$1;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout$1;-><init>(Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 15
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-super {p0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method
