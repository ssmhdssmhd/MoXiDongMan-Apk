.class public Lcom/scwang/smartrefresh/header/material/CircleImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/material/CircleImageView$do;
    }
.end annotation


# static fields
.field public static final case:F = 3.5f

.field public static final else:I = 0x4

.field public static final for:I = 0x3d000000

.field public static final if:I = 0x1e000000

.field public static final new:F = 0.0f

.field public static final try:F = 1.75f


# instance fields
.field public do:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3fe00000    # 1.75f

    mul-float v0, v0, p1

    float-to-int v0, v0

    const/4 v1, 0x0

    mul-float v1, v1, p1

    float-to-int v1, v1

    const/high16 v2, 0x40600000    # 3.5f

    mul-float v2, v2, p1

    float-to-int v2, v2

    .line 3
    iput v2, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView;->do:I

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/high16 v1, 0x40800000    # 4.0f

    mul-float p1, p1, v1

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/scwang/smartrefresh/header/material/CircleImageView$do;

    iget v3, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView;->do:I

    invoke-direct {p1, p0, v3}, Lcom/scwang/smartrefresh/header/material/CircleImageView$do;-><init>(Lcom/scwang/smartrefresh/header/material/CircleImageView;I)V

    .line 8
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 10
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v4, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView;->do:I

    int-to-float v4, v4

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v5, 0x1e000000

    invoke-virtual {p1, v4, v1, v0, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 11
    iget p1, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView;->do:I

    .line 12
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    move-object v0, v3

    .line 13
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0x10

    if-lt v2, p1, :cond_1

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p1, p2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView;->do:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView;->do:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method
