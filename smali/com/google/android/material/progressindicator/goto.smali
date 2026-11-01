.class final Lcom/google/android/material/progressindicator/goto;
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
.field private static final class:I = 0x708

.field private static final const:[I

.field private static final final:[I

.field private static final super:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/goto;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private break:Z

.field private final case:Landroid/support/v4/n7;

.field public catch:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private else:I

.field private goto:Z

.field private new:Landroid/animation/ObjectAnimator;

.field private this:F

.field private final try:[Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/material/progressindicator/goto;->const:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/progressindicator/goto;->final:[I

    .line 3
    new-instance v0, Lcom/google/android/material/progressindicator/goto$if;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/goto$if;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/goto;->super:Landroid/util/Property;

    return-void

    nop

    :array_0
    .array-data 4
        0x215
        0x237
        0x352
        0x2ee
    .end array-data

    :array_1
    .array-data 4
        0x4f3
        0x3e8
        0x14d
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/ft0;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/ft0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/try;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/google/android/material/progressindicator/goto;->else:I

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lcom/google/android/material/progressindicator/goto;->catch:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 4
    iput-object p2, p0, Lcom/google/android/material/progressindicator/goto;->case:Landroid/support/v4/n7;

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/view/animation/Interpolator;

    .line 5
    sget v2, Lcom/google/android/material/R$animator;->linear_indeterminate_line1_head_interpolator:I

    .line 6
    invoke-static {p1, v2}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    aput-object v2, p2, v1

    sget v1, Lcom/google/android/material/R$animator;->linear_indeterminate_line1_tail_interpolator:I

    .line 7
    invoke-static {p1, v1}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p2, v2

    sget v1, Lcom/google/android/material/R$animator;->linear_indeterminate_line2_head_interpolator:I

    .line 8
    invoke-static {p1, v1}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    aput-object v1, p2, v0

    sget v0, Lcom/google/android/material/R$animator;->linear_indeterminate_line2_tail_interpolator:I

    .line 9
    invoke-static {p1, v0}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/google/android/material/progressindicator/goto;->try:[Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static synthetic break(Lcom/google/android/material/progressindicator/goto;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/progressindicator/goto;->else:I

    return p1
.end method

.method public static synthetic catch(Lcom/google/android/material/progressindicator/goto;)Landroid/support/v4/n7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/goto;->case:Landroid/support/v4/n7;

    return-object p0
.end method

.method public static synthetic class(Lcom/google/android/material/progressindicator/goto;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/goto;->goto:Z

    return p1
.end method

.method public static synthetic const(Lcom/google/android/material/progressindicator/goto;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/progressindicator/goto;->break:Z

    return p0
.end method

.method public static synthetic final(Lcom/google/android/material/progressindicator/goto;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/goto;->break:Z

    return p1
.end method

.method private import()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/goto;->new:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/material/progressindicator/goto;->super:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/goto;->new:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x708

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    iget-object v0, p0, Lcom/google/android/material/progressindicator/goto;->new:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/progressindicator/goto;->new:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/progressindicator/goto;->new:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/goto$do;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/goto$do;-><init>(Lcom/google/android/material/progressindicator/goto;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private native()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/goto;->goto:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/progressindicator/try;->for:[I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/goto;->case:Landroid/support/v4/n7;

    iget-object v1, v1, Landroid/support/v4/n7;->for:[I

    iget v2, p0, Lcom/google/android/material/progressindicator/goto;->else:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v2

    .line 4
    invoke-static {v1, v2}, Landroid/support/v4/qx0;->do(II)I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/goto;->goto:Z

    :cond_0
    return-void
.end method

.method private static(I)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1
    sget-object v1, Lcom/google/android/material/progressindicator/goto;->final:[I

    aget v1, v1, v0

    sget-object v2, Lcom/google/android/material/progressindicator/goto;->const:[I

    aget v2, v2, v0

    .line 2
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/material/progressindicator/try;->if(III)F

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/material/progressindicator/goto;->try:[Landroid/view/animation/Interpolator;

    aget-object v2, v2, v0

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/google/android/material/progressindicator/try;->if:[F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic super(Lcom/google/android/material/progressindicator/goto;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/goto;->new:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static synthetic this(Lcom/google/android/material/progressindicator/goto;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/progressindicator/goto;->else:I

    return p0
.end method

.method public static synthetic throw(Lcom/google/android/material/progressindicator/goto;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/goto;->while()F

    move-result p0

    return p0
.end method

.method private while()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/progressindicator/goto;->this:F

    return v0
.end method


# virtual methods
.method public case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/goto;->break:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/material/progressindicator/goto;->new:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/goto;->do()V

    :goto_0
    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/goto;->new:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public else()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/goto;->import()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/goto;->public()V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/progressindicator/goto;->new:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public for()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/goto;->public()V

    return-void
.end method

.method public goto()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/material/progressindicator/goto;->catch:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method public new(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/goto;->catch:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method public public()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/material/progressindicator/goto;->else:I

    .line 2
    iget-object v1, p0, Lcom/google/android/material/progressindicator/goto;->case:Landroid/support/v4/n7;

    iget-object v1, v1, Landroid/support/v4/n7;->for:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/qx0;->do(II)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/google/android/material/progressindicator/try;->for:[I

    aput v1, v2, v0

    const/4 v0, 0x1

    .line 5
    aput v1, v2, v0

    return-void
.end method

.method public return(F)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/progressindicator/goto;->this:F

    const/high16 v0, 0x44e10000    # 1800.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/goto;->static(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/goto;->native()V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
