.class public Lcom/qmuiteam/qmui/widget/QMUIProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/QMUIProgressBar$QMUIProgressBarTextGenerator;
    }
.end annotation


# static fields
.field public static final abstract:I = -0xffff01

.field public static final continue:I = -0x777778

.field public static final extends:I = 0x0

.field public static final finally:I = 0x1

.field private static final interface:I = -0x1

.field public static final package:I = 0x2

.field public static final private:I = 0x3e8

.field public static protected:I = 0x0

.field public static final strictfp:I = 0x14

.field public static final volatile:I = -0x1000000


# instance fields
.field private break:I

.field private case:I

.field private catch:I

.field private class:J

.field private const:I

.field private default:Landroid/graphics/Point;

.field public do:Lcom/qmuiteam/qmui/widget/QMUIProgressBar$QMUIProgressBarTextGenerator;

.field private else:I

.field private final:I

.field public for:Landroid/graphics/RectF;

.field private goto:I

.field public if:Landroid/graphics/RectF;

.field private import:Landroid/graphics/Paint;

.field private native:Landroid/graphics/Paint;

.field private new:I

.field private public:Landroid/graphics/Paint;

.field private return:Landroid/graphics/RectF;

.field private static:Ljava/lang/String;

.field private super:I

.field private switch:I

.field private this:I

.field private throw:I

.field private throws:I

.field private try:I

