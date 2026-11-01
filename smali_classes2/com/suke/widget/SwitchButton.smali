.class public Lcom/suke/widget/SwitchButton;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/suke/widget/SwitchButton$new;,
        Lcom/suke/widget/SwitchButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final q:I

.field private static final r:I


# instance fields
.field private a:Landroid/graphics/RectF;

.field private abstract:F

.field private b:I

.field private break:F

.field private c:Landroid/animation/ValueAnimator;

.field private final case:I

.field private catch:F

.field private class:F

.field private const:F

.field private continue:F

.field private final d:Landroid/animation/ArgbEvaluator;

.field private default:I

.field private final do:I

.field private e:Z

.field private else:I

.field private extends:F

.field private f:Z

.field private final:F

.field private finally:I

.field private final for:I

.field private g:Z

.field private goto:I

.field private h:Z

.field private i:Z

.field private final if:I

.field private implements:Lcom/suke/widget/SwitchButton$new;

.field private import:F

.field private instanceof:Lcom/suke/widget/SwitchButton$new;

.field private interface:F

.field private j:Z

.field private k:Z

.field private l:Lcom/suke/widget/SwitchButton$OnCheckedChangeListener;

.field private m:J

.field private n:Ljava/lang/Runnable;

.field private native:F

.field private final new:I

.field private o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private p:Landroid/animation/Animator$AnimatorListener;

.field private package:I

.field private private:F

.field private protected:Landroid/graphics/Paint;

.field private public:I

.field private return:I

.field private static:I

.field private strictfp:F

.field private super:F

.field private switch:I

.field private synchronized:Lcom/suke/widget/SwitchButton$new;

.field private this:I

.field private throw:F

.field private throws:I

.field private transient:Landroid/graphics/Paint;

.field private final try:I

.field private volatile:F

