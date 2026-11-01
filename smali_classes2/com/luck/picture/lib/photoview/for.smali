.class public Lcom/luck/picture/lib/photoview/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/photoview/for$case;,
        Lcom/luck/picture/lib/photoview/for$try;
    }
.end annotation


# static fields
.field private static continue:F = 3.0f

.field private static final implements:I = 0x1

.field private static final instanceof:I = 0x2

.field private static interface:I = 0xc8

.field private static final protected:I = -0x1

.field private static strictfp:F = 1.75f

.field private static synchronized:I = 0x1

.field private static final transient:I = 0x0

.field private static volatile:F = 1.0f


# instance fields
.field private abstract:Lcom/luck/picture/lib/photoview/OnGestureListener;

.field private break:Lcom/luck/picture/lib/photoview/if;

.field private case:Z

.field private final catch:Landroid/graphics/Matrix;

.field private final class:Landroid/graphics/Matrix;

.field private final const:Landroid/graphics/Matrix;

.field private default:Lcom/luck/picture/lib/photoview/for$case;

.field private do:Landroid/view/animation/Interpolator;

.field private else:Z

.field private extends:I

.field private final final:Landroid/graphics/RectF;

.field private finally:F

.field private for:F

.field private goto:Landroid/widget/ImageView;

.field private if:I

.field private import:Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;

.field private native:Lcom/luck/picture/lib/photoview/OnViewTapListener;

.field private new:F

.field private package:Z

.field private private:Landroid/widget/ImageView$ScaleType;

.field private public:Landroid/view/View$OnClickListener;

.field private return:Landroid/view/View$OnLongClickListener;

.field private static:Lcom/luck/picture/lib/photoview/OnScaleChangedListener;

