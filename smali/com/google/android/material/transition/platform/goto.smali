.class public final Lcom/google/android/material/transition/platform/goto;
.super Landroid/transition/Transition;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/goto$case;,
        Lcom/google/android/material/transition/platform/goto$try;,
        Lcom/google/android/material/transition/platform/goto$goto;,
        Lcom/google/android/material/transition/platform/goto$new;,
        Lcom/google/android/material/transition/platform/goto$for;,
        Lcom/google/android/material/transition/platform/goto$else;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/material/transition/platform/goto$case;

.field public static final abstract:I = 0x1

.field private static final b:Lcom/google/android/material/transition/platform/goto$case;

.field private static final c:Lcom/google/android/material/transition/platform/goto$case;

.field public static final continue:I = 0x2

.field private static final d:Lcom/google/android/material/transition/platform/goto$case;

.field private static final e:F = -1.0f

.field public static final extends:I = 0x0

.field public static final finally:I = 0x1

.field private static final implements:Ljava/lang/String; = "materialContainerTransition:bounds"

.field private static final instanceof:Ljava/lang/String; = "materialContainerTransition:shapeAppearance"

.field public static final interface:I = 0x1

.field public static final package:I = 0x2

.field public static final private:I = 0x0

.field public static final protected:I = 0x2

.field public static final strictfp:I = 0x3