.field private while:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x28

    .line 1
    invoke-static {v0}, Landroid/support/v4/ih1;->try(I)I

    move-result v0

    sput v0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->protected:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->import:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->return:Landroid/graphics/RectF;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->static:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->this(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->import:Landroid/graphics/Paint;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->return:Landroid/graphics/RectF;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->static:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->this(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->import:Landroid/graphics/Paint;

    .line 17
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    .line 18
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    .line 19
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->return:Landroid/graphics/RectF;

    const-string p3, ""

    .line 20
    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->static:Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->this(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private case()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->new:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->break:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->this:I

    div-int/2addr v0, v1

    return v0
.end method

.method private do(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->else:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->import:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->goto:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->case:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->switch:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz p3, :cond_1

    .line 7
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 8
    :cond_1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->import:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->import:Landroid/graphics/Paint;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->switch:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->import:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->import:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    :goto_1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 15
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private for(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->default:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->throws:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->import:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->return:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->default:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->throws:I

    sub-int v3, v1, v2

    int-to-float v3, v3

    iput v3, v5, Landroid/graphics/RectF;->left:F

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 3
    iput v1, v5, Landroid/graphics/RectF;->right:F

    .line 4
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v1, v0, v2

    int-to-float v1, v1

    iput v1, v5, Landroid/graphics/RectF;->top:F

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 5
    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 6
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->break:I

    if-lez v0, :cond_0

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v1, 0x43b40000    # 360.0f

    int-to-float v0, v0

    mul-float v0, v0, v1

    .line 7
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->this:I

    int-to-float v1, v1

    div-float v7, v0, v1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->static:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->return:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v0

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    int-to-float v0, v0

    sub-float/2addr v2, v0

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->static:Ljava/lang/String;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->default:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private if()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->case:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->new:I

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->try:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->switch:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->throws:I

    .line 3
    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->new:I

    div-int/2addr v2, v1

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->try:I

    div-int/2addr v3, v1

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->default:Landroid/graphics/Point;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->new:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->try:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->if:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->for:Landroid/graphics/RectF;

    :goto_1
    return-void
.end method

.method private new(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->if:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->import:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->for:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->case()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->try:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->for:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->static:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->if:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v0

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    int-to-float v0, v0

    sub-float/2addr v2, v0

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->static:Ljava/lang/String;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->if:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private try(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->try:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->if:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->import:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->for:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->case()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->try:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->for:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->static:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->if:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v4, v0

    add-float/2addr v2, v4

    div-float/2addr v2, v1

    add-float/2addr v3, v2

    int-to-float v0, v0

    sub-float/2addr v3, v0

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->static:Ljava/lang/String;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->if:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public else(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->goto:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->else:I

    .line 3
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->import:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->else:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getMaxValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->this:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->break:I

    return v0
.end method

.method public getQMUIProgressBarTextGenerator()Lcom/qmuiteam/qmui/widget/QMUIProgressBar$QMUIProgressBarTextGenerator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->do:Lcom/qmuiteam/qmui/widget/QMUIProgressBar$QMUIProgressBarTextGenerator;

    return-object v0
.end method

.method public goto(IZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->this:I

    if-gt p1, v0, :cond_5

    if-gez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->catch:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->break:I

    if-eq v3, p1, :cond_2

    :cond_1
    if-eq v1, v2, :cond_3

    if-ne v1, p1, :cond_3

    :cond_2
    return-void

    :cond_3
    if-nez p2, :cond_4

    .line 3
    iput v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->catch:I

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->break:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 6
    :cond_4
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->break:I

    sub-int/2addr p2, p1

    mul-int/lit16 p2, p2, 0x3e8

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->final:I

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->class:J

    .line 8
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->break:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->const:I

    .line 9
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->catch:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->catch:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->class:J

    sub-long/2addr v2, v4

    .line 3
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->final:I

    int-to-long v4, v0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 4
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->catch:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->break:I

    .line 5
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->catch:I

    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->catch:I

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    sub-float/2addr v4, v2

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->const:I

    int-to-float v0, v0

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    float-to-int v0, v1

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->break:I

    .line 7
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->do:Lcom/qmuiteam/qmui/widget/QMUIProgressBar$QMUIProgressBarTextGenerator;

    if-eqz v0, :cond_2

    .line 9
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->break:I

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->this:I

    invoke-interface {v0, p0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$QMUIProgressBarTextGenerator;->generateText(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->static:Ljava/lang/String;

    .line 10
    :cond_2
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->case:I

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->if:Landroid/graphics/RectF;

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->default:Landroid/graphics/Point;

    if-nez v0, :cond_6

    .line 11
    :cond_5
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->if()V

    .line 12
    :cond_6
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->case:I

    if-nez v0, :cond_7

    .line 13
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->new(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_7
    if-ne v0, v1, :cond_8

    .line 14
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->try(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 15
    :cond_8
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->for(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->new:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->try:I

    .line 4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->if()V

    .line 5
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->new:I

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->try:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->this:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->goto(IZ)V

    return-void
.end method

.method public setQMUIProgressBarTextGenerator(Lcom/qmuiteam/qmui/widget/QMUIProgressBar$QMUIProgressBarTextGenerator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->do:Lcom/qmuiteam/qmui/widget/QMUIProgressBar$QMUIProgressBarTextGenerator;

    return-void
.end method

.method public setStrokeRoundCap(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->native:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->public:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->case:I

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->throw:I

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->super:I

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->while:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->do(IIZ)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public this(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->case:I

    .line 3
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_progress_color:I

    const v1, -0xffff01

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->else:I

    .line 4
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_background_color:I

    const v1, -0x777778

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->goto:I

    .line 5
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_max_value:I

    const/16 v1, 0x64

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->this:I

    .line 6
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_value:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->break:I

    .line 7
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_stroke_round_cap:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->while:Z

    const/16 p2, 0x14

    .line 8
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->super:I

    .line 9
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_android_textSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->super:I

    :cond_0
    const/high16 p2, -0x1000000

    .line 11
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->throw:I

    .line 12
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_android_textColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->throw:I

    .line 14
    :cond_1
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->case:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 15
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_stroke_width:I

    sget v0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->protected:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->switch:I

    .line 16
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->throw:I

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->super:I

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->while:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->do(IIZ)V

    .line 18
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->break:I

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->setProgress(I)V

    return-void
.end method
