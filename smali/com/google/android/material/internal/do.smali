.class public final Lcom/google/android/material/internal/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final A:Z = false

.field private static final B:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final w:Z

.field private static final x:Ljava/lang/String; = "CollapsingTextHelper"

.field private static final y:Ljava/lang/String; = "\u2026"

.field private static final z:F = 0.5f


# instance fields
.field private final a:Landroid/text/TextPaint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private abstract:Z

.field private b:Landroid/animation/TimeInterpolator;

.field private final break:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Landroid/animation/TimeInterpolator;

.field private case:F

.field private catch:I

.field private class:I

.field private const:F

.field private continue:Z

.field private d:F

.field private default:Landroid/graphics/Typeface;

.field private final do:Landroid/view/View;

.field private e:F

.field private else:I

.field private extends:Lcom/google/android/material/resources/CancelableFontCallback;

.field private f:F

.field private final:F

.field private finally:Lcom/google/android/material/resources/CancelableFontCallback;

.field private for:F

.field private g:Landroid/content/res/ColorStateList;

.field private final goto:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:F

.field private i:F

.field private if:Z

.field private implements:[I

.field private import:F

.field private instanceof:Z

.field private interface:Landroid/graphics/Paint;

.field private j:F

.field private k:Landroid/content/res/ColorStateList;

.field private l:F

.field private m:F

.field private n:Landroid/text/StaticLayout;

.field private native:F

.field private new:Z

.field private o:F

.field private p:F

.field private package:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private private:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private protected:F

.field private public:F

.field private q:F

.field private r:Ljava/lang/CharSequence;

.field private return:F

.field private s:I

.field private static:F

.field private strictfp:Z

.field private super:Landroid/content/res/ColorStateList;

.field private switch:Landroid/graphics/Typeface;

.field private final synchronized:Landroid/text/TextPaint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private t:F

.field private final this:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private throw:Landroid/content/res/ColorStateList;

.field private throws:Landroid/graphics/Typeface;

.field private transient:F

.field private try:F

.field private u:F

.field private v:I

.field private volatile:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

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
    sput-boolean v0, Lcom/google/android/material/internal/do;->w:Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/google/android/material/internal/do;->B:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Lcom/google/android/material/internal/do;->catch:I

    .line 3
    iput v0, p0, Lcom/google/android/material/internal/do;->class:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 4
    iput v0, p0, Lcom/google/android/material/internal/do;->const:F

    .line 5
    iput v0, p0, Lcom/google/android/material/internal/do;->final:F

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/internal/do;->continue:Z

    .line 7
    iput v0, p0, Lcom/google/android/material/internal/do;->s:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/material/internal/do;->t:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Lcom/google/android/material/internal/do;->u:F

    .line 10
    sget v0, Lcom/google/android/material/internal/new;->final:I

    iput v0, p0, Lcom/google/android/material/internal/do;->v:I

    .line 11
    iput-object p1, p0, Lcom/google/android/material/internal/do;->do:Landroid/view/View;

    .line 12
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    .line 13
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/google/android/material/internal/do;->a:Landroid/text/TextPaint;

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    .line 15
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    .line 16
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/do;->break:Landroid/graphics/RectF;

    .line 17
    invoke-direct {p0}, Lcom/google/android/material/internal/do;->case()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/do;->case:F

    return-void
.end method

.method private B(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/do;->p:F

    .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/do;->do:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private G(Landroid/graphics/Typeface;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->extends:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/resources/CancelableFontCallback;->for()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/do;->throws:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/google/android/material/internal/do;->throws:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private L(F)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/do;->this(F)V

    .line 2
    sget-boolean p1, Lcom/google/android/material/internal/do;->w:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/internal/do;->protected:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/internal/do;->strictfp:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/internal/do;->super()V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/do;->do:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private V()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->s:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/internal/do;->abstract:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/do;->new:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/internal/do;->strictfp:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private b(Landroid/text/TextPaint;)V
    .locals 2
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->final:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/do;->switch:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 4
    iget v0, p0, Lcom/google/android/material/internal/do;->l:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_0
    return-void
.end method

.method private break(FZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->package:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 4
    iget v2, p0, Lcom/google/android/material/internal/do;->final:F

    invoke-static {p1, v2}, Lcom/google/android/material/internal/do;->e(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 5
    iget p1, p0, Lcom/google/android/material/internal/do;->final:F

    .line 6
    iput v3, p0, Lcom/google/android/material/internal/do;->protected:F

    .line 7
    iget-object p2, p0, Lcom/google/android/material/internal/do;->default:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/google/android/material/internal/do;->switch:Landroid/graphics/Typeface;

    if-eq p2, v1, :cond_1

    .line 8
    iput-object v1, p0, Lcom/google/android/material/internal/do;->default:Landroid/graphics/Typeface;

    const/4 p2, 0x1

    goto :goto_3

    :cond_1
    const/4 p2, 0x0

    goto :goto_3

    .line 9
    :cond_2
    iget v2, p0, Lcom/google/android/material/internal/do;->const:F

    .line 10
    iget-object v6, p0, Lcom/google/android/material/internal/do;->default:Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/google/android/material/internal/do;->throws:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_3

    .line 11
    iput-object v7, p0, Lcom/google/android/material/internal/do;->default:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 12
    :goto_0
    invoke-static {p1, v2}, Lcom/google/android/material/internal/do;->e(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 13
    iput v3, p0, Lcom/google/android/material/internal/do;->protected:F

    goto :goto_1

    .line 14
    :cond_4
    iget v7, p0, Lcom/google/android/material/internal/do;->const:F

    div-float/2addr p1, v7

    iput p1, p0, Lcom/google/android/material/internal/do;->protected:F

    .line 15
    :goto_1
    iget p1, p0, Lcom/google/android/material/internal/do;->final:F

    iget v7, p0, Lcom/google/android/material/internal/do;->const:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    if-eqz p2, :cond_6

    :cond_5
    move v0, v1

    :goto_2
    move p1, v2

    move p2, v6

    goto :goto_3

    :cond_6
    cmpl-float p2, v7, v0

    if-lez p2, :cond_5

    div-float/2addr v0, p1

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, p1

    goto :goto_2

    :goto_3
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_9

    .line 17
    iget v1, p0, Lcom/google/android/material/internal/do;->transient:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/material/internal/do;->instanceof:Z

    if-nez v1, :cond_8

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p2, 0x1

    .line 18
    :goto_5
    iput p1, p0, Lcom/google/android/material/internal/do;->transient:F

    .line 19
    iput-boolean v4, p0, Lcom/google/android/material/internal/do;->instanceof:Z

    .line 20
    :cond_9
    iget-object p1, p0, Lcom/google/android/material/internal/do;->private:Ljava/lang/CharSequence;

    if-eqz p1, :cond_a

    if-eqz p2, :cond_d

    .line 21
    :cond_a
    iget-object p1, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    iget p2, p0, Lcom/google/android/material/internal/do;->transient:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 22
    iget-object p1, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    iget-object p2, p0, Lcom/google/android/material/internal/do;->default:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 23
    iget-object p1, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    iget p2, p0, Lcom/google/android/material/internal/do;->protected:F

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_b

    const/4 v4, 0x1

    :cond_b
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 24
    iget-object p1, p0, Lcom/google/android/material/internal/do;->package:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/do;->else(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/internal/do;->abstract:Z

    .line 25
    invoke-direct {p0}, Lcom/google/android/material/internal/do;->V()Z

    move-result p1

    if-eqz p1, :cond_c

    iget v5, p0, Lcom/google/android/material/internal/do;->s:I

    :cond_c
    iget-boolean p1, p0, Lcom/google/android/material/internal/do;->abstract:Z

    invoke-direct {p0, v5, v0, p1}, Lcom/google/android/material/internal/do;->class(IFZ)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    .line 26
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/do;->private:Ljava/lang/CharSequence;

    :cond_d
    return-void
.end method

.method private c(Landroid/text/TextPaint;)V
    .locals 2
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->const:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/do;->throws:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 4
    iget v0, p0, Lcom/google/android/material/internal/do;->m:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_0
    return-void
.end method

.method private case()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->try:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private catch()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->volatile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/material/internal/do;->volatile:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private class(IFZ)Landroid/text/StaticLayout;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/internal/do;->package:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    float-to-int p2, p2

    .line 2
    invoke-static {v0, v1, p2}, Lcom/google/android/material/internal/new;->for(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/new;

    move-result-object p2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 3
    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/new;->try(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/new;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/new;->this(Z)Lcom/google/android/material/internal/new;

    move-result-object p2

    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 5
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/new;->new(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/new;

    move-result-object p2

    const/4 p3, 0x0

    .line 6
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/new;->goto(Z)Lcom/google/android/material/internal/new;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/new;->catch(I)Lcom/google/android/material/internal/new;

    move-result-object p1

    iget p2, p0, Lcom/google/android/material/internal/do;->t:F

    iget p3, p0, Lcom/google/android/material/internal/do;->u:F

    .line 8
    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/internal/new;->break(FF)Lcom/google/android/material/internal/new;

    move-result-object p1

    iget p2, p0, Lcom/google/android/material/internal/do;->v:I

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/new;->else(I)Lcom/google/android/material/internal/new;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/material/internal/new;->do()Landroid/text/StaticLayout;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/material/internal/new$do; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/StaticLayout;

    return-object p1
.end method

.method private d(F)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/do;->new:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/do;->break:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/do;->case:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->break:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/do;->b:Landroid/animation/TimeInterpolator;

    .line 4
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/do;->j(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 5
    iget-object v0, p0, Lcom/google/android/material/internal/do;->break:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/do;->while:F

    iget v2, p0, Lcom/google/android/material/internal/do;->import:F

    iget-object v3, p0, Lcom/google/android/material/internal/do;->b:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/do;->j(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6
    iget-object v0, p0, Lcom/google/android/material/internal/do;->break:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/do;->b:Landroid/animation/TimeInterpolator;

    .line 7
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/do;->j(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 8
    iget-object v0, p0, Lcom/google/android/material/internal/do;->break:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/do;->b:Landroid/animation/TimeInterpolator;

    .line 9
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/do;->j(FFFLandroid/animation/TimeInterpolator;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :goto_1
    return-void
.end method

.method private default(Landroid/content/res/ColorStateList;)I
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/do;->implements:[I

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1
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

.method private static e(FF)Z
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

.method private else(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/internal/do;->f()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/material/internal/do;->continue:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/do;->i(Ljava/lang/CharSequence;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private extends()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->super:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/do;->default(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method private f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->do:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final(Landroid/graphics/Canvas;FF)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    iget-object p2, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    iget p3, p0, Lcom/google/android/material/internal/do;->p:F

    int-to-float v1, v0

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4
    iget-object p2, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5
    iget-object p2, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    iget p3, p0, Lcom/google/android/material/internal/do;->o:F

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 6
    iget-object p2, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result p2

    .line 7
    iget-object v2, p0, Lcom/google/android/material/internal/do;->r:Ljava/lang/CharSequence;

    .line 8
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-float v10, p2

    iget-object v7, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v6, v10

    .line 9
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 10
    iget-boolean p2, p0, Lcom/google/android/material/internal/do;->new:Z

    if-nez p2, :cond_1

    .line 11
    iget-object p2, p0, Lcom/google/android/material/internal/do;->r:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v1, "\u2026"

    .line 12
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v6, p2

    .line 14
    iget-object p2, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v7, 0x0

    .line 15
    iget-object p2, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    .line 16
    invoke-virtual {p2, p3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result p2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    move-object v5, p1

    .line 17
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private goto(F)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/do;->d(F)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/internal/do;->new:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/google/android/material/internal/do;->case:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 4
    iget v0, p0, Lcom/google/android/material/internal/do;->native:F

    iput v0, p0, Lcom/google/android/material/internal/do;->return:F

    .line 5
    iget v0, p0, Lcom/google/android/material/internal/do;->while:F

    iput v0, p0, Lcom/google/android/material/internal/do;->static:F

    .line 6
    iget v0, p0, Lcom/google/android/material/internal/do;->const:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/do;->L(F)V

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/google/android/material/internal/do;->public:F

    iput v0, p0, Lcom/google/android/material/internal/do;->return:F

    .line 8
    iget v0, p0, Lcom/google/android/material/internal/do;->import:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/material/internal/do;->else:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/material/internal/do;->static:F

    .line 9
    iget v0, p0, Lcom/google/android/material/internal/do;->final:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/do;->L(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 10
    :cond_1
    iget v0, p0, Lcom/google/android/material/internal/do;->native:F

    iget v3, p0, Lcom/google/android/material/internal/do;->public:F

    iget-object v4, p0, Lcom/google/android/material/internal/do;->b:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v4}, Lcom/google/android/material/internal/do;->j(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/do;->return:F

    .line 11
    iget v0, p0, Lcom/google/android/material/internal/do;->while:F

    iget v3, p0, Lcom/google/android/material/internal/do;->import:F

    iget-object v4, p0, Lcom/google/android/material/internal/do;->b:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v4}, Lcom/google/android/material/internal/do;->j(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/do;->static:F

    .line 12
    iget v0, p0, Lcom/google/android/material/internal/do;->const:F

    iget v3, p0, Lcom/google/android/material/internal/do;->final:F

    iget-object v4, p0, Lcom/google/android/material/internal/do;->c:Landroid/animation/TimeInterpolator;

    .line 13
    invoke-static {v0, v3, p1, v4}, Lcom/google/android/material/internal/do;->j(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/do;->L(F)V

    move v0, p1

    :goto_0
    sub-float v3, v2, p1

    .line 15
    sget-object v4, Landroid/support/v4/w1;->if:Landroid/animation/TimeInterpolator;

    .line 16
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/material/internal/do;->j(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    sub-float v3, v2, v3

    .line 17
    invoke-direct {p0, v3}, Lcom/google/android/material/internal/do;->r(F)V

    .line 18
    invoke-static {v2, v1, p1, v4}, Lcom/google/android/material/internal/do;->j(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/do;->B(F)V

    .line 19
    iget-object v1, p0, Lcom/google/android/material/internal/do;->throw:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/internal/do;->super:Landroid/content/res/ColorStateList;

    if-eq v1, v2, :cond_2

    .line 20
    iget-object v1, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    .line 21
    invoke-direct {p0}, Lcom/google/android/material/internal/do;->extends()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->throws()I

    move-result v3

    .line 22
    invoke-static {v2, v3, v0}, Lcom/google/android/material/internal/do;->do(IIF)I

    move-result v0

    .line 23
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->throws()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 25
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 26
    iget v0, p0, Lcom/google/android/material/internal/do;->l:F

    iget v1, p0, Lcom/google/android/material/internal/do;->m:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    .line 27
    iget-object v2, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    .line 28
    invoke-static {v1, v0, p1, v4}, Lcom/google/android/material/internal/do;->j(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 29
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_2

    .line 30
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 31
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/do;->h:F

    iget v2, p0, Lcom/google/android/material/internal/do;->d:F

    const/4 v3, 0x0

    .line 32
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/do;->j(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/do;->i:F

    iget v4, p0, Lcom/google/android/material/internal/do;->e:F

    .line 33
    invoke-static {v2, v4, p1, v3}, Lcom/google/android/material/internal/do;->j(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Lcom/google/android/material/internal/do;->j:F

    iget v5, p0, Lcom/google/android/material/internal/do;->f:F

    .line 34
    invoke-static {v4, v5, p1, v3}, Lcom/google/android/material/internal/do;->j(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/internal/do;->k:Landroid/content/res/ColorStateList;

    .line 35
    invoke-direct {p0, v4}, Lcom/google/android/material/internal/do;->default(Landroid/content/res/ColorStateList;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/internal/do;->g:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v5}, Lcom/google/android/material/internal/do;->default(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 36
    invoke-static {v4, v5, p1}, Lcom/google/android/material/internal/do;->do(IIF)I

    move-result v4

    .line 37
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 38
    iget-boolean v0, p0, Lcom/google/android/material/internal/do;->new:Z

    if-eqz v0, :cond_5

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/do;->try(F)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 40
    iget-object v0, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 41
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/internal/do;->do:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private i(Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_0

    :cond_0
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    :goto_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method private if(Z)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->transient:F

    .line 2
    iget v1, p0, Lcom/google/android/material/internal/do;->final:F

    invoke-direct {p0, v1, p1}, Lcom/google/android/material/internal/do;->break(FZ)V

    .line 3
    iget-object v1, p0, Lcom/google/android/material/internal/do;->private:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    .line 5
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v3, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/internal/do;->r:Ljava/lang/CharSequence;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/do;->r:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget v4, p0, Lcom/google/android/material/internal/do;->class:I

    iget-boolean v5, p0, Lcom/google/android/material/internal/do;->abstract:Z

    .line 9
    invoke-static {v4, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_3

    if-eq v5, v6, :cond_2

    .line 10
    iget-object v5, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    .line 11
    iget-object v9, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v5

    iput v9, p0, Lcom/google/android/material/internal/do;->import:F

    goto :goto_1

    .line 12
    :cond_2
    iget-object v5, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    add-float/2addr v5, v9

    iput v5, p0, Lcom/google/android/material/internal/do;->import:F

    goto :goto_1

    .line 13
    :cond_3
    iget-object v5, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iput v5, p0, Lcom/google/android/material/internal/do;->import:F

    :goto_1
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_5

    if-eq v4, v9, :cond_4

    .line 14
    iget-object v1, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/internal/do;->public:F

    goto :goto_2

    .line 15
    :cond_4
    iget-object v4, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/google/android/material/internal/do;->public:F

    goto :goto_2

    .line 16
    :cond_5
    iget-object v4, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/google/android/material/internal/do;->public:F

    .line 17
    :goto_2
    iget v1, p0, Lcom/google/android/material/internal/do;->const:F

    invoke-direct {p0, v1, p1}, Lcom/google/android/material/internal/do;->break(FZ)V

    .line 18
    iget-object p1, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    .line 19
    :goto_3
    iget-object v1, p0, Lcom/google/android/material/internal/do;->private:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    .line 20
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v4, v1, v2, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 21
    :goto_4
    iget-object v4, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    if-eqz v4, :cond_8

    iget v11, p0, Lcom/google/android/material/internal/do;->s:I

    if-le v11, v10, :cond_8

    .line 22
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 23
    :cond_8
    iget-object v4, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    if-eqz v4, :cond_a

    iget v3, p0, Lcom/google/android/material/internal/do;->s:I

    if-le v3, v10, :cond_9

    .line 24
    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v2

    int-to-float v3, v2

    goto :goto_5

    :cond_9
    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    :cond_a
    :goto_5
    iput v3, p0, Lcom/google/android/material/internal/do;->q:F

    .line 25
    iget v2, p0, Lcom/google/android/material/internal/do;->catch:I

    iget-boolean v3, p0, Lcom/google/android/material/internal/do;->abstract:Z

    .line 26
    invoke-static {v2, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v3, v2, 0x70

    if-eq v3, v7, :cond_c

    if-eq v3, v6, :cond_b

    div-float/2addr p1, v8

    .line 27
    iget-object v3, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iput v3, p0, Lcom/google/android/material/internal/do;->while:F

    goto :goto_6

    .line 28
    :cond_b
    iget-object v3, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iget-object p1, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result p1

    add-float/2addr v3, p1

    iput v3, p0, Lcom/google/android/material/internal/do;->while:F

    goto :goto_6

    .line 29
    :cond_c
    iget-object p1, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/internal/do;->while:F

    :goto_6
    and-int p1, v2, v5

    if-eq p1, v10, :cond_e

    if-eq p1, v9, :cond_d

    .line 30
    iget-object p1, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/internal/do;->native:F

    goto :goto_7

    .line 31
    :cond_d
    iget-object p1, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/google/android/material/internal/do;->native:F

    goto :goto_7

    .line 32
    :cond_e
    iget-object p1, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, v8

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/google/android/material/internal/do;->native:F

    .line 33
    :goto_7
    invoke-direct {p0}, Lcom/google/android/material/internal/do;->catch()V

    .line 34
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/do;->L(F)V

    return-void
.end method

.method private static j(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0
    .param p3    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/w1;->do(FFF)F

    move-result p0

    return p0
.end method

.method private static n(Landroid/graphics/Rect;IIII)Z
    .locals 1
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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

.method private new()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->for:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/do;->goto(F)V

    return-void
.end method

.method private public(II)F
    .locals 2

    const/16 v0, 0x11

    if-eq p2, v0, :cond_5

    and-int/lit8 v0, p2, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const p1, 0x800005

    and-int v0, p2, p1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x5

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/internal/do;->abstract:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->for()F

    move-result p2

    sub-float/2addr p1, p2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    :goto_0
    return p1

    .line 2
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/material/internal/do;->abstract:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->for()F

    move-result p2

    sub-float/2addr p1, p2

    :goto_2
    return p1

    :cond_5
    :goto_3
    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->for()F

    move-result v0

    div-float/2addr v0, p2

    sub-float/2addr p1, v0

    return p1
.end method

.method private r(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/do;->o:F

    .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/do;->do:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private return(Landroid/graphics/RectF;II)F
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x11

    if-eq p3, v0, :cond_5

    and-int/lit8 v0, p3, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const p2, 0x800005

    and-int v0, p3, p2

    if-eq v0, p2, :cond_3

    const/4 p2, 0x5

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    iget-boolean p2, p0, Lcom/google/android/material/internal/do;->abstract:Z

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->for()F

    move-result p2

    add-float/2addr p1, p2

    :goto_0
    return p1

    .line 2
    :cond_3
    :goto_1
    iget-boolean p2, p0, Lcom/google/android/material/internal/do;->abstract:Z

    if-eqz p2, :cond_4

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->for()F

    move-result p2

    add-float/2addr p1, p2

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    :goto_2
    return p1

    :cond_5
    :goto_3
    int-to-float p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->for()F

    move-result p3

    div-float/2addr p3, p2

    add-float/2addr p1, p3

    return p1
.end method

.method private super()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->volatile:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/do;->private:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/do;->goto(F)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/do;->volatile:Landroid/graphics/Bitmap;

    .line 6
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/material/internal/do;->volatile:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/material/internal/do;->interface:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/do;->interface:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private this(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/do;->break(FZ)V

    return-void
.end method

.method private try(F)F
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->case:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_0

    .line 2
    iget v3, p0, Lcom/google/android/material/internal/do;->try:F

    invoke-static {v2, v1, v3, v0, p1}, Landroid/support/v4/w1;->if(FFFFF)F

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {v1, v2, v0, v2, p1}, Landroid/support/v4/w1;->if(FFFFF)F

    move-result p1

    return p1
.end method

.method private w(Landroid/graphics/Typeface;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->finally:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/resources/CancelableFontCallback;->for()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/do;->switch:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/google/android/material/internal/do;->switch:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public A(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/resources/do;

    iget-object v1, p0, Lcom/google/android/material/internal/do;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/do;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object p1, v0, Lcom/google/android/material/resources/do;->do:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/google/android/material/internal/do;->super:Landroid/content/res/ColorStateList;

    .line 4
    :cond_0
    iget p1, v0, Lcom/google/android/material/resources/do;->final:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    .line 5
    iput p1, p0, Lcom/google/android/material/internal/do;->const:F

    .line 6
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/resources/do;->new:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 7
    iput-object p1, p0, Lcom/google/android/material/internal/do;->k:Landroid/content/res/ColorStateList;

    .line 8
    :cond_2
    iget p1, v0, Lcom/google/android/material/resources/do;->this:F

    iput p1, p0, Lcom/google/android/material/internal/do;->i:F

    .line 9
    iget p1, v0, Lcom/google/android/material/resources/do;->break:F

    iput p1, p0, Lcom/google/android/material/internal/do;->j:F

    .line 10
    iget p1, v0, Lcom/google/android/material/resources/do;->catch:F

    iput p1, p0, Lcom/google/android/material/internal/do;->h:F

    .line 11
    iget p1, v0, Lcom/google/android/material/resources/do;->const:F

    iput p1, p0, Lcom/google/android/material/internal/do;->m:F

    .line 12
    iget-object p1, p0, Lcom/google/android/material/internal/do;->extends:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/resources/CancelableFontCallback;->for()V

    .line 14
    :cond_3
    new-instance p1, Lcom/google/android/material/resources/CancelableFontCallback;

    new-instance v1, Lcom/google/android/material/internal/do$if;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/do$if;-><init>(Lcom/google/android/material/internal/do;)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/material/resources/do;->try()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/do;->extends:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 16
    iget-object p1, p0, Lcom/google/android/material/internal/do;->do:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/do;->extends:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/do;->else(Landroid/content/Context;Landroid/support/v4/c62;)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    return-void
.end method

.method public C(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->super:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/do;->super:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    :cond_0
    return-void
.end method

.method public D(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->catch:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/internal/do;->catch:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    :cond_0
    return-void
.end method

.method public E(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->const:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/internal/do;->const:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    :cond_0
    return-void
.end method

.method public F(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/do;->G(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    :cond_0
    return-void
.end method

.method public H(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 2
    iget v0, p0, Lcom/google/android/material/internal/do;->for:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3
    iput p1, p0, Lcom/google/android/material/internal/do;->for:F

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/internal/do;->new()V

    :cond_0
    return-void
.end method

.method public I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/do;->new:Z

    return-void
.end method

.method public J(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/do;->try:F

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/internal/do;->case()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/do;->case:F

    return-void
.end method

.method public K(I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/do;->v:I

    return-void
.end method

.method public M(F)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/do;->t:F

    return-void
.end method

.method public N(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/do;->u:F

    return-void
.end method

.method public O(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->s:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/internal/do;->s:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/internal/do;->catch()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    :cond_0
    return-void
.end method

.method public P(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/do;->b:Landroid/animation/TimeInterpolator;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    return-void
.end method

.method public Q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/do;->continue:Z

    return-void
.end method

.method public final R([I)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/do;->implements:[I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public S(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->package:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/do;->package:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/material/internal/do;->private:Ljava/lang/CharSequence;

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/internal/do;->catch()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    :cond_1
    return-void
.end method

.method public T(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/do;->c:Landroid/animation/TimeInterpolator;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    return-void
.end method

.method public U(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/do;->w(Landroid/graphics/Typeface;)Z

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/do;->G(Landroid/graphics/Typeface;)Z

    move-result p1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    :cond_1
    return-void
.end method

.method public a()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->package:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->a:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/do;->c(Landroid/text/TextPaint;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/do;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public const(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/internal/do;->private:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/google/android/material/internal/do;->if:Z

    if-eqz v1, :cond_6

    .line 3
    iget v1, p0, Lcom/google/android/material/internal/do;->s:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    .line 4
    :goto_0
    iget v4, p0, Lcom/google/android/material/internal/do;->return:F

    add-float/2addr v4, v1

    iget v1, p0, Lcom/google/android/material/internal/do;->q:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v1, v1, v5

    sub-float/2addr v4, v1

    .line 5
    iget-object v1, p0, Lcom/google/android/material/internal/do;->synchronized:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/material/internal/do;->transient:F

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 6
    iget v1, p0, Lcom/google/android/material/internal/do;->return:F

    .line 7
    iget v5, p0, Lcom/google/android/material/internal/do;->static:F

    .line 8
    iget-boolean v6, p0, Lcom/google/android/material/internal/do;->strictfp:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/android/material/internal/do;->volatile:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 9
    :goto_1
    iget v3, p0, Lcom/google/android/material/internal/do;->protected:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/google/android/material/internal/do;->new:Z

    if-nez v6, :cond_2

    .line 10
    invoke-virtual {p1, v3, v3, v1, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    if-eqz v2, :cond_3

    .line 11
    iget-object v2, p0, Lcom/google/android/material/internal/do;->volatile:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/material/internal/do;->interface:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/internal/do;->V()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/material/internal/do;->new:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/material/internal/do;->for:F

    iget v3, p0, Lcom/google/android/material/internal/do;->case:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 14
    :cond_4
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/material/internal/do;->final(Landroid/graphics/Canvas;FF)V

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    iget-object v1, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 17
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    return-void
.end method

.method public continue()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->const:F

    return v0
.end method

.method public finally()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->super:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public for()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->package:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/do;->a:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/do;->b(Landroid/text/TextPaint;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/do;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/do;->package:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/do;->continue:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->throw:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/do;->super:Landroid/content/res/ColorStateList;

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

.method public implements()F
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getSpacingAdd()F

    move-result v0

    return v0
.end method

.method public import()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->class:I

    return v0
.end method

.method public instanceof()F
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getSpacingMultiplier()F

    move-result v0

    return v0
.end method

.method public interface()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->case:F

    return v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/do;->if:Z

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/do;->m(Z)V

    return-void
.end method

.method public m(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/do;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/do;->if(Z)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/internal/do;->new()V

    :cond_2
    return-void
.end method

.method public native()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->a:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/do;->b(Landroid/text/TextPaint;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/do;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public o(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/do;->n(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/internal/do;->instanceof:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->k()V

    :cond_0
    return-void
.end method

.method public p(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/do;->o(IIII)V

    return-void
.end method

.method public package()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->a:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/do;->c(Landroid/text/TextPaint;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/do;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/internal/do;->a:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public private()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->catch:I

    return v0
.end method

.method public protected()I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->v:I

    return v0
.end method

.method public q(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/resources/do;

    iget-object v1, p0, Lcom/google/android/material/internal/do;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/do;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object p1, v0, Lcom/google/android/material/resources/do;->do:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/google/android/material/internal/do;->throw:Landroid/content/res/ColorStateList;

    .line 4
    :cond_0
    iget p1, v0, Lcom/google/android/material/resources/do;->final:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    .line 5
    iput p1, p0, Lcom/google/android/material/internal/do;->final:F

    .line 6
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/resources/do;->new:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 7
    iput-object p1, p0, Lcom/google/android/material/internal/do;->g:Landroid/content/res/ColorStateList;

    .line 8
    :cond_2
    iget p1, v0, Lcom/google/android/material/resources/do;->this:F

    iput p1, p0, Lcom/google/android/material/internal/do;->e:F

    .line 9
    iget p1, v0, Lcom/google/android/material/resources/do;->break:F

    iput p1, p0, Lcom/google/android/material/internal/do;->f:F

    .line 10
    iget p1, v0, Lcom/google/android/material/resources/do;->catch:F

    iput p1, p0, Lcom/google/android/material/internal/do;->d:F

    .line 11
    iget p1, v0, Lcom/google/android/material/resources/do;->const:F

    iput p1, p0, Lcom/google/android/material/internal/do;->l:F

    .line 12
    iget-object p1, p0, Lcom/google/android/material/internal/do;->finally:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/resources/CancelableFontCallback;->for()V

    .line 14
    :cond_3
    new-instance p1, Lcom/google/android/material/resources/CancelableFontCallback;

    new-instance v1, Lcom/google/android/material/internal/do$do;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/do$do;-><init>(Lcom/google/android/material/internal/do;)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/material/resources/do;->try()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/do;->finally:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 16
    iget-object p1, p0, Lcom/google/android/material/internal/do;->do:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/do;->finally:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/do;->else(Landroid/content/Context;Landroid/support/v4/c62;)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    return-void
.end method

.method public s(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->throw:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/do;->throw:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    :cond_0
    return-void
.end method

.method public static()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->final:F

    return v0
.end method

.method public strictfp()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->throws:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method public switch()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->switch:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method public synchronized()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->s:I

    return v0
.end method

.method public t(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->class:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/internal/do;->class:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    :cond_0
    return-void
.end method

.method public throw(Landroid/graphics/RectF;II)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->package:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/do;->else(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/internal/do;->abstract:Z

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/do;->public(II)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/do;->return(Landroid/graphics/RectF;II)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 5
    iget-object p2, p0, Lcom/google/android/material/internal/do;->this:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->native()F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public throws()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->throw:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/do;->default(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public transient()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->n:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->final:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/internal/do;->final:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    :cond_0
    return-void
.end method

.method public v(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/do;->w(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->l()V

    :cond_0
    return-void
.end method

.method public volatile()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/do;->for:F

    return v0
.end method

.method public while()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->throw:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public x(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/do;->else:I

    return-void
.end method

.method public y(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/do;->n(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/do;->goto:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/internal/do;->instanceof:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/internal/do;->k()V

    :cond_0
    return-void
.end method

.method public z(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/do;->y(IIII)V

    return-void
.end method