.field private while:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42680000    # 58.0f

    .line 1
    invoke-static {v0}, Lcom/suke/widget/SwitchButton;->public(F)I

    move-result v0

    sput v0, Lcom/suke/widget/SwitchButton;->q:I

    const/high16 v0, 0x42100000    # 36.0f

    .line 2
    invoke-static {v0}, Lcom/suke/widget/SwitchButton;->public(F)I

    move-result v0

    sput v0, Lcom/suke/widget/SwitchButton;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/suke/widget/SwitchButton;->do:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/suke/widget/SwitchButton;->if:I

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lcom/suke/widget/SwitchButton;->for:I

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lcom/suke/widget/SwitchButton;->new:I

    const/4 v1, 0x4

    .line 6
    iput v1, p0, Lcom/suke/widget/SwitchButton;->try:I

    const/4 v1, 0x5

    .line 7
    iput v1, p0, Lcom/suke/widget/SwitchButton;->case:I

    .line 8
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/suke/widget/SwitchButton;->a:Landroid/graphics/RectF;

    .line 9
    iput v0, p0, Lcom/suke/widget/SwitchButton;->b:I

    .line 10
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lcom/suke/widget/SwitchButton;->d:Landroid/animation/ArgbEvaluator;

    .line 11
    iput-boolean v0, p0, Lcom/suke/widget/SwitchButton;->i:Z

    .line 12
    iput-boolean v0, p0, Lcom/suke/widget/SwitchButton;->j:Z

    .line 13
    iput-boolean v0, p0, Lcom/suke/widget/SwitchButton;->k:Z

    .line 14
    new-instance v0, Lcom/suke/widget/SwitchButton$do;

    invoke-direct {v0, p0}, Lcom/suke/widget/SwitchButton$do;-><init>(Lcom/suke/widget/SwitchButton;)V

    iput-object v0, p0, Lcom/suke/widget/SwitchButton;->n:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lcom/suke/widget/SwitchButton$if;

    invoke-direct {v0, p0}, Lcom/suke/widget/SwitchButton$if;-><init>(Lcom/suke/widget/SwitchButton;)V

    iput-object v0, p0, Lcom/suke/widget/SwitchButton;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 16
    new-instance v0, Lcom/suke/widget/SwitchButton$for;

    invoke-direct {v0, p0}, Lcom/suke/widget/SwitchButton$for;-><init>(Lcom/suke/widget/SwitchButton;)V

    iput-object v0, p0, Lcom/suke/widget/SwitchButton;->p:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/suke/widget/SwitchButton;->package(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/suke/widget/SwitchButton;->do:I

    const/4 v1, 0x1

    .line 20
    iput v1, p0, Lcom/suke/widget/SwitchButton;->if:I

    const/4 v1, 0x2

    .line 21
    iput v1, p0, Lcom/suke/widget/SwitchButton;->for:I

    const/4 v1, 0x3

    .line 22
    iput v1, p0, Lcom/suke/widget/SwitchButton;->new:I

    const/4 v1, 0x4

    .line 23
    iput v1, p0, Lcom/suke/widget/SwitchButton;->try:I

    const/4 v1, 0x5

    .line 24
    iput v1, p0, Lcom/suke/widget/SwitchButton;->case:I

    .line 25
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/suke/widget/SwitchButton;->a:Landroid/graphics/RectF;

    .line 26
    iput v0, p0, Lcom/suke/widget/SwitchButton;->b:I

    .line 27
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lcom/suke/widget/SwitchButton;->d:Landroid/animation/ArgbEvaluator;

    .line 28
    iput-boolean v0, p0, Lcom/suke/widget/SwitchButton;->i:Z

    .line 29
    iput-boolean v0, p0, Lcom/suke/widget/SwitchButton;->j:Z

    .line 30
    iput-boolean v0, p0, Lcom/suke/widget/SwitchButton;->k:Z

    .line 31
    new-instance v0, Lcom/suke/widget/SwitchButton$do;

    invoke-direct {v0, p0}, Lcom/suke/widget/SwitchButton$do;-><init>(Lcom/suke/widget/SwitchButton;)V

    iput-object v0, p0, Lcom/suke/widget/SwitchButton;->n:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lcom/suke/widget/SwitchButton$if;

    invoke-direct {v0, p0}, Lcom/suke/widget/SwitchButton$if;-><init>(Lcom/suke/widget/SwitchButton;)V

    iput-object v0, p0, Lcom/suke/widget/SwitchButton;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 33
    new-instance v0, Lcom/suke/widget/SwitchButton$for;

    invoke-direct {v0, p0}, Lcom/suke/widget/SwitchButton$for;-><init>(Lcom/suke/widget/SwitchButton;)V

    iput-object v0, p0, Lcom/suke/widget/SwitchButton;->p:Landroid/animation/Animator$AnimatorListener;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/suke/widget/SwitchButton;->package(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 36
    iput p3, p0, Lcom/suke/widget/SwitchButton;->do:I

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/suke/widget/SwitchButton;->if:I

    const/4 v0, 0x2

    .line 38
    iput v0, p0, Lcom/suke/widget/SwitchButton;->for:I

    const/4 v0, 0x3

    .line 39
    iput v0, p0, Lcom/suke/widget/SwitchButton;->new:I

    const/4 v0, 0x4

    .line 40
    iput v0, p0, Lcom/suke/widget/SwitchButton;->try:I

    const/4 v0, 0x5

    .line 41
    iput v0, p0, Lcom/suke/widget/SwitchButton;->case:I

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/suke/widget/SwitchButton;->a:Landroid/graphics/RectF;

    .line 43
    iput p3, p0, Lcom/suke/widget/SwitchButton;->b:I

    .line 44
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/suke/widget/SwitchButton;->d:Landroid/animation/ArgbEvaluator;

    .line 45
    iput-boolean p3, p0, Lcom/suke/widget/SwitchButton;->i:Z

    .line 46
    iput-boolean p3, p0, Lcom/suke/widget/SwitchButton;->j:Z

    .line 47
    iput-boolean p3, p0, Lcom/suke/widget/SwitchButton;->k:Z

    .line 48
    new-instance p3, Lcom/suke/widget/SwitchButton$do;

    invoke-direct {p3, p0}, Lcom/suke/widget/SwitchButton$do;-><init>(Lcom/suke/widget/SwitchButton;)V

    iput-object p3, p0, Lcom/suke/widget/SwitchButton;->n:Ljava/lang/Runnable;

    .line 49
    new-instance p3, Lcom/suke/widget/SwitchButton$if;

    invoke-direct {p3, p0}, Lcom/suke/widget/SwitchButton$if;-><init>(Lcom/suke/widget/SwitchButton;)V

    iput-object p3, p0, Lcom/suke/widget/SwitchButton;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 50
    new-instance p3, Lcom/suke/widget/SwitchButton$for;

    invoke-direct {p3, p0}, Lcom/suke/widget/SwitchButton$for;-><init>(Lcom/suke/widget/SwitchButton;)V

    iput-object p3, p0, Lcom/suke/widget/SwitchButton;->p:Landroid/animation/Animator$AnimatorListener;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/suke/widget/SwitchButton;->package(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 53
    iput p3, p0, Lcom/suke/widget/SwitchButton;->do:I

    const/4 p4, 0x1

    .line 54
    iput p4, p0, Lcom/suke/widget/SwitchButton;->if:I

    const/4 p4, 0x2

    .line 55
    iput p4, p0, Lcom/suke/widget/SwitchButton;->for:I

    const/4 p4, 0x3

    .line 56
    iput p4, p0, Lcom/suke/widget/SwitchButton;->new:I

    const/4 p4, 0x4

    .line 57
    iput p4, p0, Lcom/suke/widget/SwitchButton;->try:I

    const/4 p4, 0x5

    .line 58
    iput p4, p0, Lcom/suke/widget/SwitchButton;->case:I

    .line 59
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    iput-object p4, p0, Lcom/suke/widget/SwitchButton;->a:Landroid/graphics/RectF;

    .line 60
    iput p3, p0, Lcom/suke/widget/SwitchButton;->b:I

    .line 61
    new-instance p4, Landroid/animation/ArgbEvaluator;

    invoke-direct {p4}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p4, p0, Lcom/suke/widget/SwitchButton;->d:Landroid/animation/ArgbEvaluator;

    .line 62
    iput-boolean p3, p0, Lcom/suke/widget/SwitchButton;->i:Z

    .line 63
    iput-boolean p3, p0, Lcom/suke/widget/SwitchButton;->j:Z

    .line 64
    iput-boolean p3, p0, Lcom/suke/widget/SwitchButton;->k:Z

    .line 65
    new-instance p3, Lcom/suke/widget/SwitchButton$do;

    invoke-direct {p3, p0}, Lcom/suke/widget/SwitchButton$do;-><init>(Lcom/suke/widget/SwitchButton;)V

    iput-object p3, p0, Lcom/suke/widget/SwitchButton;->n:Ljava/lang/Runnable;

    .line 66
    new-instance p3, Lcom/suke/widget/SwitchButton$if;

    invoke-direct {p3, p0}, Lcom/suke/widget/SwitchButton$if;-><init>(Lcom/suke/widget/SwitchButton;)V

    iput-object p3, p0, Lcom/suke/widget/SwitchButton;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 67
    new-instance p3, Lcom/suke/widget/SwitchButton$for;

    invoke-direct {p3, p0}, Lcom/suke/widget/SwitchButton$for;-><init>(Lcom/suke/widget/SwitchButton;)V

    iput-object p3, p0, Lcom/suke/widget/SwitchButton;->p:Landroid/animation/Animator$AnimatorListener;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/suke/widget/SwitchButton;->package(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private abstract()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/suke/widget/SwitchButton;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/suke/widget/SwitchButton;->k:Z

    if-nez v0, :cond_9

    .line 3
    iget-boolean v0, p0, Lcom/suke/widget/SwitchButton;->j:Z

    if-nez v0, :cond_2

    .line 4
    iget-boolean p1, p0, Lcom/suke/widget/SwitchButton;->e:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/suke/widget/SwitchButton;->e:Z

    if-eqz p2, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->import()V

    :cond_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    :cond_3
    iget-boolean v0, p0, Lcom/suke/widget/SwitchButton;->f:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x5

    .line 9
    iput p1, p0, Lcom/suke/widget/SwitchButton;->b:I

    .line 10
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->instanceof:Lcom/suke/widget/SwitchButton$new;

    iget-object p2, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    invoke-static {p1, p2}, Lcom/suke/widget/SwitchButton$new;->do(Lcom/suke/widget/SwitchButton$new;Lcom/suke/widget/SwitchButton$new;)V

    .line 11
    invoke-virtual {p0}, Lcom/suke/widget/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->synchronized:Lcom/suke/widget/SwitchButton$new;

    invoke-direct {p0, p1}, Lcom/suke/widget/SwitchButton;->setUncheckViewState(Lcom/suke/widget/SwitchButton$new;)V

    goto :goto_0

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->synchronized:Lcom/suke/widget/SwitchButton$new;

    invoke-direct {p0, p1}, Lcom/suke/widget/SwitchButton;->setCheckedViewState(Lcom/suke/widget/SwitchButton$new;)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 15
    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcom/suke/widget/SwitchButton;->e:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/suke/widget/SwitchButton;->e:Z

    .line 16
    invoke-virtual {p0}, Lcom/suke/widget/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    invoke-direct {p0, p1}, Lcom/suke/widget/SwitchButton;->setCheckedViewState(Lcom/suke/widget/SwitchButton$new;)V

    goto :goto_2

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    invoke-direct {p0, p1}, Lcom/suke/widget/SwitchButton;->setUncheckViewState(Lcom/suke/widget/SwitchButton$new;)V

    .line 19
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    if-eqz p2, :cond_8

    .line 20
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->import()V

    :cond_8
    return-void

    .line 21
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "should NOT switch the state in method: [onCheckedChanged]!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic break(Lcom/suke/widget/SwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/suke/widget/SwitchButton;->b:I

    return p0
.end method

.method public static synthetic case(Lcom/suke/widget/SwitchButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->import()V

    return-void
.end method

.method public static synthetic catch(Lcom/suke/widget/SwitchButton;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/suke/widget/SwitchButton;->b:I

    return p1
.end method

.method public static synthetic class(Lcom/suke/widget/SwitchButton;)Lcom/suke/widget/SwitchButton$new;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    return-object p0
.end method

.method public static synthetic const(Lcom/suke/widget/SwitchButton;)Lcom/suke/widget/SwitchButton$new;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/suke/widget/SwitchButton;->instanceof:Lcom/suke/widget/SwitchButton$new;

    return-object p0
.end method

.method private continue()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/suke/widget/SwitchButton;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private default(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p6

    move-object v7, p7

    .line 2
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object p2, p0, Lcom/suke/widget/SwitchButton;->a:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p6, p6, p7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public static synthetic do(Lcom/suke/widget/SwitchButton;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->abstract()Z

    move-result p0

    return p0
.end method

.method public static synthetic else(Lcom/suke/widget/SwitchButton;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/suke/widget/SwitchButton;->e:Z

    return p0
.end method

.method private extends(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v2, p0, Lcom/suke/widget/SwitchButton;->finally:I

    iget v0, p0, Lcom/suke/widget/SwitchButton;->package:I

    int-to-float v3, v0

    iget v0, p0, Lcom/suke/widget/SwitchButton;->throw:F

    iget v1, p0, Lcom/suke/widget/SwitchButton;->private:F

    sub-float v4, v0, v1

    iget v5, p0, Lcom/suke/widget/SwitchButton;->native:F

    iget v6, p0, Lcom/suke/widget/SwitchButton;->abstract:F

    iget-object v7, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/suke/widget/SwitchButton;->finally(Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static synthetic final(Lcom/suke/widget/SwitchButton;)Lcom/suke/widget/SwitchButton$new;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/suke/widget/SwitchButton;->synchronized:Lcom/suke/widget/SwitchButton$new;

    return-object p0
.end method

.method public static synthetic for(Lcom/suke/widget/SwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/suke/widget/SwitchButton;->static:I

    return p0
.end method

.method public static synthetic goto(Lcom/suke/widget/SwitchButton;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/suke/widget/SwitchButton;->e:Z

    return p1
.end method

.method public static synthetic if(Lcom/suke/widget/SwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/suke/widget/SwitchButton;->return:I

    return p0
.end method

.method private implements()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->private()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->continue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/suke/widget/SwitchButton;->b:I

    .line 5
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->instanceof:Lcom/suke/widget/SwitchButton$new;

    iget-object v1, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    invoke-static {v0, v1}, Lcom/suke/widget/SwitchButton$new;->do(Lcom/suke/widget/SwitchButton$new;Lcom/suke/widget/SwitchButton$new;)V

    .line 6
    invoke-virtual {p0}, Lcom/suke/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->synchronized:Lcom/suke/widget/SwitchButton$new;

    invoke-direct {p0, v0}, Lcom/suke/widget/SwitchButton;->setCheckedViewState(Lcom/suke/widget/SwitchButton$new;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->synchronized:Lcom/suke/widget/SwitchButton$new;

    invoke-direct {p0, v0}, Lcom/suke/widget/SwitchButton;->setUncheckViewState(Lcom/suke/widget/SwitchButton$new;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method private import()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->l:Lcom/suke/widget/SwitchButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/suke/widget/SwitchButton;->k:Z

    .line 3
    invoke-virtual {p0}, Lcom/suke/widget/SwitchButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/suke/widget/SwitchButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/suke/widget/SwitchButton;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/suke/widget/SwitchButton;->k:Z

    return-void
.end method

.method private instanceof()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->abstract()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/suke/widget/SwitchButton;->i:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/suke/widget/SwitchButton;->b:I

    .line 6
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->instanceof:Lcom/suke/widget/SwitchButton$new;

    iget-object v1, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    invoke-static {v0, v1}, Lcom/suke/widget/SwitchButton$new;->do(Lcom/suke/widget/SwitchButton$new;Lcom/suke/widget/SwitchButton$new;)V

    .line 7
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->synchronized:Lcom/suke/widget/SwitchButton$new;

    iget-object v1, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    invoke-static {v0, v1}, Lcom/suke/widget/SwitchButton$new;->do(Lcom/suke/widget/SwitchButton$new;Lcom/suke/widget/SwitchButton$new;)V

    .line 8
    invoke-virtual {p0}, Lcom/suke/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->synchronized:Lcom/suke/widget/SwitchButton$new;

    iget v1, p0, Lcom/suke/widget/SwitchButton;->static:I

    iput v1, v0, Lcom/suke/widget/SwitchButton$new;->if:I

    .line 10
    iget v2, p0, Lcom/suke/widget/SwitchButton;->interface:F

    iput v2, v0, Lcom/suke/widget/SwitchButton$new;->do:F

    .line 11
    iput v1, v0, Lcom/suke/widget/SwitchButton$new;->for:I

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->synchronized:Lcom/suke/widget/SwitchButton$new;

    iget v1, p0, Lcom/suke/widget/SwitchButton;->return:I

    iput v1, v0, Lcom/suke/widget/SwitchButton$new;->if:I

    .line 13
    iget v1, p0, Lcom/suke/widget/SwitchButton;->volatile:F

    iput v1, v0, Lcom/suke/widget/SwitchButton$new;->do:F

    .line 14
    iget v1, p0, Lcom/suke/widget/SwitchButton;->break:F

    iput v1, v0, Lcom/suke/widget/SwitchButton$new;->new:F

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static interface(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private static native(F)F
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static synthetic new(Lcom/suke/widget/SwitchButton;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/suke/widget/SwitchButton;->break:F

    return p0
.end method

.method private package(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    sget-object v1, Lcom/suke/widget/R$styleable;->SwitchButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 2
    :goto_0
    sget p2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_shadow_effect:I

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/suke/widget/SwitchButton;->strictfp(Landroid/content/res/TypedArray;IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/suke/widget/SwitchButton;->g:Z

    .line 3
    sget p2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_uncheckcircle_color:I

    const v2, -0x555556

    invoke-static {p1, p2, v2}, Lcom/suke/widget/SwitchButton;->volatile(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->finally:I

    .line 4
    sget p2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_uncheckcircle_width:I

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 5
    invoke-static {v2}, Lcom/suke/widget/SwitchButton;->public(F)I

    move-result v3

    .line 6
    invoke-static {p1, p2, v3}, Lcom/suke/widget/SwitchButton;->transient(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->package:I

    const/high16 p2, 0x41200000    # 10.0f

    .line 7
    invoke-static {p2}, Lcom/suke/widget/SwitchButton;->native(F)F

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->private:F

    .line 8
    sget p2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_uncheckcircle_radius:I

    const/high16 v3, 0x40800000    # 4.0f

    .line 9
    invoke-static {v3}, Lcom/suke/widget/SwitchButton;->native(F)F

    move-result v4

    .line 10
    invoke-static {p1, p2, v4}, Lcom/suke/widget/SwitchButton;->protected(Landroid/content/res/TypedArray;IF)F

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->abstract:F

    .line 11
    invoke-static {v3}, Lcom/suke/widget/SwitchButton;->native(F)F

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->continue:F

    .line 12
    invoke-static {v3}, Lcom/suke/widget/SwitchButton;->native(F)F

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->strictfp:F

    .line 13
    sget p2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_shadow_radius:I

    const/high16 v3, 0x40200000    # 2.5f

    .line 14
    invoke-static {v3}, Lcom/suke/widget/SwitchButton;->public(F)I

    move-result v3

    .line 15
    invoke-static {p1, p2, v3}, Lcom/suke/widget/SwitchButton;->transient(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->else:I

    .line 16
    sget p2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_shadow_offset:I

    .line 17
    invoke-static {v2}, Lcom/suke/widget/SwitchButton;->public(F)I

    move-result v2

    .line 18
    invoke-static {p1, p2, v2}, Lcom/suke/widget/SwitchButton;->transient(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->goto:I

    .line 19
    sget p2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_shadow_color:I

    const/high16 v2, 0x33000000

    invoke-static {p1, p2, v2}, Lcom/suke/widget/SwitchButton;->volatile(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->this:I

    .line 20
    sget p2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_uncheck_color:I

    const v2, -0x222223

    invoke-static {p1, p2, v2}, Lcom/suke/widget/SwitchButton;->volatile(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->return:I

    .line 21
    sget p2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_checked_color:I

    const v2, -0xae2c99

    invoke-static {p1, p2, v2}, Lcom/suke/widget/SwitchButton;->volatile(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->static:I

    .line 22
    sget p2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_border_width:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 23
    invoke-static {v2}, Lcom/suke/widget/SwitchButton;->public(F)I

    move-result v3

    .line 24
    invoke-static {p1, p2, v3}, Lcom/suke/widget/SwitchButton;->transient(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->switch:I

    .line 25
    sget p2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_checkline_color:I

    const/4 v3, -0x1

    invoke-static {p1, p2, v3}, Lcom/suke/widget/SwitchButton;->volatile(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->throws:I

    .line 26
    sget p2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_checkline_width:I

    .line 27
    invoke-static {v2}, Lcom/suke/widget/SwitchButton;->public(F)I

    move-result v2

    .line 28
    invoke-static {p1, p2, v2}, Lcom/suke/widget/SwitchButton;->transient(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->default:I

    const/high16 p2, 0x40c00000    # 6.0f

    .line 29
    invoke-static {p2}, Lcom/suke/widget/SwitchButton;->native(F)F

    move-result p2

    iput p2, p0, Lcom/suke/widget/SwitchButton;->extends:F

    .line 30
    sget p2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_button_color:I

    invoke-static {p1, p2, v3}, Lcom/suke/widget/SwitchButton;->volatile(Landroid/content/res/TypedArray;II)I

    move-result p2

    .line 31
    sget v2, Lcom/suke/widget/R$styleable;->SwitchButton_sb_effect_duration:I

    const/16 v4, 0x12c

    invoke-static {p1, v2, v4}, Lcom/suke/widget/SwitchButton;->interface(Landroid/content/res/TypedArray;II)I

    move-result v2

    .line 32
    sget v4, Lcom/suke/widget/R$styleable;->SwitchButton_sb_checked:I

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/suke/widget/SwitchButton;->strictfp(Landroid/content/res/TypedArray;IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/suke/widget/SwitchButton;->e:Z

    .line 33
    sget v4, Lcom/suke/widget/R$styleable;->SwitchButton_sb_show_indicator:I

    invoke-static {p1, v4, v1}, Lcom/suke/widget/SwitchButton;->strictfp(Landroid/content/res/TypedArray;IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/suke/widget/SwitchButton;->h:Z

    .line 34
    sget v4, Lcom/suke/widget/R$styleable;->SwitchButton_sb_background:I

    invoke-static {p1, v4, v3}, Lcom/suke/widget/SwitchButton;->volatile(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Lcom/suke/widget/SwitchButton;->public:I

    .line 35
    sget v3, Lcom/suke/widget/R$styleable;->SwitchButton_sb_enable_effect:I

    invoke-static {p1, v3, v1}, Lcom/suke/widget/SwitchButton;->strictfp(Landroid/content/res/TypedArray;IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/suke/widget/SwitchButton;->f:Z

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/suke/widget/SwitchButton;->protected:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-boolean p1, p0, Lcom/suke/widget/SwitchButton;->g:Z

    if-eqz p1, :cond_2

    .line 41
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->protected:Landroid/graphics/Paint;

    iget p2, p0, Lcom/suke/widget/SwitchButton;->else:I

    int-to-float p2, p2

    const/4 v3, 0x0

    iget v4, p0, Lcom/suke/widget/SwitchButton;->goto:I

    int-to-float v4, v4

    iget v6, p0, Lcom/suke/widget/SwitchButton;->this:I

    invoke-virtual {p1, p2, v3, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 42
    :cond_2
    new-instance p1, Lcom/suke/widget/SwitchButton$new;

    invoke-direct {p1}, Lcom/suke/widget/SwitchButton$new;-><init>()V

    iput-object p1, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    .line 43
    new-instance p1, Lcom/suke/widget/SwitchButton$new;

    invoke-direct {p1}, Lcom/suke/widget/SwitchButton$new;-><init>()V

    iput-object p1, p0, Lcom/suke/widget/SwitchButton;->instanceof:Lcom/suke/widget/SwitchButton$new;

    .line 44
    new-instance p1, Lcom/suke/widget/SwitchButton$new;

    invoke-direct {p1}, Lcom/suke/widget/SwitchButton$new;-><init>()V

    iput-object p1, p0, Lcom/suke/widget/SwitchButton;->synchronized:Lcom/suke/widget/SwitchButton$new;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 45
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    int-to-long v2, v2

    .line 46
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 48
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/suke/widget/SwitchButton;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/suke/widget/SwitchButton;->p:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 50
    invoke-super {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 51
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/suke/widget/SwitchButton;->setPadding(IIII)V

    .line 52
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_3

    .line 53
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private private()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/suke/widget/SwitchButton;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static protected(Landroid/content/res/TypedArray;IF)F
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    return p0
.end method

.method private static public(F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/suke/widget/SwitchButton;->native(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private return(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V
    .locals 12

    move-object v0, p0

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v10, 0x1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p8

    .line 2
    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/suke/widget/SwitchButton;->a:Landroid/graphics/RectF;

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual {v1, p2, p3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object v3, v0, Lcom/suke/widget/SwitchButton;->a:Landroid/graphics/RectF;

    const/4 v6, 0x1

    move-object v2, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private setCheckedViewState(Lcom/suke/widget/SwitchButton$new;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/suke/widget/SwitchButton;->break:F

    iput v0, p1, Lcom/suke/widget/SwitchButton$new;->new:F

    .line 2
    iget v0, p0, Lcom/suke/widget/SwitchButton;->static:I

    iput v0, p1, Lcom/suke/widget/SwitchButton$new;->if:I

    .line 3
    iget v0, p0, Lcom/suke/widget/SwitchButton;->throws:I

    iput v0, p1, Lcom/suke/widget/SwitchButton$new;->for:I

    .line 4
    iget v0, p0, Lcom/suke/widget/SwitchButton;->interface:F

    iput v0, p1, Lcom/suke/widget/SwitchButton$new;->do:F

    return-void
.end method

.method private setUncheckViewState(Lcom/suke/widget/SwitchButton$new;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p1, Lcom/suke/widget/SwitchButton$new;->new:F

    .line 2
    iget v0, p0, Lcom/suke/widget/SwitchButton;->return:I

    iput v0, p1, Lcom/suke/widget/SwitchButton$new;->if:I

    const/4 v0, 0x0

    .line 3
    iput v0, p1, Lcom/suke/widget/SwitchButton$new;->for:I

    .line 4
    iget v0, p0, Lcom/suke/widget/SwitchButton;->volatile:F

    iput v0, p1, Lcom/suke/widget/SwitchButton$new;->do:F

    return-void
.end method

.method private static(Landroid/graphics/Canvas;FF)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/suke/widget/SwitchButton;->catch:F

    iget-object v1, p0, Lcom/suke/widget/SwitchButton;->protected:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget v0, p0, Lcom/suke/widget/SwitchButton;->catch:F

    iget-object v1, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static strictfp(Landroid/content/res/TypedArray;IZ)Z
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic super(Lcom/suke/widget/SwitchButton;)Landroid/animation/ArgbEvaluator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/suke/widget/SwitchButton;->d:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method private synchronized()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/suke/widget/SwitchButton;->b:I

    .line 4
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->instanceof:Lcom/suke/widget/SwitchButton$new;

    iget-object v1, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    invoke-static {v0, v1}, Lcom/suke/widget/SwitchButton$new;->do(Lcom/suke/widget/SwitchButton$new;Lcom/suke/widget/SwitchButton$new;)V

    .line 5
    invoke-virtual {p0}, Lcom/suke/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->synchronized:Lcom/suke/widget/SwitchButton$new;

    invoke-direct {p0, v0}, Lcom/suke/widget/SwitchButton;->setCheckedViewState(Lcom/suke/widget/SwitchButton$new;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->synchronized:Lcom/suke/widget/SwitchButton$new;

    invoke-direct {p0, v0}, Lcom/suke/widget/SwitchButton;->setUncheckViewState(Lcom/suke/widget/SwitchButton$new;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic this(Lcom/suke/widget/SwitchButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->instanceof()V

    return-void
.end method

.method public static synthetic throw(Lcom/suke/widget/SwitchButton;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/suke/widget/SwitchButton;->volatile:F

    return p0
.end method

.method private static transient(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    return p0
.end method

.method public static synthetic try(Lcom/suke/widget/SwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/suke/widget/SwitchButton;->throws:I

    return p0
.end method

.method private static volatile(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    return p0
.end method

.method public static synthetic while(Lcom/suke/widget/SwitchButton;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/suke/widget/SwitchButton;->interface:F

    return p0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/suke/widget/SwitchButton;->b(ZZ)V

    return-void
.end method

.method public finally(Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2
    invoke-virtual {p7, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p7, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/suke/widget/SwitchButton;->e:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    iget v1, p0, Lcom/suke/widget/SwitchButton;->switch:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    iget v1, p0, Lcom/suke/widget/SwitchButton;->public:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget v4, p0, Lcom/suke/widget/SwitchButton;->final:F

    iget v5, p0, Lcom/suke/widget/SwitchButton;->super:F

    iget v6, p0, Lcom/suke/widget/SwitchButton;->throw:F

    iget v7, p0, Lcom/suke/widget/SwitchButton;->while:F

    iget v8, p0, Lcom/suke/widget/SwitchButton;->break:F

    iget-object v9, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/suke/widget/SwitchButton;->default(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    iget v1, p0, Lcom/suke/widget/SwitchButton;->return:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget v4, p0, Lcom/suke/widget/SwitchButton;->final:F

    iget v5, p0, Lcom/suke/widget/SwitchButton;->super:F

    iget v6, p0, Lcom/suke/widget/SwitchButton;->throw:F

    iget v7, p0, Lcom/suke/widget/SwitchButton;->while:F

    iget v8, p0, Lcom/suke/widget/SwitchButton;->break:F

    iget-object v9, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    invoke-direct/range {v2 .. v9}, Lcom/suke/widget/SwitchButton;->default(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 9
    iget-boolean v0, p0, Lcom/suke/widget/SwitchButton;->h:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-direct {p0, p1}, Lcom/suke/widget/SwitchButton;->extends(Landroid/graphics/Canvas;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    iget v0, v0, Lcom/suke/widget/SwitchButton$new;->new:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 12
    iget-object v1, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object v1, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    iget v2, v2, Lcom/suke/widget/SwitchButton$new;->if:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object v1, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    iget v2, p0, Lcom/suke/widget/SwitchButton;->switch:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iget v1, p0, Lcom/suke/widget/SwitchButton;->final:F

    add-float v6, v1, v0

    iget v1, p0, Lcom/suke/widget/SwitchButton;->super:F

    add-float v7, v1, v0

    iget v1, p0, Lcom/suke/widget/SwitchButton;->throw:F

    sub-float v8, v1, v0

    iget v1, p0, Lcom/suke/widget/SwitchButton;->while:F

    sub-float v9, v1, v0

    iget v10, p0, Lcom/suke/widget/SwitchButton;->break:F

    iget-object v11, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/suke/widget/SwitchButton;->default(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 16
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget v6, p0, Lcom/suke/widget/SwitchButton;->final:F

    iget v7, p0, Lcom/suke/widget/SwitchButton;->super:F

    iget v0, p0, Lcom/suke/widget/SwitchButton;->break:F

    mul-float v1, v0, v3

    add-float v8, v6, v1

    mul-float v0, v0, v3

    add-float v9, v7, v0

    const/high16 v10, 0x42b40000    # 90.0f

    const/high16 v11, 0x43340000    # 180.0f

    iget-object v12, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    invoke-direct/range {v4 .. v12}, Lcom/suke/widget/SwitchButton;->return(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    .line 19
    iget v0, p0, Lcom/suke/widget/SwitchButton;->final:F

    iget v1, p0, Lcom/suke/widget/SwitchButton;->break:F

    add-float v5, v0, v1

    iget v6, p0, Lcom/suke/widget/SwitchButton;->super:F

    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    iget v7, v0, Lcom/suke/widget/SwitchButton$new;->do:F

    mul-float v1, v1, v3

    add-float v8, v6, v1

    iget-object v9, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 20
    iget-boolean v0, p0, Lcom/suke/widget/SwitchButton;->h:Z

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0, p1}, Lcom/suke/widget/SwitchButton;->switch(Landroid/graphics/Canvas;)V

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    iget v0, v0, Lcom/suke/widget/SwitchButton$new;->do:F

    iget v1, p0, Lcom/suke/widget/SwitchButton;->native:F

    invoke-direct {p0, p1, v0, v1}, Lcom/suke/widget/SwitchButton;->static(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    .line 3
    :cond_0
    sget p1, Lcom/suke/widget/SwitchButton;->q:I

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_3

    .line 4
    :cond_2
    sget p2, Lcom/suke/widget/SwitchButton;->r:I

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 5
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iget p3, p0, Lcom/suke/widget/SwitchButton;->else:I

    iget p4, p0, Lcom/suke/widget/SwitchButton;->goto:I

    add-int/2addr p3, p4

    iget p4, p0, Lcom/suke/widget/SwitchButton;->switch:I

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    sub-float/2addr p2, p3

    sub-float p4, p2, p3

    .line 3
    iput p4, p0, Lcom/suke/widget/SwitchButton;->class:F

    int-to-float p1, p1

    sub-float/2addr p1, p3

    sub-float v0, p1, p3

    .line 4
    iput v0, p0, Lcom/suke/widget/SwitchButton;->const:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p4, p4, v0

    .line 5
    iput p4, p0, Lcom/suke/widget/SwitchButton;->break:F

    .line 6
    iget v1, p0, Lcom/suke/widget/SwitchButton;->switch:I

    int-to-float v1, v1

    sub-float v1, p4, v1

    iput v1, p0, Lcom/suke/widget/SwitchButton;->catch:F

    .line 7
    iput p3, p0, Lcom/suke/widget/SwitchButton;->final:F

    .line 8
    iput p3, p0, Lcom/suke/widget/SwitchButton;->super:F

    .line 9
    iput p1, p0, Lcom/suke/widget/SwitchButton;->throw:F

    .line 10
    iput p2, p0, Lcom/suke/widget/SwitchButton;->while:F

    add-float v1, p3, p1

    mul-float v1, v1, v0

    .line 11
    iput v1, p0, Lcom/suke/widget/SwitchButton;->import:F

    add-float/2addr p2, p3

    mul-float p2, p2, v0

    .line 12
    iput p2, p0, Lcom/suke/widget/SwitchButton;->native:F

    add-float/2addr p3, p4

    .line 13
    iput p3, p0, Lcom/suke/widget/SwitchButton;->volatile:F

    sub-float/2addr p1, p4

    .line 14
    iput p1, p0, Lcom/suke/widget/SwitchButton;->interface:F

    .line 15
    invoke-virtual {p0}, Lcom/suke/widget/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    invoke-direct {p0, p1}, Lcom/suke/widget/SwitchButton;->setCheckedViewState(Lcom/suke/widget/SwitchButton$new;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    invoke-direct {p0, p1}, Lcom/suke/widget/SwitchButton;->setUncheckViewState(Lcom/suke/widget/SwitchButton$new;)V

    :goto_0
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/suke/widget/SwitchButton;->j:Z

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eq v0, v2, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    iput-boolean v1, p0, Lcom/suke/widget/SwitchButton;->i:Z

    .line 4
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->continue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->private()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->implements()V

    goto/16 :goto_0

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 9
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->continue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 11
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    iget v1, p0, Lcom/suke/widget/SwitchButton;->volatile:F

    iget v3, p0, Lcom/suke/widget/SwitchButton;->interface:F

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, v0, Lcom/suke/widget/SwitchButton$new;->do:F

    goto/16 :goto_0

    .line 13
    :cond_4
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->private()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 15
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 16
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    iget v1, p0, Lcom/suke/widget/SwitchButton;->volatile:F

    iget v3, p0, Lcom/suke/widget/SwitchButton;->interface:F

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, v0, Lcom/suke/widget/SwitchButton$new;->do:F

    .line 17
    iget-object v1, p0, Lcom/suke/widget/SwitchButton;->d:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/suke/widget/SwitchButton;->return:I

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/suke/widget/SwitchButton;->static:I

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 20
    invoke-virtual {v1, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/suke/widget/SwitchButton$new;->if:I

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 22
    :cond_5
    iput-boolean v1, p0, Lcom/suke/widget/SwitchButton;->i:Z

    .line 23
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/suke/widget/SwitchButton;->m:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x12c

    cmp-long v0, v5, v7

    if-gtz v0, :cond_6

    .line 25
    invoke-virtual {p0}, Lcom/suke/widget/SwitchButton;->toggle()V

    goto :goto_0

    .line 26
    :cond_6
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->private()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 29
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    const/4 v1, 0x1

    .line 30
    :cond_7
    invoke-virtual {p0}, Lcom/suke/widget/SwitchButton;->isChecked()Z

    move-result p1

    if-ne v1, p1, :cond_8

    .line 31
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->implements()V

    goto :goto_0

    .line 32
    :cond_8
    iput-boolean v1, p0, Lcom/suke/widget/SwitchButton;->e:Z

    .line 33
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->synchronized()V

    goto :goto_0

    .line 34
    :cond_9
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->continue()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 35
    invoke-direct {p0}, Lcom/suke/widget/SwitchButton;->implements()V

    goto :goto_0

    .line 36
    :cond_a
    iput-boolean v2, p0, Lcom/suke/widget/SwitchButton;->i:Z

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/suke/widget/SwitchButton;->m:J

    .line 38
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 39
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->n:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_0
    return v2
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/suke/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/suke/widget/SwitchButton;->f:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/suke/widget/SwitchButton;->b(ZZ)V

    return-void
.end method

.method public setEnableEffect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/suke/widget/SwitchButton;->f:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/suke/widget/SwitchButton$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/suke/widget/SwitchButton;->l:Lcom/suke/widget/SwitchButton$OnCheckedChangeListener;

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setShadowEffect(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/suke/widget/SwitchButton;->g:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/suke/widget/SwitchButton;->g:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->protected:Landroid/graphics/Paint;

    iget v1, p0, Lcom/suke/widget/SwitchButton;->else:I

    int-to-float v1, v1

    iget v2, p0, Lcom/suke/widget/SwitchButton;->goto:I

    int-to-float v2, v2

    iget v3, p0, Lcom/suke/widget/SwitchButton;->this:I

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/suke/widget/SwitchButton;->protected:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :goto_0
    return-void
.end method

.method public switch(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/suke/widget/SwitchButton;->implements:Lcom/suke/widget/SwitchButton$new;

    iget v3, v0, Lcom/suke/widget/SwitchButton$new;->for:I

    iget v0, p0, Lcom/suke/widget/SwitchButton;->default:I

    int-to-float v4, v0

    iget v0, p0, Lcom/suke/widget/SwitchButton;->final:F

    iget v1, p0, Lcom/suke/widget/SwitchButton;->break:F

    add-float v2, v0, v1

    iget v5, p0, Lcom/suke/widget/SwitchButton;->continue:F

    sub-float v5, v2, v5

    iget v2, p0, Lcom/suke/widget/SwitchButton;->native:F

    iget v6, p0, Lcom/suke/widget/SwitchButton;->extends:F

    sub-float v7, v2, v6

    add-float/2addr v0, v1

    iget v1, p0, Lcom/suke/widget/SwitchButton;->strictfp:F

    sub-float/2addr v0, v1

    add-float v8, v2, v6

    iget-object v9, p0, Lcom/suke/widget/SwitchButton;->transient:Landroid/graphics/Paint;

    move-object v1, p0

    move-object v2, p1

    move v6, v7

    move v7, v0

    invoke-virtual/range {v1 .. v9}, Lcom/suke/widget/SwitchButton;->throws(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public throws(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V
    .locals 6

    .line 1
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2
    invoke-virtual {p8, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p8, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v0, p1

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move-object v5, p8

    .line 4
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/suke/widget/SwitchButton;->a(Z)V

    return-void
.end method
