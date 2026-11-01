.class Lcom/cheng/channel/ChannelView$do;
.super Landroid/widget/GridLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cheng/channel/ChannelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private break:[I

.field private case:Z

.field private catch:I

.field private class:Landroid/widget/TextView;

.field private const:Landroid/widget/TextView;

.field public default:F

.field private do:I

.field private else:Landroid/animation/AnimatorSet;

.field public extends:F

.field private final:Landroid/widget/TextView;

.field public finally:F

.field private final for:I

.field private goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final if:I

.field private import:Z

.field private final native:I

.field private final new:I

.field public package:F

.field public final synthetic private:Lcom/cheng/channel/ChannelView;

.field private public:D

.field private return:Ljava/lang/Thread;

.field private static:Landroid/os/Handler;

.field private super:I

.field public switch:F

.field private this:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private throw:Z

.field public throws:F

.field private try:I

.field private while:Z


# direct methods
.method public constructor <init>(Lcom/cheng/channel/ChannelView;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/cheng/channel/ChannelView$do;-><init>(Lcom/cheng/channel/ChannelView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/cheng/channel/ChannelView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cheng/channel/ChannelView$do;-><init>(Lcom/cheng/channel/ChannelView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/cheng/channel/ChannelView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    .line 4
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x1e

    .line 5
    iput p1, p0, Lcom/cheng/channel/ChannelView$do;->do:I

    const/16 p1, 0xc8

    .line 6
    iput p1, p0, Lcom/cheng/channel/ChannelView$do;->if:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/cheng/channel/ChannelView$do;->for:I

    const/4 p2, 0x1

    .line 8
    iput p2, p0, Lcom/cheng/channel/ChannelView$do;->new:I

    .line 9
    iput p1, p0, Lcom/cheng/channel/ChannelView$do;->try:I

    .line 10
    iput-boolean p2, p0, Lcom/cheng/channel/ChannelView$do;->case:Z

    .line 11
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/cheng/channel/ChannelView$do;->else:Landroid/animation/AnimatorSet;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cheng/channel/ChannelView$do;->goto:Ljava/util/List;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    const/16 p1, 0x41

    .line 14
    iput p1, p0, Lcom/cheng/channel/ChannelView$do;->native:I

    .line 15
    new-instance p1, Lcom/cheng/channel/ChannelView$do$if;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/cheng/channel/ChannelView$do$if;-><init>(Lcom/cheng/channel/ChannelView$do;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/cheng/channel/ChannelView$do;->static:Landroid/os/Handler;

    .line 16
    invoke-direct {p0}, Lcom/cheng/channel/ChannelView$do;->while()V

    return-void
.end method

.method private break(Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cheng/channel/do;

    .line 3
    iget-object v1, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    iget v2, v0, Lcom/cheng/channel/do;->for:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4
    iget-object v2, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 6
    iget-object v4, p0, Lcom/cheng/channel/ChannelView$do;->goto:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 8
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cheng/channel/do;

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v2, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13
    invoke-direct {p0}, Lcom/cheng/channel/ChannelView$do;->catch()V

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v9}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v9

    rem-int/2addr v8, v9

    const-wide/16 v9, 0xc8

    if-eq v8, v5, :cond_2

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    if-ne v8, v5, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    new-instance v2, Landroid/graphics/PointF;

    iget-object v4, v6, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->a(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->c(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v4, v8

    iget-object v6, v6, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, v0, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    .line 17
    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v4, v0, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v5, :cond_3

    .line 19
    new-instance v2, Landroid/graphics/PointF;

    iget-object v6, v6, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v6, v4

    invoke-direct {v2, v8, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, v0, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    .line 20
    iget-object v2, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v2}, Lcom/cheng/channel/ChannelView;->e(Lcom/cheng/channel/ChannelView;)I

    move-result v2

    invoke-direct {p0, v5, v2}, Lcom/cheng/channel/ChannelView$do;->native(II)V

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cheng/channel/do;

    .line 22
    new-instance v4, Landroid/graphics/PointF;

    iget-object v2, v2, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, v6, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->e(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->f(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v6, v8

    invoke-direct {v4, v2, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, v0, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    .line 23
    iget-object v2, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v2}, Lcom/cheng/channel/ChannelView;->e(Lcom/cheng/channel/ChannelView;)I

    move-result v2

    iget-object v4, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v4}, Lcom/cheng/channel/ChannelView;->f(Lcom/cheng/channel/ChannelView;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    invoke-direct {p0, v5, v2}, Lcom/cheng/channel/ChannelView$do;->native(II)V

    .line 24
    :goto_2
    iget-object v2, v0, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v4, v0, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 25
    :goto_3
    iget v2, p0, Lcom/cheng/channel/ChannelView$do;->try:I

    if-ne v2, v5, :cond_4

    .line 26
    iget-object v2, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v2}, Lcom/cheng/channel/ChannelView;->transient(Lcom/cheng/channel/ChannelView;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v2, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v2}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v2

    rem-int/2addr p1, v2

    if-nez p1, :cond_6

    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 29
    iget p1, v0, Lcom/cheng/channel/do;->for:I

    add-int/2addr p1, v5

    iget-object v1, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v1}, Lcom/cheng/channel/ChannelView;->e(Lcom/cheng/channel/ChannelView;)I

    move-result v1

    neg-int v1, v1

    invoke-direct {p0, p1, v1}, Lcom/cheng/channel/ChannelView$do;->native(II)V

    goto :goto_4

    .line 30
    :cond_5
    iget p1, v0, Lcom/cheng/channel/do;->for:I

    add-int/2addr p1, v5

    iget-object v1, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v1}, Lcom/cheng/channel/ChannelView;->e(Lcom/cheng/channel/ChannelView;)I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v2}, Lcom/cheng/channel/ChannelView;->f(Lcom/cheng/channel/ChannelView;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, v1}, Lcom/cheng/channel/ChannelView$do;->native(II)V

    .line 31
    :cond_6
    :goto_4
    iput v3, v0, Lcom/cheng/channel/do;->for:I

    return-void
.end method

.method public static synthetic case(Lcom/cheng/channel/ChannelView$do;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cheng/channel/ChannelView$do;->import:Z

    return p1
.end method

.method private catch()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3
    iget-object v4, p0, Lcom/cheng/channel/ChannelView$do;->break:[I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v6}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v6

    rem-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v5, :cond_0

    iget-object v3, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v3}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v3

    div-int/2addr v2, v3

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v5

    div-int/2addr v2, v5

    add-int/2addr v2, v3

    :goto_1
    aput v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/cheng/channel/ChannelView$do;->break:[I

    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x2

    if-ge v4, v2, :cond_3

    aget v7, v1, v4

    if-lez v7, :cond_2

    .line 5
    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->e(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    mul-int v8, v8, v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, v6

    iget-object v6, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v6}, Lcom/cheng/channel/ChannelView;->f(Lcom/cheng/channel/ChannelView;)I

    move-result v6

    mul-int v7, v7, v6

    add-int/2addr v8, v7

    add-int/2addr v5, v8

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6
    :cond_3
    iget v1, p0, Lcom/cheng/channel/ChannelView$do;->catch:I

    sub-int v1, v5, v1

    if-eqz v1, :cond_4

    .line 7
    iput v5, p0, Lcom/cheng/channel/ChannelView$do;->catch:I

    new-array v2, v6, [I

    .line 8
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getMeasuredHeight()I

    move-result v4

    aput v4, v2, v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    aput v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 11
    new-instance v1, Lcom/cheng/channel/ChannelView$do$for;

    invoke-direct {v1, p0}, Lcom/cheng/channel/ChannelView$do$for;-><init>(Lcom/cheng/channel/ChannelView$do;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    new-instance v1, Lcom/cheng/channel/ChannelView$do$new;

    invoke-direct {v1, p0}, Lcom/cheng/channel/ChannelView$do$new;-><init>(Lcom/cheng/channel/ChannelView$do;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    return-void
.end method

.method private class(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView$do;->const:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/cheng/channel/ChannelView$do;->class:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/cheng/channel/ChannelView$do;->try:I

    .line 5
    iput-boolean p1, p0, Lcom/cheng/channel/ChannelView$do;->while:Z

    goto :goto_1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/cheng/channel/ChannelView$do;->const:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/cheng/channel/ChannelView$do;->class:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iput v1, p0, Lcom/cheng/channel/ChannelView$do;->try:I

    .line 9
    iput-boolean v1, p0, Lcom/cheng/channel/ChannelView$do;->while:Z

    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {p1}, Lcom/cheng/channel/ChannelView;->for(Lcom/cheng/channel/ChannelView;)I

    move-result p1

    if-lt v1, p1, :cond_1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v2, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v2}, Lcom/cheng/channel/ChannelView;->volatile(Lcom/cheng/channel/ChannelView;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private const(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Lcom/cheng/channel/ChannelView$do;->finally:F

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Lcom/cheng/channel/ChannelView$do;->package:F

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, v0, Lcom/cheng/channel/ChannelView$do;->finally:F

    iget v4, v0, Lcom/cheng/channel/ChannelView$do;->default:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v2

    iget v3, v0, Lcom/cheng/channel/ChannelView$do;->package:F

    iget v4, v0, Lcom/cheng/channel/ChannelView$do;->extends:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 5
    iget v2, v0, Lcom/cheng/channel/ChannelView$do;->finally:F

    iput v2, v0, Lcom/cheng/channel/ChannelView$do;->default:F

    .line 6
    iget v2, v0, Lcom/cheng/channel/ChannelView$do;->package:F

    iput v2, v0, Lcom/cheng/channel/ChannelView$do;->extends:F

    .line 7
    iget-object v2, v0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cheng/channel/do;

    .line 9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x0

    .line 10
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 11
    iget-object v7, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v7}, Lcom/cheng/channel/ChannelView;->for(Lcom/cheng/channel/ChannelView;)I

    move-result v7

    if-lt v6, v7, :cond_2

    if-eq v6, v5, :cond_2

    .line 12
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 13
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cheng/channel/do;

    .line 14
    iget-object v8, v7, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    float-to-int v9, v9

    .line 15
    iget v8, v8, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v10

    int-to-float v9, v9

    sub-float/2addr v10, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v11

    sub-float/2addr v11, v9

    mul-float v10, v10, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v9

    int-to-float v8, v8

    sub-float/2addr v9, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v11

    sub-float/2addr v11, v8

    mul-float v9, v9, v11

    add-float/2addr v10, v9

    float-to-double v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 17
    iget v9, v0, Lcom/cheng/channel/ChannelView$do;->do:I

    if-gt v8, v9, :cond_2

    iget-object v8, v0, Lcom/cheng/channel/ChannelView$do;->else:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-nez v8, :cond_2

    .line 18
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, v0, Lcom/cheng/channel/ChannelView$do;->else:Landroid/animation/AnimatorSet;

    .line 19
    iget-object v7, v7, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    sub-int v8, v6, v5

    .line 20
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    new-array v8, v8, [Landroid/animation/ObjectAnimator;

    const-string v9, "Y"

    const-string v10, "X"

    const/4 v11, 0x1

    if-ge v6, v5, :cond_0

    move v12, v6

    :goto_1
    if-ge v12, v5, :cond_1

    .line 21
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 22
    invoke-virtual {v13}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cheng/channel/do;

    add-int/lit8 v15, v12, 0x1

    .line 23
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/cheng/channel/do;

    .line 24
    iget-object v3, v3, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iput-object v3, v14, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    sub-int/2addr v12, v6

    mul-int/lit8 v12, v12, 0x2

    move/from16 v16, v15

    new-array v15, v11, [F

    .line 25
    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/16 v17, 0x0

    aput v3, v15, v17

    invoke-static {v13, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v8, v12

    add-int/2addr v12, v11

    new-array v3, v11, [F

    .line 26
    iget-object v14, v14, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    aput v14, v3, v17

    invoke-static {v13, v9, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v8, v12

    move/from16 v12, v16

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    move v3, v6

    :goto_2
    if-le v3, v5, :cond_1

    .line 27
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 28
    invoke-virtual {v12}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cheng/channel/do;

    add-int/lit8 v14, v3, -0x1

    .line 29
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cheng/channel/do;

    .line 30
    iget-object v14, v14, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iput-object v14, v13, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    sub-int v15, v3, v5

    sub-int/2addr v15, v11

    mul-int/lit8 v15, v15, 0x2

    move/from16 v16, v5

    new-array v5, v11, [F

    .line 31
    iget v14, v14, Landroid/graphics/PointF;->x:F

    const/16 v17, 0x0

    aput v14, v5, v17

    invoke-static {v12, v10, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v8, v15

    add-int/2addr v15, v11

    new-array v5, v11, [F

    .line 32
    iget-object v13, v13, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    aput v13, v5, v17

    invoke-static {v12, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v8, v15

    add-int/lit8 v3, v3, -0x1

    move/from16 v5, v16

    goto :goto_2

    .line 33
    :cond_1
    iget-object v3, v0, Lcom/cheng/channel/ChannelView$do;->else:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 34
    iget-object v3, v0, Lcom/cheng/channel/ChannelView$do;->else:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0xc8

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 35
    iget-object v3, v0, Lcom/cheng/channel/ChannelView$do;->else:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 36
    iput-object v7, v4, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    .line 37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v2, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_2
    move/from16 v16, v5

    const/16 v17, 0x0

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v16

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method public static synthetic do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic else(Lcom/cheng/channel/ChannelView$do;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView$do;->super:I

    return p1
.end method

.method private final(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 2
    iget v0, p0, Lcom/cheng/channel/ChannelView$do;->try:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView;->volatile(Lcom/cheng/channel/ChannelView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cheng/channel/do;

    .line 5
    iget-object v2, v0, Lcom/cheng/channel/do;->new:Landroid/support/v4/ih;

    iget v2, v2, Landroid/support/v4/ih;->if:I

    if-lt v2, v1, :cond_1

    .line 6
    iget-object v3, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v3}, Lcom/cheng/channel/ChannelView;->if(Lcom/cheng/channel/ChannelView;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 9
    new-instance v4, Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/cheng/channel/ChannelView$do;->goto:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cheng/channel/do;

    iget-object v6, v6, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/cheng/channel/ChannelView$do;->goto:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cheng/channel/do;

    iget-object v7, v7, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->goto:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-direct {v4, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, v0, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cheng/channel/do;

    .line 11
    iget-object v4, v4, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iput-object v4, v0, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v6, v0, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v6, v0, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 13
    invoke-virtual {v3, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 14
    iget-object v4, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 15
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 16
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    invoke-direct {p0}, Lcom/cheng/channel/ChannelView$do;->catch()V

    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cheng/channel/do;

    .line 19
    iget-object v4, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    rem-int/2addr v4, v8

    if-nez v4, :cond_5

    .line 20
    iget-object v4, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 21
    iget-object v4, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v4}, Lcom/cheng/channel/ChannelView;->e(Lcom/cheng/channel/ChannelView;)I

    move-result v4

    neg-int v4, v4

    invoke-direct {p0, v1, v4}, Lcom/cheng/channel/ChannelView$do;->native(II)V

    goto :goto_1

    .line 22
    :cond_4
    iget-object v4, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v4}, Lcom/cheng/channel/ChannelView;->e(Lcom/cheng/channel/ChannelView;)I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->f(Lcom/cheng/channel/ChannelView;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {p0, v1, v4}, Lcom/cheng/channel/ChannelView$do;->native(II)V

    .line 23
    :cond_5
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v5

    rem-int/2addr v4, v5

    if-ne v4, v1, :cond_7

    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_6

    add-int/lit8 v4, v2, 0x1

    .line 25
    iget-object v5, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->e(Lcom/cheng/channel/ChannelView;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/cheng/channel/ChannelView$do;->native(II)V

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v2, 0x1

    .line 26
    iget-object v5, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->e(Lcom/cheng/channel/ChannelView;)I

    move-result v5

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->f(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    invoke-direct {p0, v4, v5}, Lcom/cheng/channel/ChannelView$do;->native(II)V

    .line 27
    :goto_2
    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object p1, p1, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->e(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr p1, v8

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->f(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr p1, v8

    invoke-direct {v4, v5, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_3

    .line 28
    :cond_7
    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p1, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->a(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v5, v8

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->c(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v5, v8

    iget-object p1, p1, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, p1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_3
    const/4 p1, 0x1

    .line 29
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_9

    .line 30
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 31
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cheng/channel/do;

    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v1

    if-ge p1, v9, :cond_8

    add-int/lit8 v9, p1, 0x1

    .line 33
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 34
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cheng/channel/do;

    .line 35
    iget-object v9, v9, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iput-object v9, v8, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    goto :goto_5

    .line 36
    :cond_8
    iput-object v4, v8, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    .line 37
    :goto_5
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v9, v8, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v8, v8, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 38
    :cond_9
    iput v2, v0, Lcom/cheng/channel/do;->for:I

    return-void
.end method

.method public static synthetic for(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView$do;->const:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic goto(Lcom/cheng/channel/ChannelView$do;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cheng/channel/ChannelView$do;->throw:Z

    return p1
.end method

.method public static synthetic if(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView$do;->class:Landroid/widget/TextView;

    return-object p0
.end method

.method private import(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cheng/channel/ChannelView$do$do;

    invoke-direct {v0, p0, p1}, Lcom/cheng/channel/ChannelView$do$do;-><init>(Lcom/cheng/channel/ChannelView$do;Landroid/view/View;)V

    iput-object v0, p0, Lcom/cheng/channel/ChannelView$do;->return:Ljava/lang/Thread;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private native(II)V
    .locals 10

    move v0, p1

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/cheng/channel/ChannelView$do;->goto:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, 0xc8

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/cheng/channel/ChannelView$do;->goto:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cheng/channel/do;

    .line 4
    new-instance v5, Landroid/graphics/PointF;

    iget-object v6, v4, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    int-to-float v8, p2

    add-float/2addr v6, v8

    invoke-direct {v5, v7, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, v4, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v5, v4, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v4, v4, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 8
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cheng/channel/do;

    .line 11
    new-instance v6, Landroid/graphics/PointF;

    iget-object v7, v5, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    int-to-float v9, p2

    add-float/2addr v7, v9

    invoke-direct {v6, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v6, v5, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v6, v5, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, v5, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic new(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView$do;->final:Landroid/widget/TextView;

    return-object p0
.end method

.method private super()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    iget-object v1, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v1}, Lcom/cheng/channel/ChannelView;->for(Lcom/cheng/channel/ChannelView;)I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v3}, Lcom/cheng/channel/ChannelView;->transient(Lcom/cheng/channel/ChannelView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/cheng/channel/ChannelView$do;->class(Z)V

    return-void
.end method

.method private this()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v1}, Lcom/cheng/channel/ChannelView;->if(Lcom/cheng/channel/ChannelView;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2
    iget-object v1, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v1}, Lcom/cheng/channel/ChannelView;->if(Lcom/cheng/channel/ChannelView;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/cheng/channel/ChannelView$do;->break:[I

    .line 3
    iget-object v1, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v1}, Lcom/cheng/channel/ChannelView;->if(Lcom/cheng/channel/ChannelView;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4
    iget-object v6, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v6}, Lcom/cheng/channel/ChannelView;->if(Lcom/cheng/channel/ChannelView;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v3, :cond_1

    .line 5
    iget-object v7, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v7}, Lcom/cheng/channel/ChannelView;->for(Lcom/cheng/channel/ChannelView;)I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gt v7, v8, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u56fa\u5b9a\u9891\u9053\u6570\u91cf\u4e0d\u80fd\u5927\u4e8e\u5df2\u9009\u9891\u9053\u6570\u91cf"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    if-nez v6, :cond_2

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_2
    iget-object v7, v0, Lcom/cheng/channel/ChannelView$do;->break:[I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v9}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v9

    rem-int/2addr v8, v9

    const/4 v9, 0x1

    if-nez v8, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v10

    div-int/2addr v8, v10

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v10

    div-int/2addr v8, v10

    add-int/2addr v8, v9

    :goto_2
    aput v8, v7, v3

    if-nez v3, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    .line 9
    :cond_4
    iget-object v7, v0, Lcom/cheng/channel/ChannelView$do;->break:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    add-int/2addr v7, v9

    add-int/2addr v4, v7

    .line 10
    :goto_3
    invoke-static {v4}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v7

    .line 11
    iget-object v8, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    invoke-static {v2, v8}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v8

    .line 12
    new-instance v10, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v10, v7, v8}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 13
    iget-object v7, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v7}, Lcom/cheng/channel/ChannelView;->new(Lcom/cheng/channel/ChannelView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/cheng/channel/R$layout;->cgl_my_channel:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 14
    sget v8, Lcom/cheng/channel/R$id;->tv_sub_title:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-nez v3, :cond_5

    .line 15
    sget v11, Lcom/cheng/channel/R$id;->tv_tip_edit:I

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v0, Lcom/cheng/channel/ChannelView$do;->class:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->class:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->class:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v12}, Lcom/cheng/channel/ChannelView;->try(Lcom/cheng/channel/ChannelView;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 19
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->class:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v12}, Lcom/cheng/channel/ChannelView;->case(Lcom/cheng/channel/ChannelView;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->class:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v12}, Lcom/cheng/channel/ChannelView;->else(Lcom/cheng/channel/ChannelView;)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v2, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 21
    sget v11, Lcom/cheng/channel/R$id;->tv_tip_finish:I

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v0, Lcom/cheng/channel/ChannelView$do;->const:Landroid/widget/TextView;

    const/4 v12, 0x4

    .line 22
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->const:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->const:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v12}, Lcom/cheng/channel/ChannelView;->goto(Lcom/cheng/channel/ChannelView;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 25
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->const:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v12}, Lcom/cheng/channel/ChannelView;->this(Lcom/cheng/channel/ChannelView;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->const:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v12}, Lcom/cheng/channel/ChannelView;->break(Lcom/cheng/channel/ChannelView;)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v2, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 27
    iput-object v8, v0, Lcom/cheng/channel/ChannelView$do;->final:Landroid/widget/TextView;

    .line 28
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v11}, Lcom/cheng/channel/ChannelView;->catch(Lcom/cheng/channel/ChannelView;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v8, v0, Lcom/cheng/channel/ChannelView$do;->final:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v11}, Lcom/cheng/channel/ChannelView;->class(Lcom/cheng/channel/ChannelView;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v8, v0, Lcom/cheng/channel/ChannelView$do;->final:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v11}, Lcom/cheng/channel/ChannelView;->const(Lcom/cheng/channel/ChannelView;)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8, v2, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    iget-object v8, v0, Lcom/cheng/channel/ChannelView$do;->final:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v11}, Lcom/cheng/channel/ChannelView;->final(Lcom/cheng/channel/ChannelView;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_4

    .line 32
    :cond_5
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v11}, Lcom/cheng/channel/ChannelView;->super(Lcom/cheng/channel/ChannelView;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v11}, Lcom/cheng/channel/ChannelView;->throw(Lcom/cheng/channel/ChannelView;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v11}, Lcom/cheng/channel/ChannelView;->while(Lcom/cheng/channel/ChannelView;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 35
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v11}, Lcom/cheng/channel/ChannelView;->import(Lcom/cheng/channel/ChannelView;)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8, v2, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v11}, Lcom/cheng/channel/ChannelView;->native(Lcom/cheng/channel/ChannelView;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :goto_4
    new-instance v8, Lcom/cheng/channel/do;

    invoke-direct {v8}, Lcom/cheng/channel/do;-><init>()V

    .line 38
    iput v9, v8, Lcom/cheng/channel/do;->do:I

    .line 39
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    iput-object v9, v8, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    .line 40
    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    sget v8, Lcom/cheng/channel/R$id;->tv_title:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 42
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v5, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->public(Lcom/cheng/channel/ChannelView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v8, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44
    iget-object v5, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->return(Lcom/cheng/channel/ChannelView;)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 45
    iget-object v5, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->static(Lcom/cheng/channel/ChannelView;)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    iget-object v5, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->switch(Lcom/cheng/channel/ChannelView;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 47
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    :cond_6
    iget-object v5, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->throws(Lcom/cheng/channel/ChannelView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v5, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->default(Lcom/cheng/channel/ChannelView;)I

    move-result v5

    iput v5, v10, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 50
    iget-object v5, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->extends(Lcom/cheng/channel/ChannelView;)I

    move-result v5

    iget-object v8, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->extends(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    invoke-virtual {v7, v5, v2, v8, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 51
    invoke-virtual {v0, v7, v10}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v5, v0, Lcom/cheng/channel/ChannelView$do;->goto:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    rem-int/2addr v7, v8

    const/4 v8, 0x0

    .line 55
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_e

    .line 56
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->new(Lcom/cheng/channel/ChannelView;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v10, Lcom/cheng/channel/do;

    invoke-direct {v10}, Lcom/cheng/channel/do;-><init>()V

    const/4 v11, 0x2

    .line 58
    iput v11, v10, Lcom/cheng/channel/do;->do:I

    .line 59
    iput v3, v10, Lcom/cheng/channel/do;->for:I

    .line 60
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    iput-object v11, v10, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    .line 61
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/ih;

    iput-object v11, v10, Lcom/cheng/channel/do;->new:Landroid/support/v4/ih;

    .line 62
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 63
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/ih;

    iget-object v10, v10, Landroid/support/v4/ih;->do:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0x11

    .line 64
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 65
    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->finally(Lcom/cheng/channel/ChannelView;)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v2, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    if-nez v3, :cond_8

    .line 66
    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->for(Lcom/cheng/channel/ChannelView;)I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 67
    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->package(Lcom/cheng/channel/ChannelView;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->private(Lcom/cheng/channel/ChannelView;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 69
    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->abstract(Lcom/cheng/channel/ChannelView;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 70
    :cond_7
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 72
    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->strictfp(Lcom/cheng/channel/ChannelView;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->volatile(Lcom/cheng/channel/ChannelView;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 74
    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->interface(Lcom/cheng/channel/ChannelView;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 75
    :cond_8
    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->strictfp(Lcom/cheng/channel/ChannelView;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->volatile(Lcom/cheng/channel/ChannelView;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 77
    iget-object v10, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v10}, Lcom/cheng/channel/ChannelView;->interface(Lcom/cheng/channel/ChannelView;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :goto_6
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v10, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v10}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 80
    iget-object v11, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v11}, Lcom/cheng/channel/ChannelView;->c(Lcom/cheng/channel/ChannelView;)I

    move-result v11

    iget-object v12, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v12}, Lcom/cheng/channel/ChannelView;->f(Lcom/cheng/channel/ChannelView;)I

    move-result v12

    iget-object v13, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v13}, Lcom/cheng/channel/ChannelView;->c(Lcom/cheng/channel/ChannelView;)I

    move-result v13

    iget-object v14, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v14}, Lcom/cheng/channel/ChannelView;->f(Lcom/cheng/channel/ChannelView;)I

    move-result v14

    .line 81
    iget-object v15, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v15}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v15

    rem-int v15, v8, v15

    if-nez v15, :cond_9

    const/4 v11, 0x0

    :cond_9
    add-int/lit8 v15, v8, 0x1

    .line 82
    iget-object v2, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v2}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v2

    rem-int v2, v15, v2

    if-nez v2, :cond_a

    const/4 v13, 0x0

    .line 83
    :cond_a
    iget-object v2, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v2}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v2

    if-ge v8, v2, :cond_b

    const/4 v12, 0x0

    :cond_b
    if-nez v7, :cond_c

    .line 84
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v1}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v1

    sub-int/2addr v2, v1

    if-lt v8, v2, :cond_d

    goto :goto_7

    :cond_c
    move-object/from16 v16, v1

    .line 85
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    if-lt v8, v1, :cond_d

    :goto_7
    const/4 v14, 0x0

    .line 86
    :cond_d
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 87
    invoke-virtual {v0, v9, v10}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v15

    move-object/from16 v1, v16

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_e
    move-object/from16 v16, v1

    .line 89
    iget-object v1, v0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v16

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method private throw(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    :goto_0
    if-le v0, p1, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cheng/channel/do;

    .line 5
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cheng/channel/do;

    .line 7
    iget-object v1, v1, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iput-object v1, v3, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, v3, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, v3, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic try(Lcom/cheng/channel/ChannelView$do;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView$do;->static:Landroid/os/Handler;

    return-object p0
.end method

.method private while()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView;->do(Lcom/cheng/channel/ChannelView;)F

    move-result v0

    iget v1, p0, Lcom/cheng/channel/ChannelView$do;->do:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cheng/channel/ChannelView$do;->do:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 3
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView;->continue(Lcom/cheng/channel/ChannelView;)I

    move-result v0

    iget-object v1, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v1}, Lcom/cheng/channel/ChannelView;->continue(Lcom/cheng/channel/ChannelView;)I

    move-result v1

    iget-object v2, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v2}, Lcom/cheng/channel/ChannelView;->continue(Lcom/cheng/channel/ChannelView;)I

    move-result v2

    iget-object v3, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v3}, Lcom/cheng/channel/ChannelView;->continue(Lcom/cheng/channel/ChannelView;)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/GridLayout;->setPadding(IIII)V

    .line 4
    invoke-direct {p0}, Lcom/cheng/channel/ChannelView$do;->this()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->class:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/cheng/channel/ChannelView$do;->super()V

    .line 3
    iget-object p1, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {p1}, Lcom/cheng/channel/ChannelView;->synchronized(Lcom/cheng/channel/ChannelView;)Lcom/cheng/channel/ChannelView$OnChannelListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {p1}, Lcom/cheng/channel/ChannelView;->synchronized(Lcom/cheng/channel/ChannelView;)Lcom/cheng/channel/ChannelView$OnChannelListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/cheng/channel/ChannelView$OnChannelListener;->channelEditStart()V

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->const:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/cheng/channel/ChannelView$do;->class(Z)V

    .line 7
    iget-object p1, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {p1}, Lcom/cheng/channel/ChannelView;->synchronized(Lcom/cheng/channel/ChannelView;)Lcom/cheng/channel/ChannelView$OnChannelListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {p1}, Lcom/cheng/channel/ChannelView;->synchronized(Lcom/cheng/channel/ChannelView;)Lcom/cheng/channel/ChannelView$OnChannelListener;

    move-result-object p1

    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-virtual {v0}, Lcom/cheng/channel/ChannelView;->getMyChannel()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cheng/channel/ChannelView$OnChannelListener;->channelEditFinish(Ljava/util/List;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cheng/channel/do;

    .line 10
    iget-object v1, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    iget v2, v0, Lcom/cheng/channel/do;->for:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 11
    iget v0, v0, Lcom/cheng/channel/do;->for:I

    if-nez v0, :cond_3

    .line 12
    iget v0, p0, Lcom/cheng/channel/ChannelView$do;->try:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v2}, Lcom/cheng/channel/ChannelView;->for(Lcom/cheng/channel/ChannelView;)I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 13
    invoke-direct {p0, p1, v1}, Lcom/cheng/channel/ChannelView$do;->throw(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/cheng/channel/ChannelView$do;->final(Landroid/view/View;)V

    goto :goto_0

    .line 15
    :cond_2
    iget v0, p0, Lcom/cheng/channel/ChannelView$do;->try:I

    if-nez v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView;->synchronized(Lcom/cheng/channel/ChannelView;)Lcom/cheng/channel/ChannelView$OnChannelListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView;->synchronized(Lcom/cheng/channel/ChannelView;)Lcom/cheng/channel/ChannelView$OnChannelListener;

    move-result-object v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cheng/channel/do;

    iget-object p1, p1, Lcom/cheng/channel/do;->new:Landroid/support/v4/ih;

    invoke-interface {v0, v1, p1}, Lcom/cheng/channel/ChannelView$OnChannelListener;->channelItemClick(ILandroid/support/v4/ih;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/cheng/channel/ChannelView$do;->throw(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/cheng/channel/ChannelView$do;->break(Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->static:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cheng/channel/ChannelView$do;->case:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/widget/GridLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cheng/channel/do;

    .line 6
    iget-object p5, p4, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p5, Landroid/graphics/PointF;->x:F

    .line 7
    iget-object p4, p4, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    iput p3, p4, Landroid/graphics/PointF;->y:F

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean p1, p0, Lcom/cheng/channel/ChannelView$do;->case:Z

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/cheng/channel/ChannelView$do;->while:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 3
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->this:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 5
    iget-object v2, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v2}, Lcom/cheng/channel/ChannelView;->for(Lcom/cheng/channel/ChannelView;)I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 6
    iget-object v2, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v2}, Lcom/cheng/channel/ChannelView;->for(Lcom/cheng/channel/ChannelView;)I

    move-result v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-ne v2, p1, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v4}, Lcom/cheng/channel/ChannelView;->implements(Lcom/cheng/channel/ChannelView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v4}, Lcom/cheng/channel/ChannelView;->instanceof(Lcom/cheng/channel/ChannelView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v4}, Lcom/cheng/channel/ChannelView;->transient(Lcom/cheng/channel/ChannelView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0, v1}, Lcom/cheng/channel/ChannelView$do;->class(Z)V

    .line 11
    :cond_3
    iput-boolean v1, p0, Lcom/cheng/channel/ChannelView$do;->import:Z

    return v1
.end method

.method public onMeasure(II)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    iget-boolean v0, p0, Lcom/cheng/channel/ChannelView$do;->throw:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge v1, v3, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cheng/channel/do;

    iget v5, v5, Lcom/cheng/channel/do;->do:I

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 6
    iget-object v5, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->continue(Lcom/cheng/channel/ChannelView;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v4, p1, v5

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cheng/channel/do;

    iget v5, v5, Lcom/cheng/channel/do;->do:I

    if-ne v5, v4, :cond_1

    .line 9
    iget-object v5, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->c(Lcom/cheng/channel/ChannelView;)I

    move-result v7

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v8, v4

    mul-int v7, v7, v8

    sub-int v7, p1, v7

    iget-object v8, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v8}, Lcom/cheng/channel/ChannelView;->continue(Lcom/cheng/channel/ChannelView;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget-object v4, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v4}, Lcom/cheng/channel/ChannelView;->d(Lcom/cheng/channel/ChannelView;)I

    move-result v4

    div-int/2addr v7, v4

    invoke-static {v5, v7}, Lcom/cheng/channel/ChannelView;->b(Lcom/cheng/channel/ChannelView;I)I

    .line 10
    iget-object v4, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v4}, Lcom/cheng/channel/ChannelView;->a(Lcom/cheng/channel/ChannelView;)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v5}, Lcom/cheng/channel/ChannelView;->e(Lcom/cheng/channel/ChannelView;)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/cheng/channel/ChannelView$do;->break:[I

    array-length v1, p2

    const/4 v3, 0x0

    :goto_2
    if-ge v0, v1, :cond_4

    aget v5, p2, v0

    if-lez v5, :cond_3

    .line 12
    iget-object v6, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v6}, Lcom/cheng/channel/ChannelView;->e(Lcom/cheng/channel/ChannelView;)I

    move-result v6

    mul-int v6, v6, v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v4

    iget-object v7, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v7}, Lcom/cheng/channel/ChannelView;->f(Lcom/cheng/channel/ChannelView;)I

    move-result v7

    mul-int v5, v5, v7

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13
    :cond_4
    iput v3, p0, Lcom/cheng/channel/ChannelView$do;->catch:I

    .line 14
    iget-object p2, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {p2}, Lcom/cheng/channel/ChannelView;->continue(Lcom/cheng/channel/ChannelView;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v2

    add-int/2addr v3, p2

    .line 15
    invoke-virtual {p0, p1, v3}, Landroid/widget/GridLayout;->setMeasuredDimension(II)V

    goto :goto_3

    .line 16
    :cond_5
    iget p2, p0, Lcom/cheng/channel/ChannelView$do;->super:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridLayout;->setMeasuredDimension(II)V

    :goto_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/cheng/channel/ChannelView$do;->public:D

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/cheng/channel/ChannelView$do;->default:F

    iput v0, p0, Lcom/cheng/channel/ChannelView$do;->switch:F

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/cheng/channel/ChannelView$do;->extends:F

    iput v0, p0, Lcom/cheng/channel/ChannelView$do;->throws:F

    .line 5
    iget-boolean v0, p0, Lcom/cheng/channel/ChannelView$do;->while:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lcom/cheng/channel/ChannelView$do;->import(Landroid/view/View;)V

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/cheng/channel/ChannelView$do;->while:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/cheng/channel/ChannelView$do;->import:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v3}, Landroid/widget/GridLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    iget-wide v4, p0, Lcom/cheng/channel/ChannelView$do;->public:D

    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView;->protected(Lcom/cheng/channel/ChannelView;)F

    move-result v0

    float-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/cheng/channel/ChannelView$do;->switch:F

    sub-float/2addr v0, v2

    float-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/cheng/channel/ChannelView$do;->throws:F

    sub-float/2addr v0, v2

    float-to-double v8, v0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 12
    iget-wide v6, p0, Lcom/cheng/channel/ChannelView$do;->public:D

    cmpl-double v0, v4, v6

    if-lez v0, :cond_1

    .line 13
    iput-wide v4, p0, Lcom/cheng/channel/ChannelView$do;->public:D

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cheng/channel/ChannelView$do;->const(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 15
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 16
    :cond_3
    iget-object p2, p0, Lcom/cheng/channel/ChannelView$do;->return:Ljava/lang/Thread;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/cheng/channel/ChannelView$do;->return:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p2

    if-nez p2, :cond_4

    .line 17
    iget-object p2, p0, Lcom/cheng/channel/ChannelView$do;->return:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 18
    :cond_4
    iget-boolean p2, p0, Lcom/cheng/channel/ChannelView$do;->import:Z

    if-eqz p2, :cond_5

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cheng/channel/do;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p2, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p2, p2, Lcom/cheng/channel/do;->if:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v4, 0xc8

    invoke-virtual {p2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 21
    iget-object p2, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {p2}, Lcom/cheng/channel/ChannelView;->transient(Lcom/cheng/channel/ChannelView;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {p2}, Lcom/cheng/channel/ChannelView;->strictfp(Lcom/cheng/channel/ChannelView;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iput-boolean v1, p0, Lcom/cheng/channel/ChannelView$do;->import:Z

    .line 24
    iget-wide p1, p0, Lcom/cheng/channel/ChannelView$do;->public:D

    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView;->protected(Lcom/cheng/channel/ChannelView;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, p1, v4

    if-ltz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method
