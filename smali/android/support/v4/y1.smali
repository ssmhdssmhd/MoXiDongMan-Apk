.class public final Landroid/support/v4/y1;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# static fields
.field private static final import:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/support/v4/y1;",
            ">;"
        }
    .end annotation
.end field

.field public static final while:Z


# instance fields
.field private break:F

.field private case:Z

.field private catch:F

.field private class:F

.field private const:F

.field private final do:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private else:F

.field private final:F

.field private final for:Landroid/graphics/RectF;

.field private goto:F

.field private final if:Landroid/graphics/Camera;

.field private final new:Landroid/graphics/RectF;

.field private super:F

.field private this:F

.field private throw:F

.field private final try:Landroid/graphics/Matrix;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v4/y1;->while:Z

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v4/y1;->import:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/support/v4/y1;->if:Landroid/graphics/Camera;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/y1;->for:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/y1;->new:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/v4/y1;->try:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Landroid/support/v4/y1;->else:F

    .line 7
    iput v0, p0, Landroid/support/v4/y1;->const:F

    .line 8
    iput v0, p0, Landroid/support/v4/y1;->final:F

    const-wide/16 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/y1;->do:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private do(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object v0, p0, Landroid/support/v4/y1;->try:Landroid/graphics/Matrix;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 6
    invoke-direct {p0, v0, p2}, Landroid/support/v4/y1;->strictfp(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Landroid/support/v4/y1;->try:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 9
    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    .line 10
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 11
    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 12
    :cond_0
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_1

    .line 13
    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 14
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private strictfp(Landroid/graphics/Matrix;Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    .line 3
    iget-boolean v1, p0, Landroid/support/v4/y1;->case:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 4
    iget v3, p0, Landroid/support/v4/y1;->goto:F

    goto :goto_0

    :cond_0
    div-float v3, v0, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    iget v1, p0, Landroid/support/v4/y1;->this:F

    goto :goto_1

    :cond_1
    div-float v1, p2, v2

    .line 6
    :goto_1
    iget v2, p0, Landroid/support/v4/y1;->break:F

    .line 7
    iget v4, p0, Landroid/support/v4/y1;->catch:F

    .line 8
    iget v5, p0, Landroid/support/v4/y1;->class:F

    const/4 v6, 0x0

    cmpl-float v7, v2, v6

    if-nez v7, :cond_2

    cmpl-float v7, v4, v6

    if-nez v7, :cond_2

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_3

    .line 9
    :cond_2
    iget-object v6, p0, Landroid/support/v4/y1;->if:Landroid/graphics/Camera;

    .line 10
    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    .line 11
    invoke-virtual {v6, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 12
    invoke-virtual {v6, v4}, Landroid/graphics/Camera;->rotateY(F)V

    neg-float v2, v5

    .line 13
    invoke-virtual {v6, v2}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 14
    invoke-virtual {v6, p1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 15
    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    neg-float v2, v3

    neg-float v4, v1

    .line 16
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 17
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 18
    :cond_3
    iget v2, p0, Landroid/support/v4/y1;->const:F

    .line 19
    iget v4, p0, Landroid/support/v4/y1;->final:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v5

    if-nez v6, :cond_4

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_5

    .line 20
    :cond_4
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-float/2addr v3, v0

    neg-float v3, v3

    mul-float v2, v2, v0

    sub-float/2addr v2, v0

    mul-float v3, v3, v2

    div-float/2addr v1, p2

    neg-float v0, v1

    mul-float v4, v4, p2

    sub-float/2addr v4, p2

    mul-float v0, v0, v4

    .line 21
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 22
    :cond_5
    iget p2, p0, Landroid/support/v4/y1;->super:F

    iget v0, p0, Landroid/support/v4/y1;->throw:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private throw()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/y1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/support/v4/y1;->new:Landroid/graphics/RectF;

    .line 4
    invoke-direct {p0, v1, v0}, Landroid/support/v4/y1;->do(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 5
    iget-object v2, p0, Landroid/support/v4/y1;->for:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    .line 7
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 8
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->invalidate(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static volatile(Landroid/view/View;)Landroid/support/v4/y1;
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/y1;->import:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/y1;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 3
    :cond_0
    new-instance v1, Landroid/support/v4/y1;

    invoke-direct {v1, p0}, Landroid/support/v4/y1;-><init>(Landroid/view/View;)V

    .line 4
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private while()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/y1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v4/y1;->for:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/y1;->do(Landroid/graphics/RectF;Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/y1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->package(F)V

    :cond_0
    return-void
.end method

.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v4/y1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Landroid/support/v4/y1;->else:F

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 3
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Landroid/support/v4/y1;->strictfp(Landroid/graphics/Matrix;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public break()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/y1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public case()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->break:F

    return v0
.end method

.method public catch()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/y1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method public class()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->super:F

    return v0
.end method

.method public const()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->throw:F

    return v0
.end method

.method public continue(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/y1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->private(F)V

    :cond_0
    return-void
.end method

.method public default(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->final:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/y1;->while()V

    .line 3
    iput p1, p0, Landroid/support/v4/y1;->final:F

    .line 4
    invoke-direct {p0}, Landroid/support/v4/y1;->throw()V

    :cond_0
    return-void
.end method

.method public else()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->catch:F

    return v0
.end method

.method public extends(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/y1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public final()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/y1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/y1;->super:F

    add-float/2addr v0, v1

    return v0
.end method

.method public finally(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/y1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public for()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->goto:F

    return v0
.end method

.method public goto()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->const:F

    return v0
.end method

.method public if()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->else:F

    return v0
.end method

.method public import(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->else:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Landroid/support/v4/y1;->else:F

    .line 3
    iget-object p1, p0, Landroid/support/v4/y1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public native(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/y1;->case:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/y1;->goto:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/y1;->while()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/support/v4/y1;->case:Z

    .line 4
    iput p1, p0, Landroid/support/v4/y1;->goto:F

    .line 5
    invoke-direct {p0}, Landroid/support/v4/y1;->throw()V

    :cond_1
    return-void
.end method

.method public new()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->this:F

    return v0
.end method

.method public package(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->super:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/y1;->while()V

    .line 3
    iput p1, p0, Landroid/support/v4/y1;->super:F

    .line 4
    invoke-direct {p0}, Landroid/support/v4/y1;->throw()V

    :cond_0
    return-void
.end method

.method public private(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->throw:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/y1;->while()V

    .line 3
    iput p1, p0, Landroid/support/v4/y1;->throw:F

    .line 4
    invoke-direct {p0}, Landroid/support/v4/y1;->throw()V

    :cond_0
    return-void
.end method

.method public public(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/y1;->case:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/y1;->this:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/y1;->while()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/support/v4/y1;->case:Z

    .line 4
    iput p1, p0, Landroid/support/v4/y1;->this:F

    .line 5
    invoke-direct {p0}, Landroid/support/v4/y1;->throw()V

    :cond_1
    return-void
.end method

.method public return(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->class:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/y1;->while()V

    .line 3
    iput p1, p0, Landroid/support/v4/y1;->class:F

    .line 4
    invoke-direct {p0}, Landroid/support/v4/y1;->throw()V

    :cond_0
    return-void
.end method

.method public static(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->break:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/y1;->while()V

    .line 3
    iput p1, p0, Landroid/support/v4/y1;->break:F

    .line 4
    invoke-direct {p0}, Landroid/support/v4/y1;->throw()V

    :cond_0
    return-void
.end method

.method public super()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/y1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/y1;->throw:F

    add-float/2addr v0, v1

    return v0
.end method

.method public switch(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->catch:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/y1;->while()V

    .line 3
    iput p1, p0, Landroid/support/v4/y1;->catch:F

    .line 4
    invoke-direct {p0}, Landroid/support/v4/y1;->throw()V

    :cond_0
    return-void
.end method

.method public this()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->final:F

    return v0
.end method

.method public throws(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->const:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/y1;->while()V

    .line 3
    iput p1, p0, Landroid/support/v4/y1;->const:F

    .line 4
    invoke-direct {p0}, Landroid/support/v4/y1;->throw()V

    :cond_0
    return-void
.end method

.method public try()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/y1;->class:F

    return v0
.end method
