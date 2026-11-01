.class public Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$QQFaceViewListener;,
        Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;,
        Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/String; = "QMUIQQFaceView"

.field private static final q:Ljava/lang/String; = "..."


# instance fields
.field private a:I

.field private abstract:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;

.field private b:I

.field private break:I

.field private c:I

.field private case:Landroid/graphics/Paint;

.field private catch:I

.field private class:I

.field private const:I

.field private continue:Z

.field private d:Z

.field private default:I

.field private do:Ljava/lang/CharSequence;

.field private e:I

.field private else:I

.field private extends:I

.field private f:I

.field private final:Z

.field private finally:I

.field private for:Lcom/qmuiteam/qmui/qqface/do;

.field private g:I

.field private goto:I

.field private h:I

.field private i:I

.field private if:Lcom/qmuiteam/qmui/qqface/do$for;

.field private implements:I

.field private import:Landroid/graphics/Rect;

.field public instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

.field private interface:Landroid/graphics/Typeface;

.field private j:I

.field private k:Z

.field private l:Landroid/support/v4/yh1;

.field private m:I

.field private n:Z

.field private native:Ljava/lang/String;

.field private new:Z

.field private o:I

.field private package:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$QQFaceViewListener;

.field private private:I

.field private protected:I

.field private public:I

.field private return:I

.field private static:I

.field private strictfp:Ljava/lang/Runnable;

.field private super:I

.field private switch:Landroid/text/TextUtils$TruncateAt;

.field private synchronized:Z

.field private this:I

.field private throw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/qmuiteam/qmui/qqface/do$if;",
            "Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;",
            ">;"
        }
    .end annotation
.end field

.field private throws:Z

.field private transient:I

.field private try:Landroid/text/TextPaint;

.field private volatile:Z