.field private static final synchronized:[Ljava/lang/String;

.field private static final transient:Ljava/lang/String;

.field public static final volatile:I


# instance fields
.field private break:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private case:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private catch:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private class:I

.field private const:I

.field private default:F

.field private do:Z

.field private else:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private final:I

.field private for:Z

.field private goto:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private if:Z

.field private import:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private native:Lcom/google/android/material/transition/platform/goto$try;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private new:Z

.field private public:Lcom/google/android/material/transition/platform/goto$try;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private return:Lcom/google/android/material/transition/platform/goto$try;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static:Lcom/google/android/material/transition/platform/goto$try;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private super:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private switch:Z

.field private this:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private throw:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private throws:F

.field private try:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private while:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    const-class v0, Lcom/google/android/material/transition/platform/goto;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/platform/goto;->transient:Ljava/lang/String;

    const-string v0, "materialContainerTransition:bounds"

    const-string v1, "materialContainerTransition:shapeAppearance"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/platform/goto;->synchronized:[Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/google/android/material/transition/platform/goto$case;

    new-instance v2, Lcom/google/android/material/transition/platform/goto$try;

    const/4 v7, 0x0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v2, v7, v1}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/platform/goto$try;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/platform/goto$try;

    invoke-direct {v4, v7, v8}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    new-instance v5, Lcom/google/android/material/transition/platform/goto$try;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v5, v7, v1}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/platform/goto$case;-><init>(Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$do;)V

    sput-object v0, Lcom/google/android/material/transition/platform/goto;->a:Lcom/google/android/material/transition/platform/goto$case;

    .line 4
    new-instance v0, Lcom/google/android/material/transition/platform/goto$case;

    new-instance v10, Lcom/google/android/material/transition/platform/goto$try;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v10, v1, v2}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    new-instance v11, Lcom/google/android/material/transition/platform/goto$try;

    invoke-direct {v11, v7, v8}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    new-instance v12, Lcom/google/android/material/transition/platform/goto$try;

    invoke-direct {v12, v7, v2}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    new-instance v13, Lcom/google/android/material/transition/platform/goto$try;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v13, v3, v2}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/transition/platform/goto$case;-><init>(Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$do;)V

    sput-object v0, Lcom/google/android/material/transition/platform/goto;->b:Lcom/google/android/material/transition/platform/goto$case;

    .line 5
    new-instance v0, Lcom/google/android/material/transition/platform/goto$case;

    new-instance v3, Lcom/google/android/material/transition/platform/goto$try;

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    new-instance v5, Lcom/google/android/material/transition/platform/goto$try;

    invoke-direct {v5, v4, v8}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    new-instance v6, Lcom/google/android/material/transition/platform/goto$try;

    invoke-direct {v6, v4, v8}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    new-instance v8, Lcom/google/android/material/transition/platform/goto$try;

    invoke-direct {v8, v4, v2}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    const/16 v20, 0x0

    move-object v15, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    invoke-direct/range {v15 .. v20}, Lcom/google/android/material/transition/platform/goto$case;-><init>(Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$do;)V

    sput-object v0, Lcom/google/android/material/transition/platform/goto;->c:Lcom/google/android/material/transition/platform/goto$case;

    .line 6
    new-instance v0, Lcom/google/android/material/transition/platform/goto$case;

    new-instance v10, Lcom/google/android/material/transition/platform/goto$try;

    invoke-direct {v10, v1, v2}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    new-instance v11, Lcom/google/android/material/transition/platform/goto$try;

    invoke-direct {v11, v7, v2}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    new-instance v12, Lcom/google/android/material/transition/platform/goto$try;

    invoke-direct {v12, v7, v2}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    new-instance v13, Lcom/google/android/material/transition/platform/goto$try;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v13, v1, v2}, Lcom/google/android/material/transition/platform/goto$try;-><init>(FF)V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/transition/platform/goto$case;-><init>(Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$do;)V

    sput-object v0, Lcom/google/android/material/transition/platform/goto;->d:Lcom/google/android/material/transition/platform/goto$case;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/goto;->do:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/goto;->if:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/goto;->for:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/goto;->new:Z

    const v1, 0x1020002

    .line 6
    iput v1, p0, Lcom/google/android/material/transition/platform/goto;->try:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/google/android/material/transition/platform/goto;->case:I

    .line 8
    iput v1, p0, Lcom/google/android/material/transition/platform/goto;->else:I

    .line 9
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->goto:I

    .line 10
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->this:I

    .line 11
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->break:I

    const/high16 v1, 0x52000000

    .line 12
    iput v1, p0, Lcom/google/android/material/transition/platform/goto;->catch:I

    .line 13
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->class:I

    .line 14
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->const:I

    .line 15
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->final:I

    .line 16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/goto;->switch:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 17
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->throws:F

    .line 18
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->default:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/goto;->do:Z

    .line 21
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/goto;->if:Z

    .line 22
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/goto;->for:Z

    .line 23
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/goto;->new:Z

    const v1, 0x1020002

    .line 24
    iput v1, p0, Lcom/google/android/material/transition/platform/goto;->try:I

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/google/android/material/transition/platform/goto;->case:I

    .line 26
    iput v1, p0, Lcom/google/android/material/transition/platform/goto;->else:I

    .line 27
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->goto:I

    .line 28
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->this:I

    .line 29
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->break:I

    const/high16 v1, 0x52000000

    .line 30
    iput v1, p0, Lcom/google/android/material/transition/platform/goto;->catch:I

    .line 31
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->class:I

    .line 32
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->const:I

    .line 33
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->final:I

    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/goto;->switch:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->throws:F

    .line 36
    iput v0, p0, Lcom/google/android/material/transition/platform/goto;->default:F

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transition/platform/goto;->interface(Landroid/content/Context;Z)V

    .line 38
    iput-boolean v2, p0, Lcom/google/android/material/transition/platform/goto;->new:Z

    return-void
.end method

