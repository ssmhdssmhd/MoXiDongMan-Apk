.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/throw;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/while;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/while;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->case()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    .line 3
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->case()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    const/4 v6, 0x5

    new-array v7, v6, [F

    aput v1, v7, v3

    .line 4
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->case()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    const/4 v9, 0x1

    aput v8, v7, v9

    aput v1, v7, v5

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->case()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    const/4 v10, 0x3

    aput v8, v7, v10

    const/4 v8, 0x4

    aput v1, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    if-ne v4, v9, :cond_0

    new-array v7, v6, [F

    .line 5
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->case()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v1

    aput v11, v7, v3

    aput v1, v7, v9

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->case()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v1

    aput v11, v7, v5

    aput v1, v7, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->case()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v1

    aput v11, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    :cond_0
    new-array v11, v6, [F

    aput v2, v11, v3

    aput v2, v11, v9

    .line 6
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->new()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v11, v5

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->new()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v11, v10

    aput v2, v11, v8

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    if-ne v4, v9, :cond_1

    new-array v6, v6, [F

    .line 7
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->new()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v2

    aput v11, v6, v3

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->new()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v2

    aput v11, v6, v9

    aput v2, v6, v5

    aput v2, v6, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->new()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    aput v5, v6, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    :cond_1
    const-wide/16 v5, 0x7d0

    .line 8
    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v8, -0x1

    .line 10
    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 11
    new-instance v9, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/throw$do;

    invoke-direct {v9, p0, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/throw$do;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/throw;I)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 13
    invoke-virtual {v11, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 15
    invoke-virtual {v11, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 16
    new-instance v5, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/throw$if;

    invoke-direct {v5, p0, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/throw$if;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/throw;I)V

    invoke-virtual {v11, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 17
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    .line 18
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method