.field private while:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUIQQFaceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->new:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this:I

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch:I

    const v3, 0x7fffffff

    .line 7
    iput v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->const:I

    .line 8
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->final:Z

    .line 9
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    .line 10
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throw:Ljava/util/HashMap;

    .line 11
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->while:Z

    .line 12
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->import:Landroid/graphics/Rect;

    .line 13
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->return:I

    .line 14
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    .line 15
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    .line 16
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws:Z

    .line 17
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    .line 18
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->extends:I

    .line 19
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->finally:I

    .line 20
    iput v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->private:I

    const/4 v3, 0x0

    .line 21
    iput-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->abstract:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;

    .line 22
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->continue:Z

    .line 23
    iput-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->strictfp:Ljava/lang/Runnable;

    .line 24
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->volatile:Z

    .line 25
    iput-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->interface:Landroid/graphics/Typeface;

    .line 26
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->protected:I

    .line 27
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    .line 28
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->implements:I

    .line 29
    iput-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    .line 30
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->synchronized:Z

    .line 31
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    .line 32
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:I

    .line 33
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c:I

    .line 34
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d:Z

    .line 35
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:I

    .line 36
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:I

    .line 37
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g:I

    .line 38
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:Z

    .line 39
    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    .line 40
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n:Z

    .line 41
    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView:[I

    invoke-virtual {v4, p2, v5, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    .line 43
    invoke-static {p1, p3}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result v4

    neg-int v4, v4

    iput v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->finally:I

    .line 44
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_textSize:I

    const/16 v5, 0xe

    .line 45
    invoke-static {p1, v5}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result p1

    .line 46
    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->else:I

    .line 47
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_textColor:I

    const/high16 v4, -0x1000000

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->goto:I

    .line 48
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_singleLine:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->final:Z

    .line 49
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_maxLines:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->const:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->const:I

    .line 50
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_lineSpacingExtra:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setLineSpace(I)V

    .line 52
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_ellipsize:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eq p1, v0, :cond_2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    .line 54
    :goto_0
    iput-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 55
    :cond_1
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 56
    :cond_2
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    .line 57
    :goto_1
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_maxWidth:I

    iget p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->private:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->private:I

    .line 58
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_qmui_special_drawable_padding:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    .line 59
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p1}, Landroid/support/v4/kh1;->case(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 61
    new-instance p3, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$do;

    invoke-direct {p3, p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$do;-><init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->strictfp:Ljava/lang/Runnable;

    .line 62
    :cond_3
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_qmui_more_action_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->native:Ljava/lang/String;

    .line 63
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_qmui_more_action_color:I

    iget p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->goto:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->public:I

    .line 64
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    .line 66
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 67
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->else:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 68
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->goto:I

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 69
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    .line 70
    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->public()V

    .line 71
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->case:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->case:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private break(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V
    .locals 7
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    if-nez p2, :cond_4

    if-nez p3, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    if-nez p5, :cond_3

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    iget p5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    mul-int/lit8 p5, p5, 0x2

    goto :goto_2

    :cond_3
    :goto_1
    iget p5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    :goto_2
    add-int/2addr p3, p5

    goto :goto_4

    :cond_4
    :goto_3
    iget p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch:I

    :goto_4
    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 p5, 0x0

    if-eqz p2, :cond_6

    .line 3
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    iget p6, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch:I

    sub-int/2addr p2, p6

    div-int/lit8 p2, p2, 0x2

    add-int v1, p2, p6

    .line 4
    invoke-virtual {v0, p5, p2, p6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5

    :cond_6
    if-eqz p6, :cond_7

    .line 5
    iget p5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    .line 6
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p6

    .line 8
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    if-le p6, v1, :cond_8

    int-to-float v2, v1

    int-to-float p6, p6

    div-float/2addr v2, p6

    int-to-float p2, p2

    mul-float p2, p2, v2

    float-to-int p2, p2

    move p6, v1

    :cond_8
    sub-int/2addr v1, p6

    .line 9
    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, p5

    add-int/2addr p6, v1

    .line 10
    invoke-virtual {v0, p5, v1, p2, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    const/4 p5, 0x1

    if-le p4, p5, :cond_9

    sub-int/2addr p4, p5

    .line 12
    iget p5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    iget p6, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this:I

    add-int/2addr p5, p6

    mul-int p4, p4, p5

    add-int/2addr p2, p4

    .line 13
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget p4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    int-to-float p4, p4

    int-to-float p2, p2

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    iget-boolean p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:Landroid/support/v4/yh1;

    if-eqz p2, :cond_b

    .line 16
    invoke-virtual {p2}, Landroid/support/v4/yh1;->try()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:Landroid/support/v4/yh1;

    invoke-virtual {p2}, Landroid/support/v4/yh1;->for()I

    move-result p2

    goto :goto_6

    :cond_a
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:Landroid/support/v4/yh1;

    .line 17
    invoke-virtual {p2}, Landroid/support/v4/yh1;->do()I

    move-result p2

    :goto_6
    if-eqz p2, :cond_b

    .line 18
    iget-object p4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->case:Landroid/graphics/Paint;

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p3

    .line 19
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    int-to-float v5, p2

    iget-object v6, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->case:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 20
    :cond_b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private case(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/qqface/do$if;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v1, p2, v1

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 3
    iget-boolean v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->continue:Z

    if-eqz v3, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->const:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v4, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    goto/16 :goto_6

    .line 5
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/qqface/do$if;

    .line 6
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/do$if;->catch()Lcom/qmuiteam/qmui/qqface/do$new;

    move-result-object v4

    sget-object v5, Lcom/qmuiteam/qmui/qqface/do$new;->DRAWABLE:Lcom/qmuiteam/qmui/qqface/do$new;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    .line 7
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch:I

    add-int v5, v3, v4

    if-le v5, v1, :cond_2

    .line 8
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->final(I)V

    .line 9
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    goto :goto_1

    :cond_2
    add-int v5, v3, v4

    if-ne v5, v1, :cond_3

    .line 10
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->final(I)V

    goto :goto_1

    :cond_3
    add-int/2addr v3, v4

    .line 11
    iput v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    :goto_1
    sub-int v3, v1, v0

    .line 12
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch:I

    if-ge v3, v4, :cond_d

    .line 13
    iput-boolean v6, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->continue:Z

    goto/16 :goto_5

    .line 14
    :cond_4
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/do$if;->catch()Lcom/qmuiteam/qmui/qqface/do$new;

    move-result-object v4

    sget-object v5, Lcom/qmuiteam/qmui/qqface/do$new;->TEXT:Lcom/qmuiteam/qmui/qqface/do$new;

    if-ne v4, v5, :cond_5

    .line 15
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/do$if;->this()Ljava/lang/CharSequence;

    move-result-object v3

    .line 16
    invoke-direct {p0, v3, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->return(Ljava/lang/CharSequence;II)V

    goto/16 :goto_5

    .line 17
    :cond_5
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/do$if;->catch()Lcom/qmuiteam/qmui/qqface/do$new;

    move-result-object v4

    sget-object v5, Lcom/qmuiteam/qmui/qqface/do$new;->SPAN:Lcom/qmuiteam/qmui/qqface/do$new;

    if-ne v4, v5, :cond_7

    .line 18
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/do$if;->case()Lcom/qmuiteam/qmui/qqface/do$for;

    move-result-object v4

    .line 19
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/do$if;->break()Landroid/support/v4/yh1;

    move-result-object v3

    if-eqz v4, :cond_d

    .line 20
    invoke-virtual {v4}, Lcom/qmuiteam/qmui/qqface/do$for;->if()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    if-nez v3, :cond_6

    .line 21
    invoke-virtual {v4}, Lcom/qmuiteam/qmui/qqface/do$for;->if()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->case(Ljava/util/List;I)V

    goto :goto_5

    .line 22
    :cond_6
    invoke-virtual {v4}, Lcom/qmuiteam/qmui/qqface/do$for;->if()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->case(Ljava/util/List;I)V

    goto :goto_5

    .line 23
    :cond_7
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/do$if;->catch()Lcom/qmuiteam/qmui/qqface/do$new;

    move-result-object v4

    sget-object v5, Lcom/qmuiteam/qmui/qqface/do$new;->NEXTLINE:Lcom/qmuiteam/qmui/qqface/do$new;

    if-ne v4, v5, :cond_8

    .line 24
    invoke-direct {p0, v0, v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super(IZ)V

    goto :goto_5

    .line 25
    :cond_8
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/do$if;->catch()Lcom/qmuiteam/qmui/qqface/do$new;

    move-result-object v4

    sget-object v5, Lcom/qmuiteam/qmui/qqface/do$new;->SPECIAL_BOUNDS_DRAWABLE:Lcom/qmuiteam/qmui/qqface/do$new;

    if-ne v4, v5, :cond_d

    .line 26
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/do$if;->goto()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-eqz v2, :cond_a

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-ne v2, v4, :cond_9

    goto :goto_2

    .line 29
    :cond_9
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    mul-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 30
    :cond_a
    :goto_2
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    :goto_3
    add-int/2addr v3, v4

    .line 31
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    add-int v5, v4, v3

    if-le v5, v1, :cond_b

    .line 32
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->final(I)V

    .line 33
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    goto :goto_4

    :cond_b
    add-int v5, v4, v3

    if-ne v5, v1, :cond_c

    .line 34
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->final(I)V

    goto :goto_4

    :cond_c
    add-int/2addr v4, v3

    .line 35
    iput v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    :goto_4
    sub-int v4, v1, v0

    if-ge v4, v3, :cond_d

    .line 36
    iput-boolean v6, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->continue:Z

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    :goto_6
    return-void
.end method

.method private catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V
    .locals 7

    if-le p4, p3, :cond_3

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p4, v0, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:Landroid/support/v4/yh1;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/yh1;->try()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:Landroid/support/v4/yh1;

    invoke-virtual {v0}, Landroid/support/v4/yh1;->for()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:Landroid/support/v4/yh1;

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/yh1;->do()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->case:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    int-to-float v2, v0

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:I

    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->class:I

    sub-int v4, v1, v3

    int-to-float v4, v4

    add-int/2addr v0, p5

    int-to-float p5, v0

    sub-int/2addr v1, v3

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    add-int/2addr v1, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->case:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v4

    move v4, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7
    :cond_2
    iget p5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    int-to-float v4, p5

    iget p5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:I

    int-to-float v5, p5

    iget-object v6, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private default(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    move v4, p4

    .line 2
    :goto_0
    array-length v1, p3

    if-ge p4, v1, :cond_1

    int-to-float v1, v0

    .line 3
    aget v2, p3, p4

    add-float/2addr v1, v2

    int-to-float v2, p6

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 4
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    sub-int v6, p6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    sub-int v0, p6, p5

    .line 5
    invoke-direct {p0, p5, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package(II)V

    .line 6
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    move v4, p4

    :cond_0
    int-to-float v0, v0

    .line 7
    aget v1, p3, p4

    add-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    array-length p4, p3

    if-ge v4, p4, :cond_2

    .line 9
    array-length v5, p3

    iget p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    sub-int v6, v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 10
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    :cond_2
    return-void
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->abstract:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;

    return-object p0
.end method

.method private else(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    .line 2
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->final:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    .line 5
    :cond_1
    :goto_0
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    if-le p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws:Z

    return-void
.end method

.method private extends(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws:Z

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    if-ne v0, v1, :cond_3

    .line 4
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->implements:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    sub-int/2addr v0, p1

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 6
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    sub-int/2addr v0, p1

    sub-int/2addr p2, v0

    add-int/2addr p2, p1

    iput p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto :goto_0

    .line 7
    :cond_2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto :goto_0

    .line 8
    :cond_3
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    :goto_0
    return-void
.end method

.method private final(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super(IZ)V

    return-void
.end method

.method public static synthetic for(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this:I

    return p0
.end method

.method private getMiddleEllipsizeLine()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 2
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3
    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0
.end method

.method private goto(Landroid/graphics/Canvas;Ljava/util/List;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/qqface/do$if;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    add-int v12, v10, v11

    .line 2
    iget-boolean v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws:Z

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x3

    int-to-float v4, v11

    .line 3
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->class:I

    int-to-float v5, v0

    iget-object v6, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    const-string v1, "..."

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 4
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_10

    move-object/from16 v15, p2

    .line 5
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/qqface/do$if;

    .line 6
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/do$if;->catch()Lcom/qmuiteam/qmui/qqface/do$new;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/qmuiteam/qmui/qqface/do$new;->DRAWABLE:Lcom/qmuiteam/qmui/qqface/do$new;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/do$if;->else()I

    move-result v2

    const/4 v4, 0x0

    if-nez v14, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne v14, v0, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v4

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIZZ)V

    goto/16 :goto_6

    .line 9
    :cond_3
    sget-object v2, Lcom/qmuiteam/qmui/qqface/do$new;->SPECIAL_BOUNDS_DRAWABLE:Lcom/qmuiteam/qmui/qqface/do$new;

    if-ne v1, v2, :cond_6

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/do$if;->goto()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v14, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne v14, v0, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v4

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIZZ)V

    goto/16 :goto_6

    .line 11
    :cond_6
    sget-object v2, Lcom/qmuiteam/qmui/qqface/do$new;->TEXT:Lcom/qmuiteam/qmui/qqface/do$new;

    if-ne v1, v2, :cond_7

    .line 12
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/do$if;->this()Ljava/lang/CharSequence;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v3, v0, [F

    .line 14
    iget-object v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v11

    move v6, v12

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    goto/16 :goto_6

    .line 16
    :cond_7
    sget-object v2, Lcom/qmuiteam/qmui/qqface/do$new;->SPAN:Lcom/qmuiteam/qmui/qqface/do$new;

    if-ne v1, v2, :cond_d

    .line 17
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/do$if;->case()Lcom/qmuiteam/qmui/qqface/do$for;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/do$if;->break()Landroid/support/v4/yh1;

    move-result-object v2

    iput-object v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:Landroid/support/v4/yh1;

    .line 19
    iget-object v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throw:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    if-eqz v1, :cond_f

    .line 20
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/qqface/do$for;->if()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 21
    iget-object v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:Landroid/support/v4/yh1;

    if-nez v2, :cond_8

    .line 22
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/qqface/do$for;->if()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v9, v0, v10}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->goto(Landroid/graphics/Canvas;Ljava/util/List;I)V

    goto/16 :goto_6

    .line 23
    :cond_8
    iput-boolean v3, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:Z

    if-eqz v0, :cond_9

    .line 24
    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    iget v3, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    invoke-virtual {v0, v2, v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case(II)V

    .line 25
    :cond_9
    iget-object v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:Landroid/support/v4/yh1;

    invoke-virtual {v2}, Landroid/support/v4/yh1;->try()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:Landroid/support/v4/yh1;

    .line 26
    invoke-virtual {v2}, Landroid/support/v4/yh1;->new()I

    move-result v2

    goto :goto_5

    :cond_a
    iget-object v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:Landroid/support/v4/yh1;

    .line 27
    invoke-virtual {v2}, Landroid/support/v4/yh1;->if()I

    move-result v2

    .line 28
    :goto_5
    iget-object v3, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    if-nez v2, :cond_b

    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->goto:I

    :cond_b
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 29
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/qqface/do$for;->if()Ljava/util/List;

    move-result-object v1

    invoke-direct {v8, v9, v1, v10}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->goto(Landroid/graphics/Canvas;Ljava/util/List;I)V

    .line 30
    iget-object v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->goto:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz v0, :cond_c

    .line 31
    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->new(II)V

    .line 32
    :cond_c
    iput-boolean v13, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:Z

    goto :goto_6

    .line 33
    :cond_d
    sget-object v0, Lcom/qmuiteam/qmui/qqface/do$new;->NEXTLINE:Lcom/qmuiteam/qmui/qqface/do$new;

    if-ne v1, v0, :cond_f

    .line 34
    iget v5, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->return:I

    add-int/2addr v0, v5

    .line 35
    iget-boolean v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws:Z

    if-eqz v1, :cond_e

    iget-object v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_e

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    sub-int v0, v12, v0

    if-gt v1, v0, :cond_e

    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    if-ne v0, v1, :cond_e

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v2, "..."

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 37
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    .line 38
    invoke-direct {v8, v9, v12}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this(Landroid/graphics/Canvas;I)V

    return-void

    .line 39
    :cond_e
    invoke-direct {v8, v11, v3, v10}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->private(IZI)V

    :cond_f
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    return p0
.end method

.method private import()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if:Lcom/qmuiteam/qmui/qqface/do$for;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/do$for;->if()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if:Lcom/qmuiteam/qmui/qqface/do$for;

    .line 3
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/do$for;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private package(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->private(IZI)V

    return-void
.end method

.method private private(IZI)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    if-eqz p2, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne p2, v1, :cond_1

    :cond_0
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->protected:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this:I

    add-int/2addr p2, v1

    .line 2
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    .line 3
    iget-boolean v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws:Z

    if-eqz v3, :cond_6

    .line 4
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v4, :cond_2

    .line 5
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    iget v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    if-le v1, v4, :cond_5

    .line 6
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    add-int/2addr v4, p2

    add-int/2addr v1, v4

    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:I

    goto :goto_1

    .line 7
    :cond_2
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v1, :cond_4

    .line 8
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_5

    .line 9
    :cond_3
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    add-int/2addr v4, p2

    add-int/2addr v1, v4

    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:I

    goto :goto_1

    .line 10
    :cond_4
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    add-int/2addr v4, p2

    add-int/2addr v1, v4

    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:I

    :cond_5
    :goto_1
    if-eqz v3, :cond_7

    .line 11
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v3, p2, :cond_7

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    if-le p2, v1, :cond_7

    const/16 p2, 0xa

    new-array p2, p2, [Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    .line 13
    invoke-virtual {v1}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const/4 v0, 0x2

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x3

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x7

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/16 v0, 0x8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->do:Ljava/lang/CharSequence;

    aput-object v1, p2, v0

    const-string v0, "QMUIQQFaceView"

    const-string v1, "draw outside the visible height, the ellipsize is inaccurate: mEllipsize = %s; mCurrentDrawLine = %d; mNeedDrawLine = %d;viewWidth = %d; viewHeight = %d; paddingLeft = %d; paddingRight = %d; paddingTop = %d; paddingBottom = %d; text = %s"

    .line 16
    invoke-static {v0, v1, p2}, Lcom/qmuiteam/qmui/QMUILog;->do(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 17
    :cond_6
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:I

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:I

    .line 18
    :cond_7
    :goto_2
    invoke-direct {p0, p1, p3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->extends(II)V

    return-void
.end method

.method private public()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->native:Ljava/lang/String;

    invoke-static {v0}, Landroid/support/v4/kh1;->case(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->return:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->native:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->return:I

    :goto_0
    return-void
.end method

.method private return(Ljava/lang/CharSequence;II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    new-array v4, v3, [F

    .line 2
    iget-object v5, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    sub-int v5, v2, v1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_3

    int-to-float v10, v5

    .line 4
    aget v11, v4, v9

    const/4 v12, 0x1

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 5
    iput-boolean v12, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->continue:Z

    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    const-wide/16 v13, 0x7d0

    cmp-long v15, v10, v13

    if-lez v15, :cond_1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v8

    .line 7
    iget v4, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    const/4 v4, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "QMUIQQFaceView"

    const-string v2, "measureText: text = %s, mCurrentCalWidth = %d, widthStart = %d, widthEnd = %d"

    .line 9
    invoke-static {v1, v2, v3}, Lcom/qmuiteam/qmui/QMUILog;->do(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iput-boolean v12, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->continue:Z

    goto :goto_1

    .line 11
    :cond_1
    iget v10, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    int-to-float v10, v10

    aget v11, v4, v9

    add-float/2addr v10, v11

    int-to-float v11, v2

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 12
    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->final(I)V

    .line 13
    :cond_2
    iget v10, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    int-to-double v10, v10

    aget v12, v4, v9

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    double-to-int v10, v10

    iput v10, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private setContentCalMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c:I

    return-void
.end method

.method private static(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIZZ)V
    .locals 12
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v9, p0

    move/from16 v7, p4

    move/from16 v8, p5

    const/4 v0, -0x1

    move v6, p2

    if-ne v6, v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-nez p6, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    :goto_1
    add-int/2addr v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch:I

    :goto_3
    move v10, v0

    .line 2
    iget-boolean v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws:Z

    if-eqz v0, :cond_15

    .line 3
    iget-object v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_8

    .line 4
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    iget v2, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    sub-int v3, v1, v2

    if-le v0, v3, :cond_4

    sub-int v4, v2, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 5
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    goto/16 :goto_4

    :cond_4
    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_6

    .line 6
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int v1, v10, v0

    if-le v1, v8, :cond_5

    sub-int v0, v8, v7

    .line 7
    invoke-direct {p0, v7, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package(II)V

    .line 8
    invoke-direct/range {p0 .. p7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIZZ)V

    goto/16 :goto_4

    :cond_5
    add-int/2addr v0, v10

    .line 9
    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto/16 :goto_4

    .line 10
    :cond_6
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    add-int/2addr v0, v1

    .line 11
    iget v2, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int v3, v10, v2

    if-ge v3, v0, :cond_7

    add-int/2addr v2, v10

    .line 12
    iput v2, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto/16 :goto_4

    :cond_7
    add-int v0, v7, v1

    sub-int v1, v8, v7

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package(II)V

    goto/16 :goto_4

    .line 14
    :cond_8
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_e

    .line 15
    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->getMiddleEllipsizeLine()I

    move-result v11

    .line 16
    iget v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    if-ge v4, v11, :cond_a

    .line 17
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v0, v10

    if-le v0, v8, :cond_9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    goto/16 :goto_4

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V

    .line 20
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v0, v10

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto/16 :goto_4

    :cond_a
    if-ne v4, v11, :cond_d

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v5, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    div-int/lit8 v1, v5, 0x2

    sub-int/2addr v0, v1

    .line 22
    iget-boolean v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n:Z

    if-eqz v1, :cond_b

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v11

    move/from16 v7, p6

    move/from16 v8, p7

    .line 23
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throw(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    goto/16 :goto_4

    .line 24
    :cond_b
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v1, v10

    if-gt v1, v0, :cond_c

    .line 25
    iget v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V

    .line 26
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v0, v10

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto/16 :goto_4

    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v2, "..."

    move-object v0, p0

    move-object v1, p1

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 28
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    add-int/2addr v0, v1

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v11

    move/from16 v7, p6

    move/from16 v8, p7

    .line 30
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throw(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    goto/16 :goto_4

    :cond_d
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v11

    move/from16 v7, p6

    move/from16 v8, p7

    .line 31
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throw(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    goto/16 :goto_4

    .line 32
    :cond_e
    iget v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    if-ne v4, v1, :cond_13

    .line 33
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->return:I

    .line 34
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v2, :cond_f

    .line 35
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    add-int/2addr v1, v0

    .line 36
    :cond_f
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int v2, v10, v0

    sub-int v1, v8, v1

    if-lt v2, v1, :cond_12

    add-int/2addr v0, v10

    if-ne v0, v1, :cond_10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V

    .line 38
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v0, v10

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    .line 39
    :cond_10
    iget-object v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_11

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 40
    iget v5, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    const-string v2, "..."

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 41
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    add-int/2addr v0, v1

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    :cond_11
    move-object v2, p1

    .line 42
    invoke-direct {p0, p1, v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this(Landroid/graphics/Canvas;I)V

    sub-int v0, v8, v7

    .line 43
    invoke-direct {p0, v7, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package(II)V

    goto/16 :goto_4

    :cond_12
    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    .line 44
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V

    .line 45
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v0, v10

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto :goto_4

    :cond_13
    move-object v2, p1

    if-ge v4, v1, :cond_16

    .line 46
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v0, v10

    if-le v0, v8, :cond_14

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 47
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    goto :goto_4

    :cond_14
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V

    .line 49
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v0, v10

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto :goto_4

    :cond_15
    move-object v2, p1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 50
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    :cond_16
    :goto_4
    return-void
.end method

.method private super(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:I

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setContentCalMaxWidth(I)V

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    if-nez p1, :cond_0

    .line 5
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->extends:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->extends:I

    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, p2, :cond_1

    .line 7
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:I

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->const:I

    if-gt p1, p2, :cond_1

    .line 8
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->extends:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->extends:I

    :cond_1
    :goto_0
    return-void
.end method

.method private switch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V
    .locals 13

    move-object v8, p0

    move-object/from16 v6, p3

    move/from16 v7, p5

    move/from16 v9, p6

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move/from16 v4, p4

    if-lt v4, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws:Z

    if-eqz v0, :cond_16

    .line 3
    iget-object v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_6

    .line 4
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    sub-int v3, v1, v2

    if-le v0, v3, :cond_1

    .line 5
    invoke-direct/range {p0 .. p6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    goto/16 :goto_7

    :cond_1
    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 6
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v4, v0, :cond_17

    .line 7
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    int-to-float v1, v0

    aget v2, v6, v4

    add-float/2addr v1, v2

    int-to-float v2, v9

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    int-to-float v0, v0

    .line 8
    aget v1, v6, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, v9, v7

    .line 9
    invoke-direct {p0, v7, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    return-void

    .line 11
    :cond_3
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    add-int/2addr v0, v1

    .line 12
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v4, v1, :cond_17

    .line 13
    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    int-to-float v2, v1

    aget v3, v6, v4

    add-float/2addr v2, v3

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    int-to-float v1, v1

    .line 14
    aget v2, v6, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v4, 0x1

    if-le v1, v0, :cond_5

    goto :goto_2

    :cond_5
    move v4, v2

    .line 15
    :goto_2
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    add-int/2addr v0, v7

    sub-int v1, v9, v7

    invoke-direct {p0, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    return-void

    .line 17
    :cond_6
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_e

    .line 18
    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->getMiddleEllipsizeLine()I

    move-result v10

    .line 19
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    if-ge v0, v10, :cond_9

    .line 20
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    move v10, v0

    move v11, v4

    .line 21
    :goto_3
    array-length v0, v6

    if-ge v11, v0, :cond_8

    int-to-float v0, v10

    .line 22
    aget v1, v6, v11

    add-float/2addr v1, v0

    int-to-float v2, v9

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    .line 23
    aget v1, v6, v11

    add-float/2addr v0, v1

    float-to-int v10, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 24
    :cond_7
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    sub-int v5, v9, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    sub-int v0, v9, v7

    .line 25
    invoke-direct {p0, v7, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package(II)V

    move-object v0, p0

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    return-void

    .line 27
    :cond_8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    sub-int v6, v10, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 28
    iput v10, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto/16 :goto_7

    :cond_9
    if-ne v0, v10, :cond_d

    .line 29
    iget-boolean v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n:Z

    if-eqz v0, :cond_a

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v5, v10

    move/from16 v6, p5

    move/from16 v7, p6

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->while(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIIII)V

    goto/16 :goto_7

    :cond_a
    add-int v0, v9, v7

    .line 31
    div-int/lit8 v0, v0, 0x2

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 32
    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    move v11, v1

    move v12, v4

    .line 33
    :goto_4
    array-length v1, v6

    if-ge v12, v1, :cond_c

    int-to-float v1, v11

    .line 34
    aget v2, v6, v12

    add-float/2addr v2, v1

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_b

    .line 35
    aget v2, v6, v12

    add-float/2addr v1, v2

    float-to-int v11, v1

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 36
    :cond_b
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    sub-int v5, v11, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 37
    iput v11, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 38
    iget v5, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    const-string v2, "..."

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 39
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move v4, v12

    move v5, v10

    move/from16 v6, p5

    move/from16 v7, p6

    .line 41
    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->while(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIIII)V

    return-void

    .line 42
    :cond_c
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    sub-int v6, v11, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 43
    iput v11, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto/16 :goto_7

    :cond_d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v5, v10

    move/from16 v6, p5

    move/from16 v7, p6

    .line 44
    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->while(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIIII)V

    goto/16 :goto_7

    .line 45
    :cond_e
    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    if-ge v1, v2, :cond_11

    .line 46
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    move v10, v0

    move v11, v4

    .line 47
    :goto_5
    array-length v0, v6

    if-ge v11, v0, :cond_10

    int-to-float v0, v10

    .line 48
    aget v1, v6, v11

    add-float/2addr v1, v0

    int-to-float v2, v9

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    .line 49
    aget v1, v6, v11

    add-float/2addr v0, v1

    float-to-int v10, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 50
    :cond_f
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    sub-int v5, v9, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    sub-int v0, v9, v7

    .line 51
    invoke-direct {p0, v7, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package(II)V

    move-object v0, p0

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    return-void

    .line 53
    :cond_10
    array-length v5, v6

    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    sub-int v6, v10, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 54
    iput v10, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto/16 :goto_7

    :cond_11
    if-ne v1, v2, :cond_17

    .line 55
    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->return:I

    .line 56
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v2, :cond_12

    .line 57
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    add-int/2addr v1, v0

    .line 58
    :cond_12
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    move v10, v0

    move v5, v4

    .line 59
    :goto_6
    array-length v0, v6

    if-ge v5, v0, :cond_15

    int-to-float v0, v10

    .line 60
    aget v2, v6, v5

    add-float/2addr v2, v0

    sub-int v3, v9, v1

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_13

    .line 61
    aget v2, v6, v5

    add-float/2addr v0, v2

    float-to-int v10, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 62
    :cond_13
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    sub-int v6, v10, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 63
    iput v10, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    .line 64
    iget-object v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_14

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 65
    iget v5, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    const-string v2, "..."

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 66
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    :cond_14
    move-object v1, p1

    .line 67
    invoke-direct {p0, p1, v9}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this(Landroid/graphics/Canvas;I)V

    sub-int v0, v9, v7

    .line 68
    invoke-direct {p0, v7, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package(II)V

    return-void

    :cond_15
    move-object v1, p1

    .line 69
    array-length v5, v6

    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    sub-int v6, v10, v0

    move-object v0, p0

    move-object v2, p2

    move/from16 v3, p4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 70
    iput v10, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto :goto_7

    :cond_16
    move-object v1, p1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    :cond_17
    :goto_7
    return-void
.end method

.method private this(Landroid/graphics/Canvas;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->native:Ljava/lang/String;

    invoke-static {v0}, Landroid/support/v4/kh1;->case(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->public:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 5
    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this:I

    add-int/2addr v2, v3

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->import:Landroid/graphics/Rect;

    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 7
    iget-object v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->native:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    int-to-float v8, p2

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:I

    int-to-float v9, p2

    iget-object v10, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 8
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->goto:I

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    :cond_1
    return-void
.end method

.method private throw(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V
    .locals 11

    move-object v9, p0

    move v5, p4

    move/from16 v6, p5

    if-eqz p2, :cond_0

    .line 1
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch:I

    goto :goto_2

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-nez p7, :cond_2

    if-eqz p8, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    :goto_1
    add-int/2addr v0, v1

    .line 2
    :goto_2
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 3
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    sub-int v4, p6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    return-void

    .line 4
    :cond_3
    iget v3, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    sub-int v3, v3, p6

    .line 5
    iget v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    sub-int v7, v6, v4

    sub-int v8, v1, v5

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    .line 6
    iget v10, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    sub-int/2addr v10, v3

    if-lez v7, :cond_4

    sub-int/2addr v10, v8

    :cond_4
    if-lez v7, :cond_5

    sub-int v3, v6, v7

    goto :goto_3

    :cond_5
    sub-int v3, v6, v4

    sub-int v3, v1, v3

    .line 7
    :goto_3
    iget v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    if-ge v4, v10, :cond_7

    .line 8
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int v2, v0, v1

    if-le v2, v6, :cond_6

    sub-int v0, v6, v5

    .line 9
    invoke-direct {p0, p4, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package(II)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIZZ)V

    goto :goto_5

    :cond_6
    add-int/2addr v1, v0

    .line 11
    iput v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto :goto_5

    :cond_7
    if-ne v4, v10, :cond_a

    .line 12
    iget v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int v7, v0, v4

    if-gt v7, v3, :cond_8

    add-int/2addr v4, v0

    .line 13
    iput v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    if-lt v4, v3, :cond_9

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    .line 14
    :goto_4
    iput v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    .line 15
    iput v2, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    .line 16
    iput v10, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    if-eqz v8, :cond_b

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIZZ)V

    goto :goto_5

    :cond_a
    sub-int v4, p6, v10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    :cond_b
    :goto_5
    return-void
.end method

.method private throws(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V
    .locals 9
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v7, p0

    move v0, p5

    move v1, p6

    if-nez p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-nez p7, :cond_2

    if-eqz p8, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    iget v3, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    :goto_1
    add-int/2addr v2, v3

    goto :goto_3

    :cond_3
    :goto_2
    iget v2, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch:I

    :goto_3
    move v8, v2

    .line 2
    iget v2, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v2, v8

    if-le v2, v1, :cond_4

    sub-int/2addr v1, v0

    .line 3
    invoke-direct {p0, p5, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package(II)V

    .line 4
    :cond_4
    iget v0, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    add-int v4, v0, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V

    .line 5
    iget v0, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v0, v8

    iput v0, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    return-void
.end method

.method private while(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIIII)V
    .locals 11

    move-object v8, p0

    move-object v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v4, p4

    if-lt v4, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    return-void

    .line 4
    :cond_1
    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    sub-int v2, v2, p5

    .line 5
    iget v5, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    sub-int v9, v7, v5

    sub-int v10, v0, v6

    sub-int/2addr v9, v10

    .line 6
    iget v10, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    sub-int/2addr v10, v2

    if-lez v9, :cond_2

    add-int/lit8 v10, v10, -0x1

    :cond_2
    if-lez v9, :cond_3

    sub-int v0, v7, v9

    goto :goto_0

    :cond_3
    sub-int v2, v7, v5

    sub-int/2addr v0, v2

    .line 7
    :goto_0
    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    if-ge v2, v10, :cond_5

    .line 8
    :goto_1
    array-length v0, v3

    if-ge v4, v0, :cond_9

    .line 9
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    int-to-float v1, v0

    aget v2, v3, v4

    add-float/2addr v1, v2

    int-to-float v2, v7

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    int-to-float v0, v0

    .line 10
    aget v1, v3, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    sub-int v0, v6, v7

    .line 11
    invoke-direct {p0, v6, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->while(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIIII)V

    return-void

    :cond_5
    if-ne v2, v10, :cond_8

    .line 13
    :goto_2
    array-length v2, v3

    if-ge v4, v2, :cond_9

    .line 14
    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    int-to-float v5, v2

    aget v9, v3, v4

    add-float/2addr v5, v9

    int-to-float v9, v0

    cmpg-float v5, v5, v9

    if-gtz v5, :cond_6

    int-to-float v2, v2

    .line 15
    aget v5, v3, v4

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v4, 0x1

    if-lt v2, v0, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    .line 16
    :goto_3
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    iput v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    .line 17
    iput v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    .line 18
    iput v10, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    return-void

    :cond_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    :cond_9
    return-void
.end method


# virtual methods
.method public class(Landroid/graphics/Paint$FontMetricsInt;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :goto_0
    return p1
.end method

.method public const(Landroid/graphics/Paint$FontMetricsInt;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_0
    return p1
.end method

.method public finally(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    .line 1
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    .line 5
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 6
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2

    .line 7
    :cond_4
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 8
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method public getFontHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->implements:I

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    return v0
.end method

.method public getLineSpace()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this:I

    return v0
.end method

.method public getMaxLine()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->const:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->private:I

    return v0
.end method

.method public getMoreHitRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->import:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->do:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->else:I

    return v0
.end method

.method public native()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throws:Z

    return v0
.end method

.method public new()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->synchronized:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch:I

    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->synchronized:Z

    .line 5
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->volatile:Z

    invoke-virtual {p0, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->const(Landroid/graphics/Paint$FontMetricsInt;Z)I

    move-result v1

    .line 6
    iget-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->volatile:Z

    invoke-virtual {p0, v0, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->class(Landroid/graphics/Paint$FontMetricsInt;Z)I

    move-result v0

    sub-int/2addr v0, v1

    .line 7
    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->finally:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch:I

    .line 8
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->for:Lcom/qmuiteam/qmui/qqface/do;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/qqface/do;->case()I

    move-result v2

    .line 9
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->catch:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 10
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    neg-int v0, v1

    .line 11
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->class:I

    goto :goto_0

    .line 12
    :cond_1
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    neg-int v1, v1

    sub-int/2addr v2, v0

    .line 13
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->class:I

    .line 14
    :cond_2
    :goto_0
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->continue:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->do:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->import()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if:Lcom/qmuiteam/qmui/qqface/do$for;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/qqface/do$for;->if()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->class:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:I

    const/4 v3, 0x1

    .line 5
    iput v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->extends(II)V

    const/4 v3, 0x0

    .line 7
    iput-boolean v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n:Z

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, p1, v2, v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->goto(Landroid/graphics/Canvas;Ljava/util/List;I)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw spend time = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->continue:Z

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->new()I

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widthSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; heightSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    .line 10
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->extends:I

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_2

    .line 11
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->do:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->private:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try(I)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try(I)I

    .line 14
    :goto_1
    iget-boolean v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->continue:Z

    const/high16 v6, -0x80000000

    if-eqz v3, :cond_4

    if-ne v4, v6, :cond_3

    goto :goto_2

    :cond_3
    move v2, p2

    .line 15
    :goto_2
    invoke-virtual {p0, p1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 16
    :cond_4
    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->const:I

    const/4 v3, 0x2

    if-eq v4, v6, :cond_7

    if-eq v4, v5, :cond_6

    .line 17
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->else(I)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr p2, v4

    .line 19
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    if-ge v4, v3, :cond_5

    .line 20
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 21
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    iget v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this:I

    add-int/2addr v5, v3

    mul-int v4, v4, v5

    add-int/2addr v4, v3

    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->extends:I

    iget v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->protected:I

    goto :goto_4

    .line 22
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    add-int/2addr v4, v3

    div-int/2addr v2, v4

    .line 23
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->const:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 24
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->else(I)V

    goto :goto_6

    .line 25
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this:I

    add-int/2addr p2, v2

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    add-int/2addr v4, v2

    div-int/2addr p2, v4

    .line 26
    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->const:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 27
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->else(I)V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr p2, v4

    .line 29
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    if-ge v4, v3, :cond_8

    .line 30
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    :goto_3
    mul-int v4, v4, v3

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, -0x1

    .line 31
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    iget v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this:I

    add-int/2addr v5, v3

    mul-int v4, v4, v5

    add-int/2addr v4, v3

    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->extends:I

    iget v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->protected:I

    :goto_4
    mul-int v3, v3, v5

    add-int/2addr v4, v3

    :goto_5
    add-int/2addr p2, v4

    .line 32
    :goto_6
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLines = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ; width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ; height = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ; maxLine = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; measure time = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throw:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->import:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-boolean v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->while:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    if-nez v3, :cond_1

    .line 7
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->abstract:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;->run()V

    .line 10
    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->abstract:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_8

    if-eq v2, v5, :cond_5

    const/4 p1, 0x2

    if-eq v2, p1, :cond_4

    const/4 p1, 0x3

    if-eq v2, p1, :cond_3

    goto/16 :goto_1

    .line 11
    :cond_3
    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->abstract:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;

    .line 12
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    if-eqz p1, :cond_d

    .line 13
    invoke-virtual {p1, v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->try(Z)V

    .line 14
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->do()V

    goto/16 :goto_1

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->for(II)Z

    move-result p1

    if-nez p1, :cond_d

    .line 16
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    invoke-virtual {p1, v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->try(Z)V

    .line 17
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->do()V

    .line 18
    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    goto/16 :goto_1

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->if()V

    .line 21
    new-instance p1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    invoke-direct {p1, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;-><init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->abstract:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;

    .line 22
    new-instance p1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$if;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$if;-><init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 23
    :cond_6
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->while:Z

    if-eqz p1, :cond_d

    .line 24
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$QQFaceViewListener;

    if-eqz p1, :cond_7

    .line 25
    invoke-interface {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$QQFaceViewListener;->onMoreTextClick()V

    goto :goto_1

    .line 26
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_1

    .line 28
    :cond_8
    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    .line 29
    iput-boolean v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->while:Z

    .line 30
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->import:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 31
    iput-boolean v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->while:Z

    goto :goto_0

    .line 32
    :cond_9
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throw:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    .line 33
    invoke-virtual {v3, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->for(II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 34
    iput-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    .line 35
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    if-eqz v0, :cond_c

    .line 36
    invoke-virtual {v0, v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->try(Z)V

    .line 37
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->instanceof:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->do()V

    goto :goto_1

    .line 38
    :cond_c
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->while:Z

    if-nez v0, :cond_d

    .line 39
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_d
    :goto_1
    return v5
.end method

.method public setCompiler(Lcom/qmuiteam/qmui/qqface/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->for:Lcom/qmuiteam/qmui/qqface/do;

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->strictfp:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->switch:Landroid/text/TextUtils$TruncateAt;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->implements:I

    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->volatile:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->synchronized:Z

    .line 3
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->volatile:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLineSpace(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$QQFaceViewListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$QQFaceViewListener;

    return-void
.end method

.method public setMaxLine(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->const:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->const:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->private:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->private:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMoreActionColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->public:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->public:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMoreActionText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->native:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->native:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->public()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setOpenQQFace(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->new:Z

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-eq v0, p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d:Z

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setParagraphSpace(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->protected:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->protected:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setQQFaceSizeAddon(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->finally:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->finally:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->final:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->final:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSpecialDrawablePadding(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->transient:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->strictfp:Ljava/lang/Runnable;

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->do:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->do:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->new:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->for:Lcom/qmuiteam/qmui/qqface/do;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "mCompiler == null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throw:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->do:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/support/v4/kh1;->case(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-static {v1}, Landroid/support/v4/kh1;->case(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iput-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if:Lcom/qmuiteam/qmui/qqface/do$for;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void

    .line 14
    :cond_4
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->new:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->for:Lcom/qmuiteam/qmui/qqface/do;

    if-eqz p1, :cond_6

    .line 15
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->do:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Lcom/qmuiteam/qmui/qqface/do;->if(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/qqface/do$for;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if:Lcom/qmuiteam/qmui/qqface/do$for;

    .line 16
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/do$for;->if()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 v2, 0x0

    .line 17
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 18
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/qqface/do$if;

    .line 19
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/do$if;->catch()Lcom/qmuiteam/qmui/qqface/do$new;

    move-result-object v4

    sget-object v5, Lcom/qmuiteam/qmui/qqface/do$new;->SPAN:Lcom/qmuiteam/qmui/qqface/do$new;

    if-ne v4, v5, :cond_5

    .line 20
    iget-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->throw:Ljava/util/HashMap;

    new-instance v5, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/do$if;->break()Landroid/support/v4/yh1;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;-><init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;Lcom/qmuiteam/qmui/link/ITouchableSpan;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 21
    :cond_6
    new-instance p1, Lcom/qmuiteam/qmui/qqface/do$for;

    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->do:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {p1, v1, v2}, Lcom/qmuiteam/qmui/qqface/do$for;-><init>(II)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if:Lcom/qmuiteam/qmui/qqface/do$for;

    .line 22
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->do:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 23
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_8

    .line 24
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if:Lcom/qmuiteam/qmui/qqface/do$for;

    aget-object v4, p1, v2

    invoke-static {v4}, Lcom/qmuiteam/qmui/qqface/do$if;->new(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/qqface/do$if;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/qqface/do$for;->do(Lcom/qmuiteam/qmui/qqface/do$if;)V

    .line 25
    array-length v3, p1

    sub-int/2addr v3, v0

    if-eq v2, v3, :cond_7

    .line 26
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if:Lcom/qmuiteam/qmui/qqface/do$for;

    invoke-static {}, Lcom/qmuiteam/qmui/qqface/do$if;->if()Lcom/qmuiteam/qmui/qqface/do$if;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/qqface/do$for;->do(Lcom/qmuiteam/qmui/qqface/do$if;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 27
    :cond_8
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d:Z

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 29
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_d

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v0, :cond_a

    goto :goto_4

    .line 31
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-le v2, p1, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-le p1, v0, :cond_c

    .line 34
    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try(I)I

    .line 36
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->this:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->break:I

    add-int/2addr v2, v0

    div-int/2addr v1, v2

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->const:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 38
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->else(I)V

    .line 39
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->default:I

    if-ne p1, v0, :cond_b

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 41
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    :goto_3
    return-void

    .line 43
    :cond_d
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->goto:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->goto:I

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->else:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->else:I

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->synchronized:Z

    .line 5
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d:Z

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    const-string v0, "..."

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->static:I

    .line 7
    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->public()V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->interface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->interface:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->synchronized:Z

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->try:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public try(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    if-le p1, v0, :cond_5

    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->import()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:I

    if-ne v0, p1, :cond_1

    .line 3
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g:I

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    .line 4
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:I

    return p1

    .line 5
    :cond_1
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:I

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if:Lcom/qmuiteam/qmui/qqface/do$for;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/do$for;->if()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->case(Ljava/util/List;I)V

    .line 10
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:I

    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    if-eq v0, v2, :cond_3

    .line 11
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->package:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$QQFaceViewListener;

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {v2, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$QQFaceViewListener;->onCalculateLinesChange(I)V

    .line 13
    :cond_2
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:I

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    .line 14
    :cond_3
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    if-ne v0, v1, :cond_4

    .line 15
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:I

    goto :goto_0

    .line 16
    :cond_4
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:I

    .line 17
    :goto_0
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g:I

    .line 18
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:I

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->super:I

    .line 20
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->extends:I

    .line 21
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g:I

    .line 22
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:I

    return p1
.end method