.field private final super:[F

.field private switch:Lcom/luck/picture/lib/photoview/OnSingleFlingListener;

.field private this:Landroid/view/GestureDetector;

.field private throw:Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;

.field private throws:Lcom/luck/picture/lib/photoview/OnViewDragListener;

.field private try:F

.field private while:Lcom/luck/picture/lib/photoview/OnPhotoTapListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/photoview/for;->do:Landroid/view/animation/Interpolator;

    .line 3
    sget v0, Lcom/luck/picture/lib/photoview/for;->interface:I

    iput v0, p0, Lcom/luck/picture/lib/photoview/for;->if:I

    .line 4
    sget v0, Lcom/luck/picture/lib/photoview/for;->volatile:F

    iput v0, p0, Lcom/luck/picture/lib/photoview/for;->for:F

    .line 5
    sget v0, Lcom/luck/picture/lib/photoview/for;->strictfp:F

    iput v0, p0, Lcom/luck/picture/lib/photoview/for;->new:F

    .line 6
    sget v0, Lcom/luck/picture/lib/photoview/for;->continue:F

    iput v0, p0, Lcom/luck/picture/lib/photoview/for;->try:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/luck/picture/lib/photoview/for;->case:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/luck/picture/lib/photoview/for;->else:Z

    .line 9
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/luck/picture/lib/photoview/for;->catch:Landroid/graphics/Matrix;

    .line 10
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/luck/picture/lib/photoview/for;->class:Landroid/graphics/Matrix;

    .line 11
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/luck/picture/lib/photoview/for;->const:Landroid/graphics/Matrix;

    .line 12
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/luck/picture/lib/photoview/for;->final:Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 13
    iput-object v1, p0, Lcom/luck/picture/lib/photoview/for;->super:[F

    const/4 v1, 0x2

    .line 14
    iput v1, p0, Lcom/luck/picture/lib/photoview/for;->extends:I

    .line 15
    iput-boolean v0, p0, Lcom/luck/picture/lib/photoview/for;->package:Z

    .line 16
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/luck/picture/lib/photoview/for;->private:Landroid/widget/ImageView$ScaleType;

    .line 17
    new-instance v0, Lcom/luck/picture/lib/photoview/for$do;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/photoview/for$do;-><init>(Lcom/luck/picture/lib/photoview/for;)V

    iput-object v0, p0, Lcom/luck/picture/lib/photoview/for;->abstract:Lcom/luck/picture/lib/photoview/OnGestureListener;

    .line 18
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 21
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/luck/picture/lib/photoview/for;->finally:F

    .line 23
    new-instance v0, Lcom/luck/picture/lib/photoview/if;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/photoview/for;->abstract:Lcom/luck/picture/lib/photoview/OnGestureListener;

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/photoview/if;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/photoview/OnGestureListener;)V

    iput-object v0, p0, Lcom/luck/picture/lib/photoview/for;->break:Lcom/luck/picture/lib/photoview/if;

    .line 24
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/luck/picture/lib/photoview/for$if;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/photoview/for$if;-><init>(Lcom/luck/picture/lib/photoview/for;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/luck/picture/lib/photoview/for;->this:Landroid/view/GestureDetector;

    .line 25
    new-instance p1, Lcom/luck/picture/lib/photoview/for$for;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/photoview/for$for;-><init>(Lcom/luck/picture/lib/photoview/for;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public static synthetic break()I
    .locals 1

    .line 1
    sget v0, Lcom/luck/picture/lib/photoview/for;->synchronized:I

    return v0
.end method

.method public static synthetic case(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnScaleChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->static:Lcom/luck/picture/lib/photoview/OnScaleChangedListener;

    return-object p0
.end method

.method public static synthetic catch(Lcom/luck/picture/lib/photoview/for;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->public:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic class(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnViewTapListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->native:Lcom/luck/picture/lib/photoview/OnViewTapListener;

    return-object p0
.end method

.method public static synthetic const(Lcom/luck/picture/lib/photoview/for;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->const:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private d(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->super:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for;->super:[F

    aget p1, p1, p2

    return p1
.end method

.method public static synthetic default(Lcom/luck/picture/lib/photoview/for;Lcom/luck/picture/lib/photoview/for$case;)Lcom/luck/picture/lib/photoview/for$case;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for;->default:Lcom/luck/picture/lib/photoview/for$case;

    return-object p1
.end method

.method public static synthetic do(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/if;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->break:Lcom/luck/picture/lib/photoview/if;

    return-object p0
.end method

.method public static synthetic else(Lcom/luck/picture/lib/photoview/for;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->return:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method public static synthetic extends(Lcom/luck/picture/lib/photoview/for;Landroid/widget/ImageView;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/photoview/for;->transient(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method public static synthetic final(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnPhotoTapListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->while:Lcom/luck/picture/lib/photoview/OnPhotoTapListener;

    return-object p0
.end method

.method private finally()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->default:Lcom/luck/picture/lib/photoview/for$case;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/for$case;->do()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/luck/picture/lib/photoview/for;->default:Lcom/luck/picture/lib/photoview/for$case;

    :cond_0
    return-void
.end method

.method public static synthetic for(Lcom/luck/picture/lib/photoview/for;Landroid/widget/ImageView;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/photoview/for;->protected(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->const:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget v0, p0, Lcom/luck/picture/lib/photoview/for;->finally:F

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/photoview/for;->o(F)V

    .line 3
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->volatile()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/photoview/for;->k(Landroid/graphics/Matrix;)V

    .line 4
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->private()Z

    return-void
.end method

.method public static synthetic goto(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnSingleFlingListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->switch:Lcom/luck/picture/lib/photoview/OnSingleFlingListener;

    return-object p0
.end method

.method public static synthetic if(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnViewDragListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->throws:Lcom/luck/picture/lib/photoview/OnViewDragListener;

    return-object p0
.end method

.method public static synthetic import(Lcom/luck/picture/lib/photoview/for;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->do:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private k(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->throw:Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/photoview/for;->strictfp(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->throw:Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;

    invoke-interface {v0, p1}, Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public static synthetic native(Lcom/luck/picture/lib/photoview/for;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->package()V

    return-void
.end method

.method public static synthetic new(Lcom/luck/picture/lib/photoview/for;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/luck/picture/lib/photoview/for;->try:F

    return p0
.end method

.method private package()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->private()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->volatile()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/photoview/for;->k(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private private()Z
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->volatile()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/photoview/for;->strictfp(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 3
    iget-object v4, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/luck/picture/lib/photoview/for;->protected(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    cmpg-float v9, v2, v4

    if-gtz v9, :cond_3

    .line 4
    sget-object v9, Lcom/luck/picture/lib/photoview/for$new;->do:[I

    iget-object v10, p0, Lcom/luck/picture/lib/photoview/for;->private:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v7, :cond_2

    if-eq v9, v6, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v5

    .line 5
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_1
    sub-float/2addr v4, v2

    .line 6
    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v4, v2

    goto :goto_2

    .line 7
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 8
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v9, v2, v8

    if-lez v9, :cond_4

    :goto_1
    neg-float v4, v2

    goto :goto_2

    .line 9
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v9, v2, v4

    if-gez v9, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    .line 10
    :goto_2
    iget-object v2, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/luck/picture/lib/photoview/for;->transient(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    const/4 v9, 0x1

    cmpg-float v10, v3, v2

    if-gtz v10, :cond_8

    .line 11
    sget-object v1, Lcom/luck/picture/lib/photoview/for$new;->do:[I

    iget-object v8, p0, Lcom/luck/picture/lib/photoview/for;->private:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v8

    aget v1, v1, v8

    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_6

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 12
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_6
    sub-float/2addr v2, v3

    .line 13
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v2, v0

    move v8, v2

    goto :goto_4

    .line 14
    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v8, v0

    .line 15
    :goto_4
    iput v7, p0, Lcom/luck/picture/lib/photoview/for;->extends:I

    goto :goto_5

    .line 16
    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v3, v8

    if-lez v5, :cond_9

    .line 17
    iput v1, p0, Lcom/luck/picture/lib/photoview/for;->extends:I

    neg-float v8, v3

    goto :goto_5

    .line 18
    :cond_9
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_a

    sub-float v8, v2, v0

    .line 19
    iput v9, p0, Lcom/luck/picture/lib/photoview/for;->extends:I

    goto :goto_5

    :cond_a
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/luck/picture/lib/photoview/for;->extends:I

    .line 21
    :goto_5
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->const:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v9
.end method

.method private protected(Landroid/widget/ImageView;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public static synthetic public(Lcom/luck/picture/lib/photoview/for;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic return(Lcom/luck/picture/lib/photoview/for;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/luck/picture/lib/photoview/for;->case:Z

    return p0
.end method

.method public static synthetic static(Lcom/luck/picture/lib/photoview/for;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/luck/picture/lib/photoview/for;->else:Z

    return p0
.end method

.method private strictfp(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for;->final:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->final:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for;->final:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic super(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->import:Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;

    return-object p0
.end method

.method public static synthetic switch(Lcom/luck/picture/lib/photoview/for;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/luck/picture/lib/photoview/for;->extends:I

    return p0
.end method

.method public static synthetic this()F
    .locals 1

    .line 1
    sget v0, Lcom/luck/picture/lib/photoview/for;->volatile:F

    return v0
.end method

.method public static synthetic throw(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnGestureListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->abstract:Lcom/luck/picture/lib/photoview/OnGestureListener;

    return-object p0
.end method

.method public static synthetic throws(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/for$case;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/for;->default:Lcom/luck/picture/lib/photoview/for$case;

    return-object p0
.end method

.method private transient(Landroid/widget/ImageView;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public static synthetic try(Lcom/luck/picture/lib/photoview/for;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/luck/picture/lib/photoview/for;->for:F

    return p0
.end method

.method private volatile()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->class:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for;->catch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->class:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for;->const:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->class:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static synthetic while(Lcom/luck/picture/lib/photoview/for;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/luck/picture/lib/photoview/for;->if:I

    return p0
.end method

.method private z(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/photoview/for;->transient(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/luck/picture/lib/photoview/for;->protected(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 5
    iget-object v3, p0, Lcom/luck/picture/lib/photoview/for;->catch:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    .line 6
    iget-object v5, p0, Lcom/luck/picture/lib/photoview/for;->private:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    .line 7
    iget-object v3, p0, Lcom/luck/picture/lib/photoview/for;->catch:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 8
    :cond_1
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 10
    iget-object v4, p0, Lcom/luck/picture/lib/photoview/for;->catch:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 11
    iget-object v4, p0, Lcom/luck/picture/lib/photoview/for;->catch:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 12
    :cond_2
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/luck/picture/lib/photoview/for;->catch:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 15
    iget-object v4, p0, Lcom/luck/picture/lib/photoview/for;->catch:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 16
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 17
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 18
    iget v0, p0, Lcom/luck/picture/lib/photoview/for;->finally:F

    float-to-int v0, v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    .line 19
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 20
    :cond_4
    sget-object p1, Lcom/luck/picture/lib/photoview/for$new;->do:[I

    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->private:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    goto :goto_0

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for;->catch:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for;->catch:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 23
    :cond_7
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for;->catch:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 24
    :cond_8
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for;->catch:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 25
    :goto_0
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->g()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->const:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/luck/picture/lib/photoview/for;->d(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for;->const:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/luck/picture/lib/photoview/for;->d(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public abstract(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->volatile()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public b()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->private:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public c(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->const:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public continue()Landroid/graphics/RectF;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->private()Z

    .line 2
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->volatile()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/photoview/for;->strictfp(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/luck/picture/lib/photoview/for;->package:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/luck/picture/lib/photoview/for;->package:Z

    return v0
.end method

.method public h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/luck/picture/lib/photoview/for;->case:Z

    return-void
.end method

.method public i(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/photoview/for;->finally:F

    .line 2
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/for;->y()V

    .line 3
    iget p1, p0, Lcom/luck/picture/lib/photoview/for;->finally:F

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/photoview/for;->o(F)V

    .line 4
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->package()V

    return-void
.end method

.method public implements()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/photoview/for;->try:F

    return v0
.end method

.method public instanceof()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/photoview/for;->new:F

    return v0
.end method

.method public interface()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->class:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public j(Landroid/graphics/Matrix;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->const:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 3
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->package()V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/photoview/for;->for:F

    iget v1, p0, Lcom/luck/picture/lib/photoview/for;->new:F

    invoke-static {v0, v1, p1}, Lcom/luck/picture/lib/photoview/new;->do(FFF)V

    .line 2
    iput p1, p0, Lcom/luck/picture/lib/photoview/for;->try:F

    return-void
.end method

.method public m(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/photoview/for;->for:F

    iget v1, p0, Lcom/luck/picture/lib/photoview/for;->try:F

    invoke-static {v0, p1, v1}, Lcom/luck/picture/lib/photoview/new;->do(FFF)V

    .line 2
    iput p1, p0, Lcom/luck/picture/lib/photoview/for;->new:F

    return-void
.end method

.method public n(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/photoview/for;->new:F

    iget v1, p0, Lcom/luck/picture/lib/photoview/for;->try:F

    invoke-static {p1, v0, v1}, Lcom/luck/picture/lib/photoview/new;->do(FFF)V

    .line 2
    iput p1, p0, Lcom/luck/picture/lib/photoview/for;->for:F

    return-void
.end method

.method public o(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->const:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->package()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/photoview/for;->z(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/luck/picture/lib/photoview/for;->package:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/new;->for(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/for;->a()F

    move-result v0

    iget v3, p0, Lcom/luck/picture/lib/photoview/for;->for:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/for;->continue()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    new-instance v9, Lcom/luck/picture/lib/photoview/for$try;

    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/for;->a()F

    move-result v5

    iget v6, p0, Lcom/luck/picture/lib/photoview/for;->for:F

    .line 6
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/luck/picture/lib/photoview/for$try;-><init>(Lcom/luck/picture/lib/photoview/for;FFFF)V

    .line 7
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/for;->a()F

    move-result v0

    iget v3, p0, Lcom/luck/picture/lib/photoview/for;->try:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/for;->continue()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    new-instance v9, Lcom/luck/picture/lib/photoview/for$try;

    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/for;->a()F

    move-result v5

    iget v6, p0, Lcom/luck/picture/lib/photoview/for;->try:F

    .line 11
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/luck/picture/lib/photoview/for$try;-><init>(Lcom/luck/picture/lib/photoview/for;FFFF)V

    .line 12
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->finally()V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 16
    :goto_2
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->break:Lcom/luck/picture/lib/photoview/if;

    if-eqz v0, :cond_8

    .line 17
    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/if;->try()Z

    move-result p1

    .line 18
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->break:Lcom/luck/picture/lib/photoview/if;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/if;->new()Z

    move-result v0

    .line 19
    iget-object v3, p0, Lcom/luck/picture/lib/photoview/for;->break:Lcom/luck/picture/lib/photoview/if;

    invoke-virtual {v3, p2}, Lcom/luck/picture/lib/photoview/if;->case(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for;->break:Lcom/luck/picture/lib/photoview/if;

    invoke-virtual {p1}, Lcom/luck/picture/lib/photoview/if;->try()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-nez v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->break:Lcom/luck/picture/lib/photoview/if;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/if;->new()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .line 22
    :cond_7
    iput-boolean v1, p0, Lcom/luck/picture/lib/photoview/for;->else:Z

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, p1

    .line 23
    :goto_5
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for;->this:Landroid/view/GestureDetector;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1
.end method

.method public p(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->const:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 2
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->package()V

    return-void
.end method

.method public q(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/luck/picture/lib/photoview/for;->s(FZ)V

    return-void
.end method

.method public r(FFFZ)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/photoview/for;->for:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/luck/picture/lib/photoview/for;->try:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_0

    .line 2
    iget-object p4, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    new-instance v6, Lcom/luck/picture/lib/photoview/for$try;

    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/for;->a()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/luck/picture/lib/photoview/for$try;-><init>(Lcom/luck/picture/lib/photoview/for;FFFF)V

    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p4, p0, Lcom/luck/picture/lib/photoview/for;->const:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 4
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->package()V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s(FZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 4
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/luck/picture/lib/photoview/for;->r(FFFZ)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for;->public:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->this:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for;->return:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for;->throw:Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for;->import:Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/luck/picture/lib/photoview/OnPhotoTapListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for;->while:Lcom/luck/picture/lib/photoview/OnPhotoTapListener;

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/luck/picture/lib/photoview/OnScaleChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for;->static:Lcom/luck/picture/lib/photoview/OnScaleChangedListener;

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/luck/picture/lib/photoview/OnSingleFlingListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for;->switch:Lcom/luck/picture/lib/photoview/OnSingleFlingListener;

    return-void
.end method

.method public setOnViewDragListener(Lcom/luck/picture/lib/photoview/OnViewDragListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for;->throws:Lcom/luck/picture/lib/photoview/OnViewDragListener;

    return-void
.end method

.method public setOnViewTapListener(Lcom/luck/picture/lib/photoview/OnViewTapListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for;->native:Lcom/luck/picture/lib/photoview/OnViewTapListener;

    return-void
.end method

.method public synchronized()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/photoview/for;->for:F

    return v0
.end method

.method public t(FFF)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/luck/picture/lib/photoview/new;->do(FFF)V

    .line 2
    iput p1, p0, Lcom/luck/picture/lib/photoview/for;->for:F

    .line 3
    iput p2, p0, Lcom/luck/picture/lib/photoview/for;->new:F

    .line 4
    iput p3, p0, Lcom/luck/picture/lib/photoview/for;->try:F

    return-void
.end method

.method public u(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/luck/picture/lib/photoview/new;->new(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->private:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for;->private:Landroid/widget/ImageView$ScaleType;

    .line 3
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/for;->y()V

    :cond_0
    return-void
.end method

.method public v(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for;->do:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public w(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/photoview/for;->if:I

    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/luck/picture/lib/photoview/for;->package:Z

    .line 2
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/for;->y()V

    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/luck/picture/lib/photoview/for;->package:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for;->goto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/photoview/for;->z(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for;->g()V

    :goto_0
    return-void
.end method
