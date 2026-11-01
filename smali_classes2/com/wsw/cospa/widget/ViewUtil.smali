.class public final Lcom/wsw/cospa/widget/ViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static density:F

.field private static heightPixels:I

.field private static isInit:Z

.field private static scaledDensity:F

.field private static widthPixels:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static confirmInit()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/wsw/cospa/widget/ViewUtil;->isInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewUtil\u8fd8\u672a\u521d\u59cb\u5316"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dpToPx(F)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/widget/ViewUtil;->confirmInit()V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/widget/ViewUtil;->getDisplayMetricsDensity()F

    move-result v0

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getDisplayMetricsDensity()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/widget/ViewUtil;->confirmInit()V

    .line 2
    sget v0, Lcom/wsw/cospa/widget/ViewUtil;->density:F

    return v0
.end method

.method public static getDisplayMetricsScaledDensity()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/widget/ViewUtil;->confirmInit()V

    .line 2
    sget v0, Lcom/wsw/cospa/widget/ViewUtil;->scaledDensity:F

    return v0
.end method

.method public static getScreenHeightPx()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/widget/ViewUtil;->confirmInit()V

    .line 2
    sget v0, Lcom/wsw/cospa/widget/ViewUtil;->heightPixels:I

    return v0
.end method

.method public static getScreenWidthPx()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/widget/ViewUtil;->confirmInit()V

    .line 2
    sget v0, Lcom/wsw/cospa/widget/ViewUtil;->widthPixels:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/wsw/cospa/widget/ViewUtil;->isInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 3
    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/wsw/cospa/widget/ViewUtil;->density:F

    .line 4
    iget v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/wsw/cospa/widget/ViewUtil;->scaledDensity:F

    .line 5
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/wsw/cospa/widget/ViewUtil;->widthPixels:I

    .line 6
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/wsw/cospa/widget/ViewUtil;->heightPixels:I

    const/4 p0, 0x1

    .line 7
    sput-boolean p0, Lcom/wsw/cospa/widget/ViewUtil;->isInit:Z

    return-void
.end method

.method public static pxToDp(F)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/widget/ViewUtil;->confirmInit()V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/widget/ViewUtil;->getDisplayMetricsDensity()F

    move-result v0

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static pxToSp(F)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/widget/ViewUtil;->confirmInit()V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/widget/ViewUtil;->getDisplayMetricsScaledDensity()F

    move-result v0

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static spToPx(F)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/widget/ViewUtil;->confirmInit()V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/widget/ViewUtil;->getDisplayMetricsScaledDensity()F

    move-result v0

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
