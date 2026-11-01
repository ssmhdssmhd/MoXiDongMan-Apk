.class Lcom/wsw/cospa/widget/view/FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/view/FlingRunnable$OnFlingRunningListener;
    }
.end annotation


# instance fields
.field private mCurrentX:I

.field private mCurrentY:I

.field private final mListener:Lcom/wsw/cospa/widget/view/FlingRunnable$OnFlingRunningListener;

.field private final mScroller:Landroid/widget/Scroller;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wsw/cospa/widget/view/FlingRunnable$OnFlingRunningListener;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mListener:Lcom/wsw/cospa/widget/view/FlingRunnable$OnFlingRunningListener;

    .line 4
    iput-object p3, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public fling(Landroid/graphics/RectF;IIII)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float p2, p2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    move v7, p2

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, v2

    move v7, v6

    .line 4
    :goto_0
    iget p2, p1, Landroid/graphics/RectF;->top:F

    neg-float p2, p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float p2, p3

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v9, p1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    move v8, v3

    move v9, v8

    .line 7
    :goto_1
    iput v2, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mCurrentX:I

    .line 8
    iput v3, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mCurrentY:I

    if-ne v2, v7, :cond_2

    if-eq v3, v9, :cond_3

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    :cond_3
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mListener:Lcom/wsw/cospa/widget/view/FlingRunnable$OnFlingRunningListener;

    iget v3, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mCurrentX:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mCurrentY:I

    sub-int/2addr v4, v1

    invoke-interface {v2, v3, v4}, Lcom/wsw/cospa/widget/view/FlingRunnable$OnFlingRunningListener;->onFlingRunning(II)V

    .line 6
    iput v0, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mCurrentX:I

    .line 7
    iput v1, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mCurrentY:I

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlingRunnable;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/wsw/cospa/widget/view/ViewUtils;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
