.class final Lcom/google/android/material/progressindicator/else;
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
.field private static final break:I = 0x29b

.field private static final catch:I = 0x14d

.field private static final class:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/else;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final case:Landroid/support/v4/n7;

.field private else:I

.field private goto:Z

.field private new:Landroid/animation/ObjectAnimator;

.field private this:F

.field private try:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/progressindicator/else$if;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/else$if;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/else;->class:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/ft0;)V
    .locals 1
    .param p1    # Landroid/support/v4/ft0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/try;-><init>(I)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/material/progressindicator/else;->else:I

    .line 3
    iput-object p1, p0, Lcom/google/android/material/progressindicator/else;->case:Landroid/support/v4/n7;

    .line 4
    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/else;->try:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    return-void
.end method

.method public static synthetic break(Lcom/google/android/material/progressindicator/else;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/progressindicator/else;->else:I

    return p1
.end method

.method public static synthetic catch(Lcom/google/android/material/progressindicator/else;)Landroid/support/v4/n7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/else;->case:Landroid/support/v4/n7;

    return-object p0
.end method

.method public static synthetic class(Lcom/google/android/material/progressindicator/else;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/else;->goto:Z

    return p1
.end method

.method public static synthetic const(Lcom/google/android/material/progressindicator/else;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/else;->final()F

    move-result p0

    return p0
.end method

.method private final()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/progressindicator/else;->this:F

    return v0
.end method

.method private native(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/try;->if:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v0, 0x29b

    .line 2
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/material/progressindicator/try;->if(III)F

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/progressindicator/try;->if:[F

    iget-object v1, p0, Lcom/google/android/material/progressindicator/else;->try:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v1, p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const v0, 0x3eff9dbf

    add-float/2addr p1, v0

    .line 4
    iget-object v0, p0, Lcom/google/android/material/progressindicator/try;->if:[F

    iget-object v1, p0, Lcom/google/android/material/progressindicator/else;->try:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v1, p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result p1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 5
    iget-object p1, p0, Lcom/google/android/material/progressindicator/try;->if:[F

    const/4 v0, 0x5

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    return-void
.end method

.method private super()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/else;->new:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/material/progressindicator/else;->class:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/else;->new:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    iget-object v0, p0, Lcom/google/android/material/progressindicator/else;->new:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/progressindicator/else;->new:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/progressindicator/else;->new:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/else$do;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/else$do;-><init>(Lcom/google/android/material/progressindicator/else;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic this(Lcom/google/android/material/progressindicator/else;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/progressindicator/else;->else:I

    return p0
.end method

.method private throw()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/else;->goto:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/progressindicator/try;->if:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/progressindicator/try;->for:[I

    const/4 v1, 0x2

    const/4 v2, 0x1

    aget v3, v0, v2

    aput v3, v0, v1

    const/4 v1, 0x0

    .line 3
    aget v3, v0, v1

    aput v3, v0, v2

    .line 4
    iget-object v2, p0, Lcom/google/android/material/progressindicator/else;->case:Landroid/support/v4/n7;

    iget-object v2, v2, Landroid/support/v4/n7;->for:[I

    iget v3, p0, Lcom/google/android/material/progressindicator/else;->else:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    .line 6
    invoke-static {v2, v3}, Landroid/support/v4/qx0;->do(II)I

    move-result v2

    aput v2, v0, v1

    .line 7
    iput-boolean v1, p0, Lcom/google/android/material/progressindicator/else;->goto:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/else;->new:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public else()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/else;->super()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/else;->while()V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/progressindicator/else;->new:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public for()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/else;->while()V

    return-void
.end method

.method public goto()V
    .locals 0

    return-void
.end method

.method public import(F)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/progressindicator/else;->this:F

    const v0, 0x43a68000    # 333.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/else;->native(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/else;->throw()V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public new(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public while()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/else;->goto:Z

    .line 2
    iput v0, p0, Lcom/google/android/material/progressindicator/else;->else:I

    .line 3
    iget-object v0, p0, Lcom/google/android/material/progressindicator/try;->for:[I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/else;->case:Landroid/support/v4/n7;

    iget-object v1, v1, Landroid/support/v4/n7;->for:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/qx0;->do(II)I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method
