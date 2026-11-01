.class public Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/WaveSwipeHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressAnimationImageView"
.end annotation


# instance fields
.field public do:Landroid/view/animation/Animation$AnimationListener;

.field public final synthetic if:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/header/WaveSwipeHeader;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;->if:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p2, Lcom/scwang/smartrefresh/header/internal/do;

    invoke-direct {p2, p1}, Lcom/scwang/smartrefresh/header/internal/do;-><init>(Landroid/view/View;)V

    iput-object p2, p1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->case:Lcom/scwang/smartrefresh/header/internal/do;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Lcom/scwang/smartrefresh/header/internal/do;->try(I)V

    .line 5
    invoke-static {}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->do()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->case:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {p2, v0}, Lcom/scwang/smartrefresh/header/internal/do;->final(I)V

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->case:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;->do:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;->do:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;->do:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method
