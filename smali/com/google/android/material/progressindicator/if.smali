.class final Lcom/google/android/material/progressindicator/if;
.super Lcom/google/android/material/progressindicator/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/try<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field private static final class:I = 0x4

.field private static final const:I = 0x1518

.field private static final default:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/if;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final final:I = 0x29b

.field private static final import:[I

.field private static final native:[I

.field private static final public:[I

.field private static final return:I = -0x14

.field private static final static:I = 0xfa

.field private static final super:I = 0x29b

.field private static final switch:I = 0x5f0

.field private static final throw:I = 0x14d

.field private static final throws:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/if;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final while:I = 0x14d


# instance fields
.field private break:F

.field private final case:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field public catch:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private final else:Landroid/support/v4/n7;

.field private goto:I

.field private new:Landroid/animation/ObjectAnimator;

.field private this:F

.field private try:Landroid/animation/ObjectAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Float;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/android/material/progressindicator/if;->import:[I

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/android/material/progressindicator/if;->native:[I

    new-array v1, v1, [I

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/material/progressindicator/if;->public:[I

    .line 4
    new-instance v1, Lcom/google/android/material/progressindicator/if$for;

    const-string v2, "animationFraction"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/progressindicator/if$for;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/if;->throws:Landroid/util/Property;

    .line 5
    new-instance v1, Lcom/google/android/material/progressindicator/if$new;

    const-string v2, "completeEndFraction"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/progressindicator/if$new;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/if;->default:Landroid/util/Property;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x546
        0xa8c
        0xfd2
    .end array-data

    :array_1
    .array-data 4
        0x29b
        0x7e1
        0xd27
        0x126d
    .end array-data

    :array_2
    .array-data 4
        0x3e8
        0x92e
        0xe74
        0x13ba
    .end array-data
.end method

.method public constructor <init>(Landroid/support/v4/zl;)V
    .locals 1
    .param p1    # Landroid/support/v4/zl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/try;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/material/progressindicator/if;->goto:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/material/progressindicator/if;->catch:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 4
    iput-object p1, p0, Lcom/google/android/material/progressindicator/if;->else:Landroid/support/v4/n7;

    .line 5
    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/if;->case:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    return-void
.end method

.method public static synthetic break(Lcom/google/android/material/progressindicator/if;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/progressindicator/if;->goto:I

    return p1
.end method

.method public static synthetic catch(Lcom/google/android/material/progressindicator/if;)Landroid/support/v4/n7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/if;->else:Landroid/support/v4/n7;

    return-object p0
.end method

.method public static synthetic class(Lcom/google/android/material/progressindicator/if;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/if;->super()F

    move-result p0

    return p0
.end method

.method public static synthetic const(Lcom/google/android/material/progressindicator/if;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/if;->throw()F

    move-result p0

    return p0
.end method

.method public static synthetic final(Lcom/google/android/material/progressindicator/if;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/if;->return(F)V

    return-void
.end method

.method private import(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 1
    sget-object v2, Lcom/google/android/material/progressindicator/if;->public:[I

    aget v2, v2, v1

    const/16 v3, 0x14d

    .line 2
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/material/progressindicator/try;->if(III)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    .line 3
    iget p1, p0, Lcom/google/android/material/progressindicator/if;->goto:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/google/android/material/progressindicator/if;->else:Landroid/support/v4/n7;

    iget-object p1, p1, Landroid/support/v4/n7;->for:[I

    array-length v3, p1

    rem-int/2addr v1, v3

    add-int/lit8 v3, v1, 0x1

    .line 4
    array-length v4, p1

    rem-int/2addr v3, v4

    .line 5
    aget p1, p1, v1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v1

    .line 7
    invoke-static {p1, v1}, Landroid/support/v4/qx0;->do(II)I

    move-result p1

    .line 8
    iget-object v1, p0, Lcom/google/android/material/progressindicator/if;->else:Landroid/support/v4/n7;

    iget-object v1, v1, Landroid/support/v4/n7;->for:[I

    aget v1, v1, v3

    iget-object v3, p0, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    .line 10
    invoke-static {v1, v3}, Landroid/support/v4/qx0;->do(II)I

    move-result v1

    .line 11
    iget-object v3, p0, Lcom/google/android/material/progressindicator/if;->case:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v3, v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v2

    .line 12
    iget-object v3, p0, Lcom/google/android/material/progressindicator/try;->for:[I

    .line 13
    invoke-static {}, Landroid/support/v4/h3;->if()Landroid/support/v4/h3;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v2, p1, v1}, Landroid/support/v4/h3;->do(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private return(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/progressindicator/if;->break:F

    return-void
.end method

.method private static(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/try;->if:[F

    iget v1, p0, Lcom/google/android/material/progressindicator/if;->this:F

    const/high16 v2, 0x44be0000    # 1520.0f

    mul-float v3, v1, v2

    const/high16 v4, -0x3e600000    # -20.0f

    add-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v0, v4

    mul-float v1, v1, v2

    const/4 v2, 0x1

    .line 2
    aput v1, v0, v2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/material/progressindicator/if;->import:[I

    aget v1, v1, v0

    const/16 v3, 0x29b

    .line 4
    invoke-virtual {p0, p1, v1, v3}, Lcom/google/android/material/progressindicator/try;->if(III)F

    move-result v1

    .line 5
    iget-object v5, p0, Lcom/google/android/material/progressindicator/try;->if:[F

    aget v6, v5, v2

    iget-object v7, p0, Lcom/google/android/material/progressindicator/if;->case:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v7, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v7, 0x437a0000    # 250.0f

    mul-float v1, v1, v7

    add-float/2addr v6, v1

    aput v6, v5, v2

    .line 6
    sget-object v1, Lcom/google/android/material/progressindicator/if;->native:[I

    aget v1, v1, v0

    .line 7
    invoke-virtual {p0, p1, v1, v3}, Lcom/google/android/material/progressindicator/try;->if(III)F

    move-result v1

    .line 8
    iget-object v3, p0, Lcom/google/android/material/progressindicator/try;->if:[F

    aget v5, v3, v4

    iget-object v6, p0, Lcom/google/android/material/progressindicator/if;->case:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v6, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float v1, v1, v7

    add-float/2addr v5, v1

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/progressindicator/try;->if:[F

    aget v0, p1, v4

    aget v1, p1, v2

    aget v3, p1, v4

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/google/android/material/progressindicator/if;->break:F

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    aput v0, p1, v4

    .line 10
    aget v0, p1, v4

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    aput v0, p1, v4

    .line 11
    aget v0, p1, v2

    div-float/2addr v0, v1

    aput v0, p1, v2

    return-void
.end method

.method private super()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/progressindicator/if;->this:F

    return v0
.end method

.method public static synthetic this(Lcom/google/android/material/progressindicator/if;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/progressindicator/if;->goto:I

    return p0
.end method

.method private throw()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/progressindicator/if;->break:F

    return v0
.end method

.method private while()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/if;->new:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/material/progressindicator/if;->throws:Landroid/util/Property;

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/if;->new:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1518

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    iget-object v0, p0, Lcom/google/android/material/progressindicator/if;->new:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/progressindicator/if;->new:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/progressindicator/if;->new:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/google/android/material/progressindicator/if$do;

    invoke-direct {v2, p0}, Lcom/google/android/material/progressindicator/if$do;-><init>(Lcom/google/android/material/progressindicator/if;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/if;->try:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lcom/google/android/material/progressindicator/if;->default:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/if;->try:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 10
    iget-object v0, p0, Lcom/google/android/material/progressindicator/if;->try:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/if;->case:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/material/progressindicator/if;->try:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/if$if;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/if$if;-><init>(Lcom/google/android/material/progressindicator/if;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/if;->try:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/progressindicator/if;->try:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/if;->do()V

    :goto_0
    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/if;->new:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public else()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/if;->while()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/if;->native()V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/progressindicator/if;->new:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public for()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/if;->native()V

    return-void
.end method

.method public goto()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/material/progressindicator/if;->catch:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method public native()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/material/progressindicator/if;->goto:I

    .line 2
    iget-object v1, p0, Lcom/google/android/material/progressindicator/try;->for:[I

    iget-object v2, p0, Lcom/google/android/material/progressindicator/if;->else:Landroid/support/v4/n7;

    iget-object v2, v2, Landroid/support/v4/n7;->for:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v4/qx0;->do(II)I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/material/progressindicator/if;->break:F

    return-void
.end method

.method public new(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/if;->catch:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method public public(F)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/progressindicator/if;->this:F

    const v0, 0x45a8c000    # 5400.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/if;->static(I)V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/if;->import(I)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
