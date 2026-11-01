.class public Lcom/wsw/cospa/widget/view/BatteryView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private height:I

.field private mPower:I

.field private orientation:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/wsw/cospa/widget/view/BatteryView;->mPower:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Lcom/wsw/cospa/widget/view/BatteryView;->mPower:I

    .line 5
    sget-object v1, Lcom/wsw/cospa/R$styleable;->Battery:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/BatteryView;->orientation:I

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/BatteryView;->mPower:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/BatteryView;->width:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/BatteryView;->height:I

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private drawHorizontalBattery(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget v2, p0, Lcom/wsw/cospa/widget/view/BatteryView;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    .line 5
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p0, Lcom/wsw/cospa/widget/view/BatteryView;->width:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    sub-float/2addr v6, v4

    iget v7, p0, Lcom/wsw/cospa/widget/view/BatteryView;->height:I

    int-to-float v7, v7

    sub-float/2addr v7, v4

    invoke-direct {v5, v4, v4, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget v4, p0, Lcom/wsw/cospa/widget/view/BatteryView;->width:I

    int-to-float v4, v4

    mul-float v3, v3, v2

    sub-float/2addr v4, v3

    iget v3, p0, Lcom/wsw/cospa/widget/view/BatteryView;->mPower:I

    int-to-float v3, v3

    mul-float v4, v4, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v4, v3

    .line 12
    new-instance v3, Landroid/graphics/RectF;

    iget v5, p0, Lcom/wsw/cospa/widget/view/BatteryView;->height:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 13
    iget v4, p0, Lcom/wsw/cospa/widget/view/BatteryView;->mPower:I

    const/16 v5, 0x14

    if-ge v4, v5, :cond_0

    const/high16 v4, -0x10000

    .line 14
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    :goto_0
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 17
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/wsw/cospa/widget/view/BatteryView;->width:I

    int-to-float v5, v4

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/wsw/cospa/widget/view/BatteryView;->height:I

    int-to-float v6, v2

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float v6, v6, v7

    int-to-float v4, v4

    int-to-float v2, v2

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float v2, v2, v7

    invoke-direct {v3, v5, v6, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawVerticalBattery(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget v1, p0, Lcom/wsw/cospa/widget/view/BatteryView;->height:I

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v3, v1

    float-to-int v3, v3

    .line 6
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v3

    add-float v6, v5, v2

    iget v7, p0, Lcom/wsw/cospa/widget/view/BatteryView;->width:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget v8, p0, Lcom/wsw/cospa/widget/view/BatteryView;->height:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    invoke-direct {v4, v2, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget v4, p0, Lcom/wsw/cospa/widget/view/BatteryView;->height:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/wsw/cospa/widget/view/BatteryView;->mPower:I

    rsub-int/lit8 v4, v4, 0x64

    int-to-float v4, v4

    mul-float v3, v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    .line 10
    new-instance v4, Landroid/graphics/RectF;

    add-float v6, v5, v1

    add-float/2addr v6, v3

    iget v3, p0, Lcom/wsw/cospa/widget/view/BatteryView;->width:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v7, p0, Lcom/wsw/cospa/widget/view/BatteryView;->height:I

    int-to-float v7, v7

    sub-float/2addr v7, v1

    invoke-direct {v4, v1, v6, v3, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 11
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 13
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/wsw/cospa/widget/view/BatteryView;->width:I

    int-to-float v4, v3

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v4, v6

    int-to-float v3, v3

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float v3, v3, v6

    invoke-direct {v1, v4, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public getPower()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/BatteryView;->mPower:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/wsw/cospa/widget/view/BatteryView;->orientation:I

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/BatteryView;->drawHorizontalBattery(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/BatteryView;->drawVerticalBattery(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/view/BatteryView;->width:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/view/BatteryView;->height:I

    return-void
.end method

.method public setPower(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/BatteryView;->mPower:I

    if-gez p1, :cond_0

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/wsw/cospa/widget/view/BatteryView;->mPower:I

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
