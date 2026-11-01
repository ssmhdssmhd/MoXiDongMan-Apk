.class public Lcom/scwang/smartrefresh/header/internal/do;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/internal/do$new;,
        Lcom/scwang/smartrefresh/header/internal/do$for;
    }
.end annotation


# static fields
.field private static final abstract:B = 0xct

.field private static final break:Landroid/view/animation/Interpolator;

.field public static final catch:Landroid/view/animation/Interpolator;

.field private static final class:F = 1080.0f

.field public static final const:B = 0x0t

.field private static final continue:B = 0x6t

.field private static final default:I = 0x534

.field private static final extends:B = 0x5t

.field public static final final:B = 0x1t

.field private static final finally:B = 0xat

.field private static final import:B = 0x38t

.field private static final native:F = 12.5f

.field private static final package:B = 0x5t

.field private static final private:F = 5.0f

.field private static final public:F = 3.0f

.field private static final return:[I

.field private static final static:F = 0.75f

.field private static final strictfp:F = 0.8f

.field private static final super:B = 0x28t

.field private static final switch:F = 0.5f

.field private static final throw:F = 8.75f

.field private static final throws:F = 0.5f

.field private static final while:F = 2.5f


# instance fields
.field public case:F

.field private final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private else:F

.field private for:F

.field private goto:F

.field private final if:Lcom/scwang/smartrefresh/header/internal/do$new;

.field private new:Landroid/view/View;

.field public this:Z

.field private try:Landroid/view/animation/Animation;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/scwang/smartrefresh/header/internal/do;->break:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/scwang/smartrefresh/header/internal/do;->catch:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 3
    sput-object v0, Lcom/scwang/smartrefresh/header/internal/do;->return:[I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->do:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/scwang/smartrefresh/header/internal/do$new;

    invoke-direct {v0, p0}, Lcom/scwang/smartrefresh/header/internal/do$new;-><init>(Lcom/scwang/smartrefresh/header/internal/do;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    .line 4
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/internal/do;->new:Landroid/view/View;

    .line 5
    sget-object p1, Lcom/scwang/smartrefresh/header/internal/do;->return:[I

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/header/internal/do;->case([I)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/header/internal/do;->final(I)V

    .line 7
    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/internal/do;->catch()V

    return-void
.end method

.method private catch()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    .line 2
    new-instance v1, Lcom/scwang/smartrefresh/header/internal/do$do;

    invoke-direct {v1, p0, v0}, Lcom/scwang/smartrefresh/header/internal/do$do;-><init>(Lcom/scwang/smartrefresh/header/internal/do;Lcom/scwang/smartrefresh/header/internal/do$new;)V

    const/4 v2, -0x1

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 5
    sget-object v2, Lcom/scwang/smartrefresh/header/internal/do;->break:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6
    new-instance v2, Lcom/scwang/smartrefresh/header/internal/do$if;

    invoke-direct {v2, p0, v0}, Lcom/scwang/smartrefresh/header/internal/do$if;-><init>(Lcom/scwang/smartrefresh/header/internal/do;Lcom/scwang/smartrefresh/header/internal/do$new;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7
    iput-object v1, p0, Lcom/scwang/smartrefresh/header/internal/do;->try:Landroid/view/animation/Animation;

    return-void
.end method

.method private if(FII)I
    .locals 6

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method private this(IIFFFF)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    .line 3
    iput p1, p0, Lcom/scwang/smartrefresh/header/internal/do;->else:F

    int-to-float p1, p2

    mul-float p1, p1, v0

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/header/internal/do;->goto:F

    .line 5
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/header/internal/do$new;->goto(I)V

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    iget-object p1, p1, Lcom/scwang/smartrefresh/header/internal/do$new;->if:Landroid/graphics/Paint;

    mul-float p4, p4, v0

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    iput p4, p1, Lcom/scwang/smartrefresh/header/internal/do$new;->else:F

    mul-float p3, p3, v0

    float-to-double p2, p3

    .line 8
    iput-wide p2, p1, Lcom/scwang/smartrefresh/header/internal/do$new;->while:D

    mul-float p5, p5, v0

    float-to-int p2, p5

    .line 9
    iput p2, p1, Lcom/scwang/smartrefresh/header/internal/do$new;->import:I

    mul-float p6, p6, v0

    float-to-int p2, p6

    .line 10
    iput p2, p1, Lcom/scwang/smartrefresh/header/internal/do$new;->native:I

    .line 11
    iget p2, p0, Lcom/scwang/smartrefresh/header/internal/do;->else:F

    float-to-int p2, p2

    iget p3, p0, Lcom/scwang/smartrefresh/header/internal/do;->goto:F

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Lcom/scwang/smartrefresh/header/internal/do$new;->this(II)V

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public break(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    iput p1, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->new:F

    .line 2
    iput p2, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->try:F

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public varargs case([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    iput-object p1, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->this:[I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/header/internal/do$new;->goto(I)V

    return-void
.end method

.method public class(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->final:Z

    if-eq v1, p1, :cond_0

    .line 2
    iput-boolean p1, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->final:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public const(FLcom/scwang/smartrefresh/header/internal/do$new;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    .line 1
    invoke-virtual {p2}, Lcom/scwang/smartrefresh/header/internal/do$new;->try()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/scwang/smartrefresh/header/internal/do$new;->for()I

    move-result v1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/header/internal/do;->if(FII)I

    move-result p1

    iput p1, p2, Lcom/scwang/smartrefresh/header/internal/do$new;->switch:I

    :cond_0
    return-void
.end method

.method public do(FLcom/scwang/smartrefresh/header/internal/do$new;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/internal/do;->const(FLcom/scwang/smartrefresh/header/internal/do$new;)V

    .line 2
    iget v0, p2, Lcom/scwang/smartrefresh/header/internal/do$new;->const:F

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 3
    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/header/internal/do;->for(Lcom/scwang/smartrefresh/header/internal/do$new;)F

    move-result v1

    .line 4
    iget v2, p2, Lcom/scwang/smartrefresh/header/internal/do$new;->catch:F

    iget v3, p2, Lcom/scwang/smartrefresh/header/internal/do$new;->class:F

    sub-float v1, v3, v1

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v2, v1

    .line 5
    invoke-virtual {p0, v2, v3}, Lcom/scwang/smartrefresh/header/internal/do;->break(FF)V

    .line 6
    iget p2, p2, Lcom/scwang/smartrefresh/header/internal/do$new;->const:F

    sub-float/2addr v0, p2

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    .line 7
    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/header/internal/do;->else(F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3
    iget v2, p0, Lcom/scwang/smartrefresh/header/internal/do;->for:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    invoke-virtual {v2, p1, v0}, Lcom/scwang/smartrefresh/header/internal/do$new;->do(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public else(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    iput p1, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->case:F

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final(I)V
    .locals 14

    if-nez p1, :cond_0

    const/16 v1, 0x38

    const/16 v2, 0x38

    const/high16 v3, 0x41480000    # 12.5f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x40c00000    # 6.0f

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/scwang/smartrefresh/header/internal/do;->this(IIFFFF)V

    goto :goto_0

    :cond_0
    const/16 v8, 0x28

    const/16 v9, 0x28

    const/high16 v10, 0x410c0000    # 8.75f

    const/high16 v11, 0x40200000    # 2.5f

    const/high16 v12, 0x41200000    # 10.0f

    const/high16 v13, 0x40a00000    # 5.0f

    move-object v7, p0

    .line 2
    invoke-direct/range {v7 .. v13}, Lcom/scwang/smartrefresh/header/internal/do;->this(IIFFFF)V

    :goto_0
    return-void
.end method

.method public for(Lcom/scwang/smartrefresh/header/internal/do$new;)F
    .locals 6

    .line 1
    iget v0, p1, Lcom/scwang/smartrefresh/header/internal/do$new;->else:F

    float-to-double v0, v0

    iget-wide v2, p1, Lcom/scwang/smartrefresh/header/internal/do$new;->while:D

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    iget v0, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->public:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->goto:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->else:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public goto(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/header/internal/do;->for:F

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isRunning()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->do:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    .line 4
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public new(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    iget v1, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->throw:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 2
    iput p1, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->throw:F

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    iput p1, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->public:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    iget-object v0, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->if:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->try:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/header/internal/do$new;->break()V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    iget v1, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->try:F

    iget v2, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->new:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->this:Z

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->try:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->new:Landroid/view/View;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/internal/do;->try:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/header/internal/do$new;->goto(I)V

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/header/internal/do$new;->else()V

    .line 9
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->try:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->new:Landroid/view/View;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/internal/do;->try:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->new:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/header/internal/do$new;->goto(I)V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/header/internal/do$new;->else()V

    .line 4
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/header/internal/do;->class(Z)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/internal/do;->goto(F)V

    return-void
.end method

.method public try(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do;->if:Lcom/scwang/smartrefresh/header/internal/do$new;

    iput p1, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->static:I

    return-void
.end method
