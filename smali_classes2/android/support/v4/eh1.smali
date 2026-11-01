.class public final Landroid/support/v4/eh1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Z

.field private static final g:Z

.field private static final h:Landroid/graphics/Paint;


# instance fields
.field private a:I

.field private abstract:F

.field private b:F

.field private break:F

.field private c:F

.field private final case:Landroid/graphics/RectF;

.field private catch:Landroid/content/res/ColorStateList;

.field private class:Landroid/content/res/ColorStateList;

.field private const:F

.field private continue:F

.field private d:F

.field private default:Z

.field private final do:Landroid/view/View;

.field private e:I

.field private else:I

.field private extends:Landroid/graphics/Bitmap;

.field private final:F

.field private finally:Landroid/graphics/Paint;

.field private for:F

.field private goto:I

.field private if:Z

.field private implements:F

.field private import:F

.field private instanceof:F

.field private final interface:Landroid/text/TextPaint;

.field private native:Landroid/graphics/Typeface;

.field private final new:Landroid/graphics/Rect;

.field private package:F

.field private private:F

.field private protected:Landroid/view/animation/Interpolator;

.field private public:Landroid/graphics/Typeface;

.field private return:Landroid/graphics/Typeface;

.field private static:Ljava/lang/CharSequence;

.field private strictfp:[I

.field private super:F

.field private switch:Ljava/lang/CharSequence;

.field private synchronized:F

.field private this:F

.field private throw:F

.field private throws:Z

.field private transient:Landroid/view/animation/Interpolator;

.field private final try:Landroid/graphics/Rect;

.field private volatile:Z

.field private while:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v4/eh1;->f:Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Landroid/support/v4/eh1;->h:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Landroid/support/v4/eh1;->else:I

    .line 3
    iput v0, p0, Landroid/support/v4/eh1;->goto:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 4
    iput v0, p0, Landroid/support/v4/eh1;->this:F

    .line 5
    iput v0, p0, Landroid/support/v4/eh1;->break:F

    .line 6
    iput-object p1, p0, Landroid/support/v4/eh1;->do:Landroid/view/View;

    .line 7
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    .line 10
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/v4/eh1;->case:Landroid/graphics/RectF;

    return-void
.end method

.method private case(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->static:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget-object v1, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 4
    iget v2, p0, Landroid/support/v4/eh1;->break:F

    invoke-static {p1, v2}, Landroid/support/v4/eh1;->switch(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 5
    iget p1, p0, Landroid/support/v4/eh1;->break:F

    .line 6
    iput v3, p0, Landroid/support/v4/eh1;->abstract:F

    .line 7
    iget-object v1, p0, Landroid/support/v4/eh1;->return:Landroid/graphics/Typeface;

    iget-object v2, p0, Landroid/support/v4/eh1;->native:Landroid/graphics/Typeface;

    if-eq v1, v2, :cond_1

    .line 8
    iput-object v2, p0, Landroid/support/v4/eh1;->return:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    goto :goto_3

    .line 9
    :cond_2
    iget v2, p0, Landroid/support/v4/eh1;->this:F

    .line 10
    iget-object v6, p0, Landroid/support/v4/eh1;->return:Landroid/graphics/Typeface;

    iget-object v7, p0, Landroid/support/v4/eh1;->public:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_3

    .line 11
    iput-object v7, p0, Landroid/support/v4/eh1;->return:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 12
    :goto_0
    invoke-static {p1, v2}, Landroid/support/v4/eh1;->switch(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 13
    iput v3, p0, Landroid/support/v4/eh1;->abstract:F

    goto :goto_1

    .line 14
    :cond_4
    iget v7, p0, Landroid/support/v4/eh1;->this:F

    div-float/2addr p1, v7

    iput p1, p0, Landroid/support/v4/eh1;->abstract:F

    .line 15
    :goto_1
    iget p1, p0, Landroid/support/v4/eh1;->break:F

    iget v7, p0, Landroid/support/v4/eh1;->this:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    cmpl-float v7, v7, v0

    if-lez v7, :cond_5

    div-float/2addr v0, p1

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move p1, v2

    move v1, v6

    :goto_3
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_8

    .line 17
    iget v2, p0, Landroid/support/v4/eh1;->continue:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_7

    iget-boolean v2, p0, Landroid/support/v4/eh1;->volatile:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x1

    .line 18
    :goto_5
    iput p1, p0, Landroid/support/v4/eh1;->continue:F

    .line 19
    iput-boolean v5, p0, Landroid/support/v4/eh1;->volatile:Z

    .line 20
    :cond_8
    iget-object p1, p0, Landroid/support/v4/eh1;->switch:Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    if-eqz v1, :cond_b

    .line 21
    :cond_9
    iget-object p1, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/v4/eh1;->continue:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 22
    iget-object p1, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/v4/eh1;->return:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 23
    iget-object p1, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/v4/eh1;->abstract:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 24
    iget-object p1, p0, Landroid/support/v4/eh1;->static:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 25
    iget-object v0, p0, Landroid/support/v4/eh1;->switch:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 26
    iput-object p1, p0, Landroid/support/v4/eh1;->switch:Ljava/lang/CharSequence;

    .line 27
    invoke-direct {p0, p1}, Landroid/support/v4/eh1;->new(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v4/eh1;->throws:Z

    :cond_b
    return-void
.end method

.method private d(F)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/eh1;->case(F)V

    .line 2
    sget-boolean p1, Landroid/support/v4/eh1;->f:Z

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/support/v4/eh1;->abstract:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/eh1;->default:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Landroid/support/v4/eh1;->this()V

    .line 4
    :cond_1
    iget-object p1, p0, Landroid/support/v4/eh1;->do:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private static default(FFFLandroid/view/animation/Interpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    sub-float/2addr p1, p0

    mul-float p2, p2, p1

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method private static do(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 5
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private else()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->extends:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/support/v4/eh1;->extends:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private final()I
    .locals 3
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->strictfp:[I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v4/eh1;->class:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/eh1;->class:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private finally(I)Landroid/graphics/Typeface;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10103ac

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    throw v0
.end method

.method private for()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/eh1;->for:F

    invoke-direct {p0, v0}, Landroid/support/v4/eh1;->try(F)V

    return-void
.end method

.method private if()V
    .locals 11

    .line 1
    iget v0, p0, Landroid/support/v4/eh1;->continue:F

    .line 2
    iget v1, p0, Landroid/support/v4/eh1;->break:F

    invoke-direct {p0, v1}, Landroid/support/v4/eh1;->case(F)V

    .line 3
    iget-object v1, p0, Landroid/support/v4/eh1;->switch:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget v4, p0, Landroid/support/v4/eh1;->goto:I

    iget-boolean v5, p0, Landroid/support/v4/eh1;->throws:Z

    invoke-static {v4, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    .line 6
    iget-object v5, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    .line 7
    iget-object v9, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    sub-float/2addr v5, v9

    .line 8
    iget-object v9, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    iput v9, p0, Landroid/support/v4/eh1;->final:F

    goto :goto_1

    .line 9
    :cond_1
    iget-object v5, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v9, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, Landroid/support/v4/eh1;->final:F

    goto :goto_1

    .line 10
    :cond_2
    iget-object v5, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, Landroid/support/v4/eh1;->final:F

    :goto_1
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    .line 11
    iget-object v1, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/eh1;->throw:F

    goto :goto_2

    .line 12
    :cond_3
    iget-object v4, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Landroid/support/v4/eh1;->throw:F

    goto :goto_2

    .line 13
    :cond_4
    iget-object v4, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    sub-float/2addr v4, v1

    iput v4, p0, Landroid/support/v4/eh1;->throw:F

    .line 14
    :goto_2
    iget v1, p0, Landroid/support/v4/eh1;->this:F

    invoke-direct {p0, v1}, Landroid/support/v4/eh1;->case(F)V

    .line 15
    iget-object v1, p0, Landroid/support/v4/eh1;->switch:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v3, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 17
    :cond_5
    iget v1, p0, Landroid/support/v4/eh1;->else:I

    iget-boolean v2, p0, Landroid/support/v4/eh1;->throws:Z

    invoke-static {v1, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v7, :cond_7

    if-eq v2, v6, :cond_6

    .line 18
    iget-object v2, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v4, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v8

    .line 19
    iget-object v4, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v2, v4

    .line 20
    iget-object v4, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    iput v4, p0, Landroid/support/v4/eh1;->const:F

    goto :goto_3

    .line 21
    :cond_6
    iget-object v2, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v4, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v2, v4

    iput v2, p0, Landroid/support/v4/eh1;->const:F

    goto :goto_3

    .line 22
    :cond_7
    iget-object v2, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v4, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    iput v2, p0, Landroid/support/v4/eh1;->const:F

    :goto_3
    and-int/2addr v1, v5

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_8

    .line 23
    iget-object v1, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/eh1;->super:F

    goto :goto_4

    .line 24
    :cond_8
    iget-object v1, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iput v1, p0, Landroid/support/v4/eh1;->super:F

    goto :goto_4

    .line 25
    :cond_9
    iget-object v1, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v8

    sub-float/2addr v1, v3

    iput v1, p0, Landroid/support/v4/eh1;->super:F

    .line 26
    :goto_4
    invoke-direct {p0}, Landroid/support/v4/eh1;->else()V

    .line 27
    invoke-direct {p0, v0}, Landroid/support/v4/eh1;->d(F)V

    return-void
.end method

.method private new(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->do:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 2
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 3
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method private static private(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->case:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v4/eh1;->protected:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/v4/eh1;->default(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2
    iget-object v0, p0, Landroid/support/v4/eh1;->case:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/v4/eh1;->const:F

    iget v2, p0, Landroid/support/v4/eh1;->final:F

    iget-object v3, p0, Landroid/support/v4/eh1;->protected:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/v4/eh1;->default(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3
    iget-object v0, p0, Landroid/support/v4/eh1;->case:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v4/eh1;->protected:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/v4/eh1;->default(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4
    iget-object v0, p0, Landroid/support/v4/eh1;->case:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v4/eh1;->protected:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/v4/eh1;->default(FFFLandroid/view/animation/Interpolator;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private super()I
    .locals 3
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->strictfp:[I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v4/eh1;->catch:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/eh1;->catch:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private static switch(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private this()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->extends:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/eh1;->switch:Ljava/lang/CharSequence;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Landroid/support/v4/eh1;->try(F)V

    .line 4
    iget-object v0, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Landroid/support/v4/eh1;->package:F

    .line 5
    iget-object v0, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Landroid/support/v4/eh1;->private:F

    .line 6
    iget-object v0, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/v4/eh1;->switch:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 7
    iget v1, p0, Landroid/support/v4/eh1;->private:F

    iget v2, p0, Landroid/support/v4/eh1;->package:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/eh1;->extends:Landroid/graphics/Bitmap;

    .line 9
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Landroid/support/v4/eh1;->extends:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    iget-object v3, p0, Landroid/support/v4/eh1;->switch:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v0, v1

    iget-object v1, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 11
    iget-object v0, p0, Landroid/support/v4/eh1;->finally:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/eh1;->finally:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private try(F)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/eh1;->static(F)V

    .line 2
    iget v0, p0, Landroid/support/v4/eh1;->super:F

    iget v1, p0, Landroid/support/v4/eh1;->throw:F

    iget-object v2, p0, Landroid/support/v4/eh1;->protected:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/v4/eh1;->default(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/eh1;->while:F

    .line 3
    iget v0, p0, Landroid/support/v4/eh1;->const:F

    iget v1, p0, Landroid/support/v4/eh1;->final:F

    iget-object v2, p0, Landroid/support/v4/eh1;->protected:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/v4/eh1;->default(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/eh1;->import:F

    .line 4
    iget v0, p0, Landroid/support/v4/eh1;->this:F

    iget v1, p0, Landroid/support/v4/eh1;->break:F

    iget-object v2, p0, Landroid/support/v4/eh1;->transient:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/v4/eh1;->default(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/eh1;->d(F)V

    .line 5
    iget-object v0, p0, Landroid/support/v4/eh1;->class:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/v4/eh1;->catch:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    .line 7
    invoke-direct {p0}, Landroid/support/v4/eh1;->super()I

    move-result v1

    invoke-direct {p0}, Landroid/support/v4/eh1;->final()I

    move-result v2

    .line 8
    invoke-static {v1, v2, p1}, Landroid/support/v4/eh1;->do(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-direct {p0}, Landroid/support/v4/eh1;->final()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 10
    :goto_0
    iget-object v0, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/v4/eh1;->b:F

    iget v2, p0, Landroid/support/v4/eh1;->implements:F

    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v2, p1, v3}, Landroid/support/v4/eh1;->default(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iget v2, p0, Landroid/support/v4/eh1;->c:F

    iget v4, p0, Landroid/support/v4/eh1;->instanceof:F

    .line 12
    invoke-static {v2, v4, p1, v3}, Landroid/support/v4/eh1;->default(FFFLandroid/view/animation/Interpolator;)F

    move-result v2

    iget v4, p0, Landroid/support/v4/eh1;->d:F

    iget v5, p0, Landroid/support/v4/eh1;->synchronized:F

    .line 13
    invoke-static {v4, v5, p1, v3}, Landroid/support/v4/eh1;->default(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iget v4, p0, Landroid/support/v4/eh1;->e:I

    iget v5, p0, Landroid/support/v4/eh1;->a:I

    .line 14
    invoke-static {v4, v5, p1}, Landroid/support/v4/eh1;->do(IIF)I

    move-result p1

    .line 15
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 16
    iget-object p1, p0, Landroid/support/v4/eh1;->do:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/eh1;->this:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Landroid/support/v4/eh1;->this:F

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    :cond_0
    return-void
.end method

.method public abstract(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/eh1;->private(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/support/v4/eh1;->volatile:Z

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/eh1;->extends()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->public:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/support/v4/eh1;->public:Landroid/graphics/Typeface;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    :cond_0
    return-void
.end method

.method public break()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->class:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public c(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, v0, v1}, Landroid/support/v4/kh1;->if(FFF)F

    move-result p1

    .line 2
    iget v0, p0, Landroid/support/v4/eh1;->for:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3
    iput p1, p0, Landroid/support/v4/eh1;->for:F

    .line 4
    invoke-direct {p0}, Landroid/support/v4/eh1;->for()V

    :cond_0
    return-void
.end method

.method public catch()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/eh1;->goto:I

    return v0
.end method

.method public class()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/eh1;->break:F

    return v0
.end method

.method public const()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->native:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method public continue(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance:[I

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/eh1;->class:Landroid/content/res/ColorStateList;

    .line 4
    :cond_0
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget v2, p0, Landroid/support/v4/eh1;->break:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/eh1;->break:F

    .line 6
    :cond_1
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/eh1;->a:I

    .line 7
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v4/eh1;->instanceof:F

    .line 8
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v4/eh1;->synchronized:F

    .line 9
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v4/eh1;->implements:F

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 12
    invoke-direct {p0, p1}, Landroid/support/v4/eh1;->finally(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/eh1;->native:Landroid/graphics/Typeface;

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    return-void
.end method

.method public e(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/eh1;->protected:Landroid/view/animation/Interpolator;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    return-void
.end method

.method public extends()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/eh1;->try:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/eh1;->if:Z

    return-void
.end method

.method public final f([I)Z
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/eh1;->strictfp:[I

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/eh1;->throws()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->static:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/support/v4/eh1;->static:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/support/v4/eh1;->switch:Ljava/lang/CharSequence;

    .line 4
    invoke-direct {p0}, Landroid/support/v4/eh1;->else()V

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    :cond_1
    return-void
.end method

.method public goto(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/eh1;->switch:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroid/support/v4/eh1;->if:Z

    if-eqz v1, :cond_5

    .line 3
    iget v6, p0, Landroid/support/v4/eh1;->while:F

    .line 4
    iget v1, p0, Landroid/support/v4/eh1;->import:F

    .line 5
    iget-boolean v2, p0, Landroid/support/v4/eh1;->default:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/eh1;->extends:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 6
    iget v3, p0, Landroid/support/v4/eh1;->package:F

    iget v4, p0, Landroid/support/v4/eh1;->abstract:F

    mul-float v3, v3, v4

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget v4, p0, Landroid/support/v4/eh1;->abstract:F

    mul-float v3, v3, v4

    .line 8
    iget-object v4, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    :goto_1
    if-eqz v2, :cond_2

    add-float/2addr v1, v3

    :cond_2
    move v7, v1

    .line 9
    iget v1, p0, Landroid/support/v4/eh1;->abstract:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {p1, v1, v1, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    if-eqz v2, :cond_4

    .line 11
    iget-object v1, p0, Landroid/support/v4/eh1;->extends:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/support/v4/eh1;->finally:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 12
    :cond_4
    iget-object v3, p0, Landroid/support/v4/eh1;->switch:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, Landroid/support/v4/eh1;->interface:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 13
    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public h(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/eh1;->transient:Landroid/view/animation/Interpolator;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    return-void
.end method

.method public i(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/eh1;->public:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v4/eh1;->native:Landroid/graphics/Typeface;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    return-void
.end method

.method public implements(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance:[I

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/eh1;->catch:Landroid/content/res/ColorStateList;

    .line 4
    :cond_0
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget v2, p0, Landroid/support/v4/eh1;->this:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/eh1;->this:F

    .line 6
    :cond_1
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/eh1;->e:I

    .line 7
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v4/eh1;->c:F

    .line 8
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v4/eh1;->d:F

    .line 9
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v4/eh1;->b:F

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 12
    invoke-direct {p0, p1}, Landroid/support/v4/eh1;->finally(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/eh1;->public:Landroid/graphics/Typeface;

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    return-void
.end method

.method public import()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/eh1;->this:F

    return v0
.end method

.method public instanceof(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->catch:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/support/v4/eh1;->catch:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    :cond_0
    return-void
.end method

.method public interface(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/eh1;->break:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Landroid/support/v4/eh1;->break:F

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    :cond_0
    return-void
.end method

.method public native()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->public:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method public package()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/eh1;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/eh1;->if()V

    .line 3
    invoke-direct {p0}, Landroid/support/v4/eh1;->for()V

    :cond_0
    return-void
.end method

.method public protected(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->native:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/support/v4/eh1;->native:Landroid/graphics/Typeface;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    :cond_0
    return-void
.end method

.method public public()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/eh1;->for:F

    return v0
.end method

.method public return()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->static:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public strictfp(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->class:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/support/v4/eh1;->class:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    :cond_0
    return-void
.end method

.method public synchronized(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/eh1;->else:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/support/v4/eh1;->else:I

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    :cond_0
    return-void
.end method

.method public throw()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->catch:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final throws()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->class:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/eh1;->catch:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public transient(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/eh1;->private(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/eh1;->new:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/support/v4/eh1;->volatile:Z

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/eh1;->extends()V

    :cond_0
    return-void
.end method

.method public volatile(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/eh1;->goto:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/support/v4/eh1;->goto:I

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/eh1;->package()V

    :cond_0
    return-void
.end method

.method public while()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/eh1;->else:I

    return v0
.end method
