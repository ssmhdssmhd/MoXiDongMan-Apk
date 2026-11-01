.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/if;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;
.source "SourceFile"


# instance fields
.field public for:F

.field public new:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/if;->for:F

    return-void
.end method


# virtual methods
.method public do()Ljava/util/List;
    .locals 6
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

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x2ee

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    .line 4
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 5
    new-instance v5, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/if$do;

    invoke-direct {v5, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/if$do;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/if;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    const/4 v5, 0x3

    new-array v5, v5, [F

    .line 7
    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 8
    invoke-virtual {v5, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 10
    new-instance v2, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/if$if;

    invoke-direct {v2, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/if$if;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/if;)V

    invoke-virtual {v5, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public for(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    .line 1
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 2
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->case()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 4
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->new()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/if;->for:F

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 7
    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/if;->new:F

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 8
    new-instance v4, Landroid/graphics/RectF;

    neg-float v2, v0

    const/high16 v3, 0x41400000    # 12.0f

    add-float/2addr v2, v3

    neg-float v5, v1

    add-float/2addr v5, v3

    const/4 v6, 0x0

    add-float/2addr v0, v6

    sub-float/2addr v0, v3

    add-float/2addr v1, v6

    sub-float/2addr v1, v3

    invoke-direct {v4, v2, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v5, -0x3dcc0000    # -45.0f

    const/high16 v6, 0x43870000    # 270.0f

    const/4 v7, 0x0

    move-object v3, p1

    move-object v8, p2

    .line 9
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method
