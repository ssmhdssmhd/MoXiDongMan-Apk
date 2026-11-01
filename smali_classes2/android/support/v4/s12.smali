.class public Landroid/support/v4/s12;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public case:F

.field public do:Landroid/graphics/PointF;

.field public else:Landroid/graphics/PointF;

.field public for:I

.field public goto:Landroid/graphics/PointF;

.field public if:F

.field public final new:Landroid/graphics/Paint;

.field public try:F


# direct methods
.method public constructor <init>(ILandroid/graphics/PointF;Landroid/graphics/PointF;II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/s12;->new:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Landroid/support/v4/s12;->try:F

    const v1, 0x3ecccccd    # 0.4f

    .line 4
    iput v1, p0, Landroid/support/v4/s12;->case:F

    .line 5
    iput p1, p0, Landroid/support/v4/s12;->for:I

    .line 6
    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-direct {p1, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Landroid/support/v4/s12;->do:Landroid/graphics/PointF;

    .line 7
    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Landroid/support/v4/s12;->do:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v2

    invoke-direct {p1, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Landroid/support/v4/s12;->else:Landroid/graphics/PointF;

    .line 8
    new-instance p1, Landroid/graphics/PointF;

    iget p2, p3, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Landroid/support/v4/s12;->do:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v2

    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, v1

    invoke-direct {p1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Landroid/support/v4/s12;->goto:Landroid/graphics/PointF;

    .line 9
    invoke-virtual {p0, p4}, Landroid/support/v4/s12;->new(I)V

    .line 10
    invoke-virtual {p0, p5}, Landroid/support/v4/s12;->try(I)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget p2, p0, Landroid/support/v4/s12;->try:F

    .line 2
    iget v0, p0, Landroid/support/v4/s12;->case:F

    sub-float/2addr v0, p2

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    .line 3
    invoke-virtual {p0, p2}, Landroid/support/v4/s12;->for(F)V

    return-void
.end method

.method public case(FF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/s12;->try:F

    .line 2
    iput p2, p0, Landroid/support/v4/s12;->case:F

    .line 3
    invoke-super {p0}, Landroid/view/animation/Animation;->start()V

    return-void
.end method

.method public do(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/s12;->else:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Landroid/support/v4/s12;->goto:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Landroid/support/v4/s12;->new:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public for(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/s12;->new:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public if(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Landroid/support/v4/s12;->if:F

    return-void
.end method

.method public new(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s12;->new:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public try(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s12;->new:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
