.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;
.source "SourceFile"


# instance fields
.field private case:F

.field private for:F

.field private new:I

.field private try:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;-><init>()V

    return-void
.end method

.method public static synthetic class(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;->for:F

    return p1
.end method

.method public static synthetic const(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;->new:I

    return p1
.end method

.method public static synthetic final(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;->try:F

    return p1
.end method

.method public static synthetic super(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;->case:F

    return p1
.end method

.method private throw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->case()I

    move-result v0

    div-int/lit8 v0, v0, 0xb

    int-to-float v0, v0

    .line 2
    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;->new:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;->for:F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->new()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private while(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->case()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 2
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->new()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;->try:F

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    const/16 v2, 0xff

    .line 6
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    new-instance v4, Landroid/graphics/RectF;

    neg-float v3, v0

    const v5, 0x3fd9999a    # 1.7f

    div-float v9, v3, v5

    neg-float v3, v1

    div-float v10, v3, v5

    div-float v11, v0, v5

    div-float v12, v1, v5

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x0

    const/high16 v6, 0x43870000    # 270.0f

    const/4 v7, 0x1

    move-object v3, p1

    move-object v8, p2

    .line 8
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;->case:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 13
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v5, 0x42b40000    # 90.0f

    .line 15
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public do()Ljava/util/List;
    .locals 9
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

    div-int/lit8 v1, v1, 0xb

    int-to-float v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 3
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->case()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    const/4 v1, 0x0

    aput v4, v3, v1

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->case()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v3, 0x28a

    .line 4
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v5, -0x1

    .line 6
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 7
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default$do;

    invoke-direct {v6, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default$do;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-array v2, v2, [I

    .line 9
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 12
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default$if;

    invoke-direct {v6, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default$if;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    const/4 v6, 0x3

    new-array v7, v6, [F

    .line 14
    fill-array-data v7, :array_1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 15
    invoke-virtual {v7, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    invoke-virtual {v7, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 17
    new-instance v8, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default$for;

    invoke-direct {v8, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default$for;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    new-array v6, v6, [F

    .line 19
    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 20
    invoke-virtual {v6, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    invoke-virtual {v6, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 22
    new-instance v3, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default$new;

    invoke-direct {v3, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default$new;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;)V

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :array_0
    .array-data 4
        0xff
        0x7a
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x42340000    # 45.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x3dcc0000    # -45.0f
        0x0
    .end array-data
.end method

.method public for(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;->while(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;->throw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method
