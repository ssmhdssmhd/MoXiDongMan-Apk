.class public Lcom/scwang/smartrefresh/header/BezierCircleHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# static fields
.field public static final switch:I = 0x10e


# instance fields
.field public break:F

.field public case:Landroid/graphics/Paint;

.field public catch:F

.field public class:F

.field public const:F

.field public else:Landroid/graphics/Paint;

.field public final:F

.field public goto:I

.field public import:I

.field public native:I

.field public new:Landroid/graphics/Path;

.field public public:Z

.field public return:Z

.field public static:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field public super:Z

.field public this:F

.field public throw:Z

.field public try:Landroid/graphics/Paint;

.field public while:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x5a

    .line 3
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->import:I

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->native:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->public:Z

    .line 6
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->return:Z

    .line 7
    sget-object p2, Landroid/support/v4/y02;->case:Landroid/support/v4/y02;

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->if:Landroid/support/v4/y02;

    const/high16 p2, 0x42c80000    # 100.0f

    .line 8
    invoke-static {p2}, Landroid/support/v4/i02;->new(F)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 9
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->try:Landroid/graphics/Paint;

    const v0, -0xee4401

    .line 10
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->try:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->case:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 13
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->case:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->else:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->else:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->else:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->else:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Landroid/support/v4/i02;->new(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    return-void
.end method

.method private case(Landroid/graphics/Canvas;II)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->break:F

    int-to-float p3, p3

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 2
    iget p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->this:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_0

    .line 3
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    int-to-float p2, p2

    invoke-virtual {p3, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    invoke-virtual {p3, p2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->this:F

    mul-float v2, v2, v1

    add-float/2addr v2, v5

    invoke-virtual {p3, p2, v2, v0, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 7
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 8
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->try:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p2

    .line 9
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->try:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private do(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->throw:Z

    if-eqz v0, :cond_0

    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->const:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->case:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->break:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->this:F

    add-float/2addr v1, v0

    div-float/2addr v1, v0

    invoke-direct {p0, p1, p2, v1}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->if(Landroid/graphics/Canvas;IF)V

    :cond_0
    return-void
.end method

.method private for(Landroid/graphics/Canvas;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 1
    iget v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->class:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 2
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->else:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    .line 3
    iget v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->class:F

    float-to-double v1, v1

    const-wide v10, 0x3fd3333333333333L    # 0.3

    const v12, 0x3e99999a    # 0.3f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x40000000    # 2.0f

    cmpg-double v3, v1, v10

    if-gez v3, :cond_0

    int-to-float v1, v8

    div-float/2addr v1, v14

    .line 4
    iget v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->const:F

    iget v3, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->case:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5
    iget v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    iget-object v3, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->else:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    mul-float v3, v3, v14

    iget v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->class:F

    div-float v5, v4, v12

    add-float/2addr v5, v13

    mul-float v3, v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v4, v12

    sub-float v4, v13, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    .line 6
    invoke-static {v9, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 7
    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->else:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v2, v2

    sub-float v4, v1, v2

    iget v5, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->const:F

    sub-float v6, v5, v2

    add-float/2addr v1, v2

    add-float/2addr v5, v2

    invoke-direct {v3, v4, v6, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    iget-object v15, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->else:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->else:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->class:F

    float-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v6, v2, v10

    if-ltz v6, :cond_2

    float-to-double v2, v1

    cmpg-double v6, v2, v4

    if-gez v6, :cond_2

    sub-float/2addr v1, v12

    const v2, 0x3ecccccd    # 0.4f

    div-float/2addr v1, v2

    .line 11
    iget v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->break:F

    div-float v3, v2, v14

    div-float v6, v2, v14

    sub-float/2addr v2, v6

    mul-float v2, v2, v1

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->const:F

    int-to-float v3, v8

    div-float/2addr v3, v14

    .line 12
    iget v6, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    iget-object v9, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->case:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v2, v6, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 13
    iget v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->const:F

    iget v3, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->break:F

    iget v6, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    mul-float v6, v6, v14

    sub-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->while:Z

    .line 15
    invoke-direct {v0, v7, v8, v1}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->if(Landroid/graphics/Canvas;IF)V

    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->while:Z

    .line 17
    :cond_2
    iget v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->class:F

    float-to-double v2, v1

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_3

    cmpg-float v2, v1, v13

    if-gtz v2, :cond_3

    const v2, 0x3f333333    # 0.7f

    sub-float/2addr v1, v2

    div-float/2addr v1, v12

    int-to-float v2, v8

    div-float/2addr v2, v14

    .line 18
    iget v3, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    sub-float v4, v2, v3

    mul-float v3, v3, v14

    mul-float v3, v3, v1

    sub-float/2addr v4, v3

    float-to-int v3, v4

    .line 19
    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 20
    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    int-to-float v5, v3

    iget v6, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->break:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 21
    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    iget v5, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->break:F

    iget v6, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    sub-float/2addr v13, v1

    mul-float v6, v6, v13

    sub-float v1, v5, v6

    sub-int v3, v8, v3

    int-to-float v3, v3

    invoke-virtual {v4, v2, v1, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 22
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->case:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private if(Landroid/graphics/Canvas;IF)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->while:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->break:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->this:F

    add-float/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->const:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    mul-float v3, v2, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    int-to-float p2, p2

    div-float v3, p2, v4

    mul-float v2, v2, v2

    mul-float v4, p3, p3

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    mul-float v2, v2, v4

    float-to-double v7, v2

    .line 4
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    add-float/2addr v2, v3

    .line 5
    iget v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v7, v7, v4

    div-float/2addr v7, v5

    sub-float/2addr v6, p3

    mul-float v7, v7, v6

    add-float/2addr v3, v7

    add-float/2addr v4, v3

    .line 6
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 7
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    invoke-virtual {p3, v3, v0, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 9
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    sub-float v4, p2, v4

    invoke-virtual {p3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    sub-float v3, p2, v3

    sub-float/2addr p2, v2

    invoke-virtual {p3, v3, v0, p2, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 11
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->case:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private new(Landroid/graphics/Canvas;I)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->super:Z

    if-eqz v0, :cond_5

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->else:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->native:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->public:Z

    const/4 v4, 0x3

    const/16 v5, 0xa

    if-eqz v3, :cond_0

    const/4 v6, 0x3

    goto :goto_0

    :cond_0
    const/16 v6, 0xa

    :goto_0
    add-int/2addr v1, v6

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->native:I

    .line 4
    iget v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->import:I

    if-eqz v3, :cond_1

    const/16 v4, 0xa

    :cond_1
    add-int/2addr v6, v4

    iput v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->import:I

    .line 5
    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->native:I

    .line 6
    rem-int/lit16 v6, v6, 0x168

    iput v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->import:I

    sub-int/2addr v6, v1

    if-gez v6, :cond_2

    add-int/lit16 v6, v6, 0x168

    .line 7
    :cond_2
    new-instance v8, Landroid/graphics/RectF;

    int-to-float p2, p2

    div-float/2addr p2, v2

    sub-float v1, p2, v0

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->const:F

    sub-float v3, v2, v0

    add-float/2addr p2, v0

    add-float/2addr v2, v0

    invoke-direct {v8, v1, v3, p2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->native:I

    int-to-float v9, p2

    int-to-float v10, v6

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->else:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/16 p1, 0x10e

    if-lt v6, p1, :cond_3

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->public:Z

    goto :goto_1

    :cond_3
    if-gt v6, v5, :cond_4

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->public:Z

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method private try(Landroid/graphics/Canvas;I)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->catch:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p2, v1

    const/high16 v3, 0x40800000    # 4.0f

    .line 2
    iget v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    mul-float v3, v3, v4

    sub-float v3, v2, v3

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v5, v5, v0

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    float-to-double v5, v0

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    cmpg-double v0, v5, v7

    if-gez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    iget v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->const:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    iget v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->const:F

    iget v5, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    iget v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->catch:F

    mul-float v5, v5, v6

    mul-float v5, v5, v1

    sub-float v1, v4, v5

    sub-float/2addr p2, v3

    invoke-virtual {v0, v2, v1, p2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 6
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->case:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 7
    :cond_0
    iget p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->const:F

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->case:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->goto:I

    .line 3
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->static:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v2

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->getRefreshFooter()Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    .line 6
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    iput-boolean v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->throw:Z

    .line 9
    iput-boolean v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->super:Z

    int-to-float v3, v1

    .line 10
    iput v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->break:F

    const/16 v4, 0x10e

    .line 11
    iput v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->import:I

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    .line 12
    iput v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->const:F

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    .line 13
    iput v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    .line 14
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->case(Landroid/graphics/Canvas;II)V

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->try(Landroid/graphics/Canvas;I)V

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->do(Landroid/graphics/Canvas;I)V

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->new(Landroid/graphics/Canvas;I)V

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->for(Landroid/graphics/Canvas;I)V

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 20
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->throw:Z

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->super:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/scwang/smartrefresh/header/BezierCircleHeader$if;

    invoke-direct {p2, p0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader$if;-><init>(Lcom/scwang/smartrefresh/header/BezierCircleHeader;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x320

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/16 p1, 0x320

    return p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->static:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->goto:I

    if-nez p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->return:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->return:Z

    int-to-float p1, p4

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->break:F

    sub-int/2addr p3, p4

    const/4 p1, 0x0

    .line 5
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->this:F

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 3
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->return:Z

    int-to-float p2, p2

    .line 2
    iput p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->break:F

    const/high16 p3, 0x40c00000    # 6.0f

    div-float/2addr p2, p3

    .line 3
    iput p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->final:F

    .line 4
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 5
    iget p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->this:F

    const v0, 0x3f4ccccd    # 0.8f

    mul-float p3, p3, v0

    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->break:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 6
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->this:F

    aput v1, v0, p1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput v1, v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float p1, p1, p3

    neg-float p1, p1

    const/4 v2, 0x2

    aput p1, v0, v2

    const/4 p1, 0x3

    aput v1, v0, p1

    const p1, 0x3ecccccd    # 0.4f

    mul-float p1, p1, p3

    neg-float p1, p1

    const/4 v2, 0x4

    aput p1, v0, v2

    const/4 p1, 0x5

    aput v1, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$do;

    invoke-direct {v0, p0, p3}, Lcom/scwang/smartrefresh/header/BezierCircleHeader$do;-><init>(Lcom/scwang/smartrefresh/header/BezierCircleHeader;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x3e8

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->try:Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->case:Landroid/graphics/Paint;

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->else:Landroid/graphics/Paint;

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