.method public static synthetic do(Lcom/google/android/material/transition/platform/goto;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/transition/platform/goto;->if:Z

    return p0
.end method

.method private finally(ZLcom/google/android/material/transition/platform/goto$case;Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$case;
    .locals 6

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 1
    :goto_0
    new-instance p1, Lcom/google/android/material/transition/platform/goto$case;

    iget-object p3, p0, Lcom/google/android/material/transition/platform/goto;->native:Lcom/google/android/material/transition/platform/goto$try;

    .line 2
    invoke-static {p2}, Lcom/google/android/material/transition/platform/goto$case;->do(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->new(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/google/android/material/transition/platform/goto$try;

    iget-object p3, p0, Lcom/google/android/material/transition/platform/goto;->public:Lcom/google/android/material/transition/platform/goto$try;

    .line 3
    invoke-static {p2}, Lcom/google/android/material/transition/platform/goto$case;->if(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->new(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/google/android/material/transition/platform/goto$try;

    iget-object p3, p0, Lcom/google/android/material/transition/platform/goto;->return:Lcom/google/android/material/transition/platform/goto$try;

    .line 4
    invoke-static {p2}, Lcom/google/android/material/transition/platform/goto$case;->for(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->new(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/google/android/material/transition/platform/goto$try;

    iget-object p3, p0, Lcom/google/android/material/transition/platform/goto;->static:Lcom/google/android/material/transition/platform/goto$try;

    .line 5
    invoke-static {p2}, Lcom/google/android/material/transition/platform/goto$case;->new(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->new(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/google/android/material/transition/platform/goto$try;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/goto$case;-><init>(Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$do;)V

    return-object p1
.end method

.method private static for(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->this(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-direct {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method private static goto(FLandroid/view/View;)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method private if(Z)Lcom/google/android/material/transition/platform/goto$case;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/transition/ArcMotion;

    if-nez v1, :cond_1

    instance-of v0, v0, Landroid/support/v4/ox0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/material/transition/platform/goto;->a:Lcom/google/android/material/transition/platform/goto$case;

    sget-object v1, Lcom/google/android/material/transition/platform/goto;->b:Lcom/google/android/material/transition/platform/goto$case;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/goto;->finally(ZLcom/google/android/material/transition/platform/goto$case;Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$case;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/material/transition/platform/goto;->c:Lcom/google/android/material/transition/platform/goto$case;

    sget-object v1, Lcom/google/android/material/transition/platform/goto;->d:Lcom/google/android/material/transition/platform/goto$case;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/goto;->finally(ZLcom/google/android/material/transition/platform/goto$case;Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$case;

    move-result-object p1

    return-object p1
.end method

.method private interface(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v1, Landroid/support/v4/w1;->if:Landroid/animation/TimeInterpolator;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/TransitionUtils;->return(Landroid/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z

    if-eqz p2, :cond_0

    .line 2
    sget p2, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/google/android/material/R$attr;->motionDurationMedium2:I

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->public(Landroid/transition/Transition;Landroid/content/Context;I)Z

    .line 3
    iget-boolean p2, p0, Lcom/google/android/material/transition/platform/goto;->for:Z

    if-nez p2, :cond_1

    .line 4
    sget p2, Lcom/google/android/material/R$attr;->motionPath:I

    invoke-static {p0, p1, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->static(Landroid/transition/Transition;Landroid/content/Context;I)Z

    :cond_1
    return-void
.end method

.method private static new(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p2}, Lcom/google/android/material/transition/platform/goto;->public(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->if(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    return-object p0
.end method

.method private static private(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    sget v1, Lcom/google/android/material/R$attr;->transitionShapeAppearance:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private static public(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    sget p1, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/material/transition/platform/goto;->private(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x0

    .line 5
    invoke-static {p1, v0, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->if(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->const()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    instance-of p1, p0, Lcom/google/android/material/shape/Shapeable;

    if-eqz p1, :cond_3

    .line 7
    check-cast p0, Lcom/google/android/material/shape/Shapeable;

    invoke-interface {p0}, Lcom/google/android/material/shape/Shapeable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->do()Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->const()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    return-object p0
.end method

.method private strictfp(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->class:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid transition direction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->class:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v2

    .line 3
    :cond_2
    invoke-static {p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->do(Landroid/graphics/RectF;)F

    move-result p2

    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->do(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private static try(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2
    .param p0    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->case(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget p2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 5
    iget-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 8
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eqz p2, :cond_5

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->break(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->this(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    .line 10
    :goto_1
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "materialContainerTransition:bounds"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 12
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/platform/goto;->new(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    const-string p2, "materialContainerTransition:shapeAppearance"

    .line 13
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->break:I

    return-void
.end method

.method public abstract()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/goto;->do:Z

    return v0
.end method

.method public b(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->default:F

    return-void
.end method

.method public break()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->default:F

    return v0
.end method

.method public c(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/goto;->import:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto;->throw:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/platform/goto;->else:I

    iget-object v2, p0, Lcom/google/android/material/transition/platform/goto;->import:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/goto;->try(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto;->super:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/platform/goto;->case:I

    iget-object v2, p0, Lcom/google/android/material/transition/platform/goto;->while:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/goto;->try(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public case()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->goto:I

    return v0
.end method

.method public catch()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto;->import:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public class()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto;->throw:Landroid/view/View;

    return-object v0
.end method

.method public const()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->else:I

    return v0
.end method

.method public continue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/goto;->switch:Z

    return v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 29
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "materialContainerTransition:bounds"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/graphics/RectF;

    .line 2
    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "materialContainerTransition:shapeAppearance"

    .line 3
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v10, :cond_6

    if-nez v11, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/graphics/RectF;

    .line 5
    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 6
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v14, :cond_6

    if-nez v15, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 8
    iget-object v5, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 9
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v0, v5

    goto :goto_0

    :cond_3
    move-object v0, v4

    .line 10
    :goto_0
    iget v1, v6, Lcom/google/android/material/transition/platform/goto;->try:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    .line 12
    :cond_4
    iget v1, v6, Lcom/google/android/material/transition/platform/goto;->try:I

    invoke-static {v0, v1}, Lcom/google/android/material/transition/platform/TransitionUtils;->try(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v28, v2

    move-object v2, v1

    move-object/from16 v1, v28

    .line 13
    :goto_1
    invoke-static {v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->this(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v3

    .line 14
    iget v7, v3, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    .line 15
    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    .line 16
    invoke-static {v2, v1, v7, v3}, Lcom/google/android/material/transition/platform/goto;->for(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;

    move-result-object v1

    .line 17
    invoke-virtual {v10, v7, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 18
    invoke-virtual {v14, v7, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 19
    invoke-direct {v6, v10, v14}, Lcom/google/android/material/transition/platform/goto;->strictfp(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    .line 20
    iget-boolean v7, v6, Lcom/google/android/material/transition/platform/goto;->new:Z

    if-nez v7, :cond_5

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0, v3}, Lcom/google/android/material/transition/platform/goto;->interface(Landroid/content/Context;Z)V

    .line 22
    :cond_5
    new-instance v0, Lcom/google/android/material/transition/platform/goto$goto;

    move-object v7, v0

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v8

    iget v9, v6, Lcom/google/android/material/transition/platform/goto;->throws:F

    .line 24
    invoke-static {v9, v4}, Lcom/google/android/material/transition/platform/goto;->goto(FLandroid/view/View;)F

    move-result v12

    iget v9, v6, Lcom/google/android/material/transition/platform/goto;->default:F

    .line 25
    invoke-static {v9, v5}, Lcom/google/android/material/transition/platform/goto;->goto(FLandroid/view/View;)F

    move-result v16

    iget v9, v6, Lcom/google/android/material/transition/platform/goto;->goto:I

    move/from16 v17, v9

    iget v9, v6, Lcom/google/android/material/transition/platform/goto;->this:I

    move/from16 v18, v9

    iget v9, v6, Lcom/google/android/material/transition/platform/goto;->break:I

    move/from16 v19, v9

    iget v9, v6, Lcom/google/android/material/transition/platform/goto;->catch:I

    move/from16 v20, v9

    iget-boolean v9, v6, Lcom/google/android/material/transition/platform/goto;->switch:Z

    move/from16 v22, v9

    iget v9, v6, Lcom/google/android/material/transition/platform/goto;->const:I

    .line 26
    invoke-static {v9, v3}, Lcom/google/android/material/transition/platform/do;->do(IZ)Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    move-result-object v23

    iget v9, v6, Lcom/google/android/material/transition/platform/goto;->final:I

    .line 27
    invoke-static {v9, v3, v10, v14}, Lcom/google/android/material/transition/platform/try;->do(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/platform/FitModeEvaluator;

    move-result-object v24

    .line 28
    invoke-direct {v6, v3}, Lcom/google/android/material/transition/platform/goto;->if(Z)Lcom/google/android/material/transition/platform/goto$case;

    move-result-object v25

    iget-boolean v9, v6, Lcom/google/android/material/transition/platform/goto;->do:Z

    move/from16 v26, v9

    const/16 v27, 0x0

    move-object v9, v4

    move-object v13, v5

    move/from16 v21, v3

    invoke-direct/range {v7 .. v27}, Lcom/google/android/material/transition/platform/goto$goto;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/goto$case;ZLcom/google/android/material/transition/platform/goto$do;)V

    .line 29
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 30
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v7, v1, Landroid/graphics/RectF;->top:F

    .line 31
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    .line 32
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 33
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 34
    invoke-virtual {v0, v3, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 35
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 36
    new-instance v1, Lcom/google/android/material/transition/platform/goto$do;

    invoke-direct {v1, v6, v0}, Lcom/google/android/material/transition/platform/goto$do;-><init>(Lcom/google/android/material/transition/platform/goto;Lcom/google/android/material/transition/platform/goto$goto;)V

    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    new-instance v8, Lcom/google/android/material/transition/platform/goto$if;

    move-object v3, v0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/goto$if;-><init>(Lcom/google/android/material/transition/platform/goto;Landroid/view/View;Lcom/google/android/material/transition/platform/goto$goto;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v8}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-object v7

    :cond_6
    :goto_2
    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public d(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/goto;->throw:Landroid/view/View;

    return-void
.end method

.method public default()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto;->super:Landroid/view/View;

    return-object v0
.end method

.method public e(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->else:I

    return-void
.end method

.method public else()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->try:I

    return v0
.end method

.method public extends()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->case:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->const:I

    return-void
.end method

.method public final()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->const:I

    return v0
.end method

.method public g(Lcom/google/android/material/transition/platform/goto$try;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/goto$try;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/goto;->native:Lcom/google/android/material/transition/platform/goto$try;

    return-void
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/material/transition/platform/goto;->synchronized:[Ljava/lang/String;

    return-object v0
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->final:I

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/goto;->if:Z

    return-void
.end method

.method public implements(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/goto;->do:Z

    return-void
.end method

.method public import()Lcom/google/android/material/transition/platform/goto$try;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto;->public:Lcom/google/android/material/transition/platform/goto$try;

    return-object v0
.end method

.method public instanceof(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->try:I

    return-void
.end method

.method public j(Lcom/google/android/material/transition/platform/goto$try;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/goto$try;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/goto;->return:Lcom/google/android/material/transition/platform/goto$try;

    return-void
.end method

.method public k(Lcom/google/android/material/transition/platform/goto$try;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/goto$try;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/goto;->public:Lcom/google/android/material/transition/platform/goto$try;

    return-void
.end method

.method public l(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->catch:I

    return-void
.end method

.method public m(Lcom/google/android/material/transition/platform/goto$try;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/goto$try;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/goto;->static:Lcom/google/android/material/transition/platform/goto$try;

    return-void
.end method

.method public n(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->this:I

    return-void
.end method

.method public native()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->catch:I

    return v0
.end method

.method public o(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->throws:F

    return-void
.end method

.method public p(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/goto;->while:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method public package()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->class:I

    return v0
.end method

.method public protected(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->goto:I

    .line 2
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->this:I

    .line 3
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->break:I

    return-void
.end method

.method public q(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/goto;->super:Landroid/view/View;

    return-void
.end method

.method public r(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->case:I

    return-void
.end method

.method public return()Lcom/google/android/material/transition/platform/goto$try;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto;->static:Lcom/google/android/material/transition/platform/goto$try;

    return-object v0
.end method

.method public s(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->class:I

    return-void
.end method

.method public setPathMotion(Landroid/transition/PathMotion;)V
    .locals 0
    .param p1    # Landroid/transition/PathMotion;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/goto;->for:Z

    return-void
.end method

.method public static()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->this:I

    return v0
.end method

.method public super()Lcom/google/android/material/transition/platform/goto$try;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto;->native:Lcom/google/android/material/transition/platform/goto$try;

    return-object v0
.end method

.method public switch()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->throws:F

    return v0
.end method

.method public synchronized(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/goto;->switch:Z

    return-void
.end method

.method public this()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->break:I

    return v0
.end method

.method public throw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto;->final:I

    return v0
.end method

.method public throws()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto;->while:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public transient(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto;->goto:I

    return-void
.end method

.method public volatile()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/goto;->if:Z

    return v0
.end method

.method public while()Lcom/google/android/material/transition/platform/goto$try;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto;->return:Lcom/google/android/material/transition/platform/goto$try;

    return-object v0
.end method
