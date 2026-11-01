.class public Landroid/support/v4/r60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final case:F = 2.0f

.field private static final try:F = 4.5f


# instance fields
.field private final do:Z

.field private final for:I

.field private final if:I

.field private final new:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayEnabled:I

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1}, Landroid/support/v4/px0;->if(Landroid/content/Context;IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/r60;->do:Z

    .line 4
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayColor:I

    .line 5
    invoke-static {p1, v0, v1}, Landroid/support/v4/qx0;->if(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/r60;->if:I

    .line 6
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p1, v0, v1}, Landroid/support/v4/qx0;->if(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/r60;->for:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroid/support/v4/r60;->new:F

    return-void
.end method

.method private const(I)Z
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/16 v0, 0xff

    .line 1
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iget v0, p0, Landroid/support/v4/r60;->for:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public break()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Landroid/support/v4/r60;->if:I

    return v0
.end method

.method public case(IFLandroid/view/View;)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Landroid/support/v4/r60;->this(Landroid/view/View;)F

    move-result p3

    add-float/2addr p2, p3

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/r60;->try(IF)I

    move-result p1

    return p1
.end method

.method public catch()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Landroid/support/v4/r60;->for:I

    return v0
.end method

.method public class()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/r60;->do:Z

    return v0
.end method

.method public do(F)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/r60;->if(F)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public else(F)I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Landroid/support/v4/r60;->for:I

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/r60;->try(IF)I

    move-result p1

    return p1
.end method

.method public for(IF)I
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Landroid/support/v4/r60;->if(F)F

    move-result p2

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    .line 3
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 4
    iget v1, p0, Landroid/support/v4/r60;->if:I

    .line 5
    invoke-static {p1, v1, p2}, Landroid/support/v4/qx0;->goto(IIF)I

    move-result p1

    .line 6
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    return p1
.end method

.method public goto(FLandroid/view/View;)I
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Landroid/support/v4/r60;->this(Landroid/view/View;)F

    move-result p2

    add-float/2addr p1, p2

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/r60;->else(F)I

    move-result p1

    return p1
.end method

.method public if(F)F
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v4/r60;->new:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-lez v2, :cond_1

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, v0

    const/high16 v0, 0x40900000    # 4.5f

    float-to-double v1, p1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float p1, p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public new(IFLandroid/view/View;)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Landroid/support/v4/r60;->this(Landroid/view/View;)F

    move-result p3

    add-float/2addr p2, p3

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/r60;->for(IF)I

    move-result p1

    return p1
.end method

.method public this(Landroid/view/View;)F
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->this(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public try(IF)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/r60;->do:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v4/r60;->const(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/r60;->for(IF)I

    move-result p1

    :cond_0
    return p1
.end method
