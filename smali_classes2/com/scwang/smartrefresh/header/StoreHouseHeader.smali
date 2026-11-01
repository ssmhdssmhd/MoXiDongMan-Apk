.class public Lcom/scwang/smartrefresh/header/StoreHouseHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;
    }
.end annotation


# static fields
.field public static final default:F = 0.4f

.field public static final extends:F = 1.0f

.field public static final finally:F = 0.4f

.field public static final package:I = 0x190

.field public static final throws:F = 0.7f


# instance fields
.field public break:I

.field public case:I

.field public catch:I

.field public class:I

.field public const:I

.field public else:I

.field public final:I

.field public goto:I

.field public import:Z

.field public native:Z

.field public new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/s12;",
            ">;"
        }
    .end annotation
.end field

.field public public:Landroid/graphics/Matrix;

.field public return:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field public static:Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;

.field public super:I

.field public switch:Landroid/view/animation/Transformation;

.field public this:F

.field public throw:I

.field public try:F

.field public while:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->try:F

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->case:I

    .line 6
    iput v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->else:I

    .line 7
    iput v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->goto:I

    const/4 v3, 0x0

    .line 8
    iput v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->this:F

    .line 9
    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->break:I

    .line 10
    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->catch:I

    .line 11
    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->class:I

    .line 12
    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->const:I

    const/16 v3, 0x3e8

    .line 13
    iput v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->final:I

    .line 14
    iput v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->super:I

    .line 15
    iput v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->throw:I

    .line 16
    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->while:I

    .line 17
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->import:Z

    .line 18
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->native:Z

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->public:Landroid/graphics/Matrix;

    .line 20
    new-instance v0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;-><init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;Lcom/scwang/smartrefresh/header/StoreHouseHeader$do;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->static:Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;

    .line 21
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->switch:Landroid/view/animation/Transformation;

    .line 22
    invoke-static {v1}, Landroid/support/v4/i02;->new(F)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->case:I

    const/high16 v0, 0x42200000    # 40.0f

    .line 23
    invoke-static {v0}, Landroid/support/v4/i02;->new(F)I

    move-result v1

    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->else:I

    .line 24
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->goto:I

    const v1, -0xcccccd

    .line 25
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->while:I

    const v1, -0x333334

    .line 26
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->this(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    .line 27
    sget-object v1, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 28
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader_shhLineWidth:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->case:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->case:I

    .line 29
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader_shhDropHeight:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->else:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->else:I

    .line 30
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader_shhEnableFadeAnimation:I

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->native:Z

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->native:Z

    .line 31
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader_shhText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->if(Ljava/lang/String;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    goto :goto_0

    :cond_0
    const-string p2, "StoreHouse"

    .line 33
    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->if(Ljava/lang/String;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    .line 34
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    iget p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->catch:I

    invoke-static {v0}, Landroid/support/v4/i02;->new(F)I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public case(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 2

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->case:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/s12;

    invoke-virtual {v1, p1}, Landroid/support/v4/s12;->try(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->this:F

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_6

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/s12;

    .line 6
    iget v6, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->class:I

    int-to-float v6, v6

    iget-object v7, v5, Landroid/support/v4/s12;->do:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v8

    .line 7
    iget v8, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->const:I

    int-to-float v8, v8

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v7

    .line 8
    iget-boolean v7, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->import:Z

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v9

    iget-object v7, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->switch:Landroid/view/animation/Transformation;

    invoke-virtual {v5, v9, v10, v7}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 10
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4

    :cond_1
    const/4 v7, 0x0

    cmpl-float v9, v2, v7

    if-nez v9, :cond_2

    .line 11
    iget v6, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->goto:I

    invoke-virtual {v5, v6}, Landroid/support/v4/s12;->if(I)V

    goto :goto_5

    :cond_2
    int-to-float v9, v4

    const v10, 0x3e99999a    # 0.3f

    mul-float v9, v9, v10

    int-to-float v11, v1

    div-float/2addr v9, v11

    sub-float/2addr v10, v9

    const v11, 0x3ecccccd    # 0.4f

    cmpl-float v12, v2, v3

    if-eqz v12, :cond_5

    sub-float v10, v3, v10

    cmpl-float v10, v2, v10

    if-ltz v10, :cond_3

    goto :goto_3

    :cond_3
    cmpg-float v10, v2, v9

    if-gtz v10, :cond_4

    goto :goto_2

    :cond_4
    sub-float v7, v2, v9

    const v9, 0x3f333333    # 0.7f

    div-float/2addr v7, v9

    .line 12
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 13
    :goto_2
    iget v9, v5, Landroid/support/v4/s12;->if:F

    sub-float v10, v3, v7

    mul-float v9, v9, v10

    add-float/2addr v6, v9

    .line 14
    iget v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->else:I

    neg-int v9, v9

    int-to-float v9, v9

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    .line 15
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->public:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 16
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->public:Landroid/graphics/Matrix;

    const/high16 v10, 0x43b40000    # 360.0f

    mul-float v10, v10, v7

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 17
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->public:Landroid/graphics/Matrix;

    invoke-virtual {v9, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 18
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->public:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-float v7, v7, v11

    .line 19
    invoke-virtual {v5, v7}, Landroid/support/v4/s12;->for(F)V

    .line 20
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->public:Landroid/graphics/Matrix;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_4

    .line 21
    :cond_5
    :goto_3
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    invoke-virtual {v5, v11}, Landroid/support/v4/s12;->for(F)V

    .line 23
    :goto_4
    invoke-virtual {v5, p1}, Landroid/support/v4/s12;->do(Landroid/graphics/Canvas;)V

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 25
    :cond_6
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->import:Z

    if-eqz v1, :cond_7

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 28
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public do(Ljava/util/List;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)",
            "Lcom/scwang/smartrefresh/header/StoreHouseHeader;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 3
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v11, v5, :cond_1

    .line 4
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    .line 5
    new-instance v7, Landroid/graphics/PointF;

    aget v6, v5, v2

    invoke-static {v6}, Landroid/support/v4/i02;->new(F)I

    move-result v6

    int-to-float v6, v6

    iget v8, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->try:F

    mul-float v6, v6, v8

    aget v8, v5, v1

    invoke-static {v8}, Landroid/support/v4/i02;->new(F)I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->try:F

    mul-float v8, v8, v9

    invoke-direct {v7, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6
    new-instance v8, Landroid/graphics/PointF;

    const/4 v6, 0x2

    aget v6, v5, v6

    invoke-static {v6}, Landroid/support/v4/i02;->new(F)I

    move-result v6

    int-to-float v6, v6

    iget v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->try:F

    mul-float v6, v6, v9

    const/4 v9, 0x3

    aget v5, v5, v9

    invoke-static {v5}, Landroid/support/v4/i02;->new(F)I

    move-result v5

    int-to-float v5, v5

    iget v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->try:F

    mul-float v5, v5, v9

    invoke-direct {v8, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7
    iget v5, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 8
    iget v5, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 9
    iget v5, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 10
    iget v5, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 11
    new-instance v12, Landroid/support/v4/s12;

    iget v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->throw:I

    iget v10, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->case:I

    move-object v5, v12

    move v6, v11

    invoke-direct/range {v5 .. v10}, Landroid/support/v4/s12;-><init>(ILandroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 12
    iget v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->goto:I

    invoke-virtual {v12, v5}, Landroid/support/v4/s12;->if(I)V

    .line 13
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    float-to-double v1, v3

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->break:I

    float-to-double v1, v4

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->catch:I

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-object p0
.end method

.method public else(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->final:I

    .line 2
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->super:I

    return-object p0
.end method

.method public for(Ljava/lang/String;I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 1

    int-to-float p2, p2

    const v0, 0x3c23d70a    # 0.01f

    mul-float p2, p2, v0

    const/16 v0, 0xe

    .line 1
    invoke-static {p1, p2, v0}, Landroid/support/v4/t12;->do(Ljava/lang/String;FI)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->do(Ljava/util/List;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    return-object p0
.end method

.method public goto(F)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->try:F

    return-object p0
.end method

.method public if(Ljava/lang/String;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 1

    const/16 v0, 0x19

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->for(Ljava/lang/String;I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    return-object p0
.end method

.method public new(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const-string v5, ","

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v6, v5, [F

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    .line 5
    aget-object v8, v4, v7

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->do(Ljava/util/List;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    return-object p0
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->import:Z

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->static:Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;

    invoke-static {v0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->if(Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;)V

    if-eqz p2, :cond_0

    .line 3
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->native:Z

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lcom/scwang/smartrefresh/header/StoreHouseHeader$do;

    invoke-direct {p1, p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$do;-><init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 p1, 0xfa

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/s12;

    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->goto:I

    invoke-virtual {v0, v1}, Landroid/support/v4/s12;->if(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->return:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 2
    iget p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->while:I

    invoke-interface {p1, p0, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    .line 2
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->break:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->class:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->catch:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->const:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->else:I

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 0

    const p1, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, p1

    .line 1
    iput p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->this:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->import:Z

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->static:Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;

    invoke-static {p1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;->do(Lcom/scwang/smartrefresh/header/StoreHouseHeader$if;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->while:I

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->return:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p0, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 5
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 6
    aget p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->this(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    :cond_1
    return-void
.end method

.method public this(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->throw:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->new:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/s12;

    invoke-virtual {v1, p1}, Landroid/support/v4/s12;->new(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public try(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->else:I

    return-object p0
.end method
