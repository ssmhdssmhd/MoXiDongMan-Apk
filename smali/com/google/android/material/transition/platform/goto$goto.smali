.class final Lcom/google/android/material/transition/platform/goto$goto;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "goto"
.end annotation


# static fields
.field private static final a:I = -0x777778

.field private static final b:F = 0.3f

.field private static final c:F = 1.5f

.field private static final synchronized:I = 0x2d000000


# instance fields
.field private final abstract:Z

.field private final break:Landroid/graphics/Paint;

.field private final case:Landroid/graphics/RectF;

.field private final catch:Landroid/graphics/Paint;

.field private final class:Landroid/graphics/Paint;

.field private final const:Landroid/graphics/Paint;

.field private final continue:Landroid/graphics/Paint;

.field private final default:Landroid/graphics/RectF;

.field private final do:Landroid/view/View;

.field private final else:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final extends:Landroid/graphics/RectF;

.field private final final:Lcom/google/android/material/transition/platform/else;

.field private final finally:Lcom/google/android/material/transition/platform/goto$case;

.field private final for:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final goto:F

.field private final if:Landroid/graphics/RectF;

.field private implements:F

.field private final import:Z

.field private instanceof:F

.field private interface:Lcom/google/android/material/transition/platform/case;

.field private final native:F

.field private final new:F

.field private final package:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

.field private final private:Lcom/google/android/material/transition/platform/FitModeEvaluator;

.field private protected:Landroid/graphics/RectF;

.field private final public:F

.field private final return:Z

.field private final static:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final strictfp:Landroid/graphics/Path;

.field private final super:Landroid/graphics/PathMeasure;

.field private final switch:Landroid/graphics/RectF;

.field private final this:Landroid/graphics/Paint;

.field private final throw:F

.field private final throws:Landroid/graphics/RectF;

.field private transient:F

.field private final try:Landroid/view/View;

.field private volatile:Lcom/google/android/material/transition/platform/if;

.field private final while:[F


# direct methods
.method private constructor <init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/goto$case;Z)V
    .locals 13
    .param p10    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p11    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p12    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p3

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/transition/platform/goto$goto;->this:Landroid/graphics/Paint;

    .line 4
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/google/android/material/transition/platform/goto$goto;->break:Landroid/graphics/Paint;

    .line 5
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/google/android/material/transition/platform/goto$goto;->catch:Landroid/graphics/Paint;

    .line 6
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lcom/google/android/material/transition/platform/goto$goto;->class:Landroid/graphics/Paint;

    .line 7
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lcom/google/android/material/transition/platform/goto$goto;->const:Landroid/graphics/Paint;

    .line 8
    new-instance v6, Lcom/google/android/material/transition/platform/else;

    invoke-direct {v6}, Lcom/google/android/material/transition/platform/else;-><init>()V

    iput-object v6, v0, Lcom/google/android/material/transition/platform/goto$goto;->final:Lcom/google/android/material/transition/platform/else;

    const/4 v6, 0x2

    new-array v7, v6, [F

    .line 9
    iput-object v7, v0, Lcom/google/android/material/transition/platform/goto$goto;->while:[F

    .line 10
    new-instance v8, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v8, v0, Lcom/google/android/material/transition/platform/goto$goto;->static:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 11
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v0, Lcom/google/android/material/transition/platform/goto$goto;->continue:Landroid/graphics/Paint;

    .line 12
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, v0, Lcom/google/android/material/transition/platform/goto$goto;->strictfp:Landroid/graphics/Path;

    move-object v10, p2

    .line 13
    iput-object v10, v0, Lcom/google/android/material/transition/platform/goto$goto;->do:Landroid/view/View;

    .line 14
    iput-object v1, v0, Lcom/google/android/material/transition/platform/goto$goto;->if:Landroid/graphics/RectF;

    move-object/from16 v11, p4

    .line 15
    iput-object v11, v0, Lcom/google/android/material/transition/platform/goto$goto;->for:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move/from16 v11, p5

    .line 16
    iput v11, v0, Lcom/google/android/material/transition/platform/goto$goto;->new:F

    move-object/from16 v11, p6

    .line 17
    iput-object v11, v0, Lcom/google/android/material/transition/platform/goto$goto;->try:Landroid/view/View;

    move-object/from16 v11, p7

    .line 18
    iput-object v11, v0, Lcom/google/android/material/transition/platform/goto$goto;->case:Landroid/graphics/RectF;

    move-object/from16 v12, p8

    .line 19
    iput-object v12, v0, Lcom/google/android/material/transition/platform/goto$goto;->else:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move/from16 v12, p9

    .line 20
    iput v12, v0, Lcom/google/android/material/transition/platform/goto$goto;->goto:F

    move/from16 v12, p14

    .line 21
    iput-boolean v12, v0, Lcom/google/android/material/transition/platform/goto$goto;->import:Z

    move/from16 v12, p15

    .line 22
    iput-boolean v12, v0, Lcom/google/android/material/transition/platform/goto$goto;->return:Z

    move-object/from16 v12, p16

    .line 23
    iput-object v12, v0, Lcom/google/android/material/transition/platform/goto$goto;->package:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    move-object/from16 v12, p17

    .line 24
    iput-object v12, v0, Lcom/google/android/material/transition/platform/goto$goto;->private:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    move-object/from16 v12, p18

    .line 25
    iput-object v12, v0, Lcom/google/android/material/transition/platform/goto$goto;->finally:Lcom/google/android/material/transition/platform/goto$case;

    move/from16 v12, p19

    .line 26
    iput-boolean v12, v0, Lcom/google/android/material/transition/platform/goto$goto;->abstract:Z

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v12, "window"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 28
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 29
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 30
    iget v10, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    iput v10, v0, Lcom/google/android/material/transition/platform/goto$goto;->native:F

    .line 31
    iget v10, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v10, v10

    iput v10, v0, Lcom/google/android/material/transition/platform/goto$goto;->public:F

    move/from16 v10, p10

    .line 32
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v2, p11

    .line 33
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v2, p12

    .line 34
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .line 35
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->z(Landroid/content/res/ColorStateList;)V

    .line 36
    invoke-virtual {v8, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->I(I)V

    .line 37
    invoke-virtual {v8, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->F(Z)V

    const v3, -0x777778

    .line 38
    invoke-virtual {v8, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->G(I)V

    .line 39
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v3, v0, Lcom/google/android/material/transition/platform/goto$goto;->switch:Landroid/graphics/RectF;

    .line 40
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lcom/google/android/material/transition/platform/goto$goto;->throws:Landroid/graphics/RectF;

    .line 41
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lcom/google/android/material/transition/platform/goto$goto;->default:Landroid/graphics/RectF;

    .line 42
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v3, v0, Lcom/google/android/material/transition/platform/goto$goto;->extends:Landroid/graphics/RectF;

    .line 43
    invoke-static/range {p3 .. p3}, Lcom/google/android/material/transition/platform/goto$goto;->const(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 44
    invoke-static/range {p7 .. p7}, Lcom/google/android/material/transition/platform/goto$goto;->const(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 45
    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object v10, p1

    invoke-virtual {p1, v6, v3, v8, v4}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    .line 46
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4, v3, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v4, v0, Lcom/google/android/material/transition/platform/goto$goto;->super:Landroid/graphics/PathMeasure;

    .line 47
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    iput v3, v0, Lcom/google/android/material/transition/platform/goto$goto;->throw:F

    .line 48
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v7, v2

    .line 49
    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x1

    aput v1, v7, v2

    .line 50
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    invoke-static/range {p13 .. p13}, Lcom/google/android/material/transition/platform/TransitionUtils;->for(I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 53
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, v1}, Lcom/google/android/material/transition/platform/goto$goto;->throw(F)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/goto$case;ZLcom/google/android/material/transition/platform/goto$do;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p19}, Lcom/google/android/material/transition/platform/goto$goto;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/goto$case;Z)V

    return-void
.end method

.method private break(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->final:Lcom/google/android/material/transition/platform/else;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/transition/platform/else;->for()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->protected:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->return(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->import()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->protected:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->protected:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/material/transition/platform/goto$goto;->class:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->final:Lcom/google/android/material/transition/platform/else;

    invoke-virtual {v0}, Lcom/google/android/material/transition/platform/else;->new()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->class:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private case(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V
    .locals 2
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Lcom/google/android/material/transition/platform/goto$goto;->const(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 2
    iget v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->instanceof:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 4
    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object p2, p0, Lcom/google/android/material/transition/platform/goto$goto;->continue:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object p2, p0, Lcom/google/android/material/transition/platform/goto$goto;->continue:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private catch(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->catch:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transition/platform/goto$goto;->final(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->default:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->interface:Lcom/google/android/material/transition/platform/case;

    iget v5, v0, Lcom/google/android/material/transition/platform/case;->if:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->volatile:Lcom/google/android/material/transition/platform/if;

    iget v6, v0, Lcom/google/android/material/transition/platform/if;->if:I

    new-instance v7, Lcom/google/android/material/transition/platform/goto$goto$if;

    invoke-direct {v7, p0}, Lcom/google/android/material/transition/platform/goto$goto$if;-><init>(Lcom/google/android/material/transition/platform/goto$goto;)V

    move-object v1, p1

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/platform/TransitionUtils;->finally(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;)V

    return-void
.end method

.method private class(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->break:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transition/platform/goto$goto;->final(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->switch:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->interface:Lcom/google/android/material/transition/platform/case;

    iget v5, v0, Lcom/google/android/material/transition/platform/case;->do:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->volatile:Lcom/google/android/material/transition/platform/if;

    iget v6, v0, Lcom/google/android/material/transition/platform/if;->do:I

    new-instance v7, Lcom/google/android/material/transition/platform/goto$goto$do;

    invoke-direct {v7, p0}, Lcom/google/android/material/transition/platform/goto$goto$do;-><init>(Lcom/google/android/material/transition/platform/goto$goto;)V

    move-object v1, p1

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/platform/TransitionUtils;->finally(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;)V

    return-void
.end method

.method private static const(Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static synthetic do(Lcom/google/android/material/transition/platform/goto$goto;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/goto$goto;->super(F)V

    return-void
.end method

.method private else(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->continue:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p3, p0, Lcom/google/android/material/transition/platform/goto$goto;->continue:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static synthetic for(Lcom/google/android/material/transition/platform/goto$goto;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/transition/platform/goto$goto;->try:Landroid/view/View;

    return-object p0
.end method

.method private goto(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->final:Lcom/google/android/material/transition/platform/else;

    invoke-virtual {v0}, Lcom/google/android/material/transition/platform/else;->new()Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/goto$goto;->break(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/goto$goto;->this(Landroid/graphics/Canvas;)V

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static synthetic if(Lcom/google/android/material/transition/platform/goto$goto;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/transition/platform/goto$goto;->do:Landroid/view/View;

    return-object p0
.end method

.method private static new(Landroid/graphics/RectF;F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    const p1, 0x3e99999a    # 0.3f

    mul-float p0, p0, p1

    return p0
.end method

.method private super(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->instanceof:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/goto$goto;->throw(F)V

    :cond_0
    return-void
.end method

.method private this(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->static:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->protected:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->static:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->transient:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->y(F)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->static:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->implements:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->M(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->static:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->final:Lcom/google/android/material/transition/platform/else;

    invoke-virtual {v1}, Lcom/google/android/material/transition/platform/else;->for()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->static:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private throw(F)V
    .locals 12

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/goto$goto;->instanceof:F

    .line 2
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->const:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->import:Z

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-static {v8, v2, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->final(FFF)F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v2, v8, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->final(FFF)F

    move-result v1

    :goto_0
    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->super:Landroid/graphics/PathMeasure;

    iget v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->throw:F

    mul-float v1, v1, p1

    iget-object v2, p0, Lcom/google/android/material/transition/platform/goto$goto;->while:[F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 4
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->while:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v4, 0x1

    .line 5
    aget v5, v0, v4

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v9

    if-gtz v6, :cond_2

    cmpg-float v6, p1, v8

    if-gez v6, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v10, v2

    move v11, v5

    goto :goto_4

    :cond_2
    :goto_2
    cmpl-float v6, p1, v9

    if-lez v6, :cond_3

    const v6, 0x3f7d70a4    # 0.99f

    sub-float v7, p1, v9

    const v10, 0x3c23d700    # 0.00999999f

    div-float/2addr v7, v10

    goto :goto_3

    :cond_3
    const v6, 0x3c23d70a    # 0.01f

    div-float v7, p1, v6

    const/high16 v10, -0x40800000    # -1.0f

    mul-float v7, v7, v10

    .line 6
    :goto_3
    iget-object v10, p0, Lcom/google/android/material/transition/platform/goto$goto;->super:Landroid/graphics/PathMeasure;

    iget v11, p0, Lcom/google/android/material/transition/platform/goto$goto;->throw:F

    mul-float v11, v11, v6

    invoke-virtual {v10, v11, v0, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 7
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->while:[F

    aget v1, v0, v1

    .line 8
    aget v0, v0, v4

    sub-float v1, v2, v1

    mul-float v1, v1, v7

    add-float/2addr v2, v1

    sub-float v0, v5, v0

    mul-float v0, v0, v7

    add-float/2addr v5, v0

    goto :goto_1

    .line 9
    :goto_4
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->finally:Lcom/google/android/material/transition/platform/goto$case;

    invoke-static {v0}, Lcom/google/android/material/transition/platform/goto$case;->if(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/transition/platform/goto$try;->do(Lcom/google/android/material/transition/platform/goto$try;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 10
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->finally:Lcom/google/android/material/transition/platform/goto$case;

    invoke-static {v0}, Lcom/google/android/material/transition/platform/goto$case;->if(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/transition/platform/goto$try;->if(Lcom/google/android/material/transition/platform/goto$try;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 11
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->private:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->if:Landroid/graphics/RectF;

    .line 12
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->if:Landroid/graphics/RectF;

    .line 13
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->case:Landroid/graphics/RectF;

    .line 14
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->case:Landroid/graphics/RectF;

    .line 15
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    move v1, p1

    .line 16
    invoke-interface/range {v0 .. v7}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->evaluate(FFFFFFF)Lcom/google/android/material/transition/platform/case;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->interface:Lcom/google/android/material/transition/platform/case;

    .line 17
    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->switch:Landroid/graphics/RectF;

    iget v2, v0, Lcom/google/android/material/transition/platform/case;->for:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    sub-float v4, v10, v4

    div-float/2addr v2, v3

    add-float/2addr v2, v10

    iget v0, v0, Lcom/google/android/material/transition/platform/case;->new:F

    add-float/2addr v0, v11

    invoke-virtual {v1, v4, v11, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->default:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->interface:Lcom/google/android/material/transition/platform/case;

    iget v2, v1, Lcom/google/android/material/transition/platform/case;->try:F

    div-float v4, v2, v3

    sub-float v4, v10, v4

    div-float/2addr v2, v3

    add-float/2addr v10, v2

    iget v1, v1, Lcom/google/android/material/transition/platform/case;->case:F

    add-float/2addr v1, v11

    invoke-virtual {v0, v4, v11, v10, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->throws:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->switch:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->extends:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->default:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 21
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->finally:Lcom/google/android/material/transition/platform/goto$case;

    invoke-static {v0}, Lcom/google/android/material/transition/platform/goto$case;->for(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/transition/platform/goto$try;->do(Lcom/google/android/material/transition/platform/goto$try;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 22
    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->finally:Lcom/google/android/material/transition/platform/goto$case;

    invoke-static {v1}, Lcom/google/android/material/transition/platform/goto$case;->for(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/transition/platform/goto$try;->if(Lcom/google/android/material/transition/platform/goto$try;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 23
    iget-object v2, p0, Lcom/google/android/material/transition/platform/goto$goto;->private:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    iget-object v3, p0, Lcom/google/android/material/transition/platform/goto$goto;->interface:Lcom/google/android/material/transition/platform/case;

    invoke-interface {v2, v3}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->shouldMaskStartBounds(Lcom/google/android/material/transition/platform/case;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    iget-object v3, p0, Lcom/google/android/material/transition/platform/goto$goto;->throws:Landroid/graphics/RectF;

    goto :goto_5

    :cond_4
    iget-object v3, p0, Lcom/google/android/material/transition/platform/goto$goto;->extends:Landroid/graphics/RectF;

    .line 25
    :goto_5
    invoke-static {v8, v9, v0, v1, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->super(FFFFF)F

    move-result v0

    if-eqz v2, :cond_5

    goto :goto_6

    :cond_5
    sub-float v0, v9, v0

    .line 26
    :goto_6
    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->private:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    iget-object v2, p0, Lcom/google/android/material/transition/platform/goto$goto;->interface:Lcom/google/android/material/transition/platform/case;

    invoke-interface {v1, v3, v0, v2}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/platform/case;)V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->throws:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/google/android/material/transition/platform/goto$goto;->extends:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/transition/platform/goto$goto;->throws:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/google/android/material/transition/platform/goto$goto;->extends:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/transition/platform/goto$goto;->throws:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/google/android/material/transition/platform/goto$goto;->extends:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/transition/platform/goto$goto;->throws:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/google/android/material/transition/platform/goto$goto;->extends:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 31
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->protected:Landroid/graphics/RectF;

    .line 32
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->final:Lcom/google/android/material/transition/platform/else;

    iget-object v2, p0, Lcom/google/android/material/transition/platform/goto$goto;->for:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v3, p0, Lcom/google/android/material/transition/platform/goto$goto;->else:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v4, p0, Lcom/google/android/material/transition/platform/goto$goto;->switch:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/google/android/material/transition/platform/goto$goto;->throws:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/google/android/material/transition/platform/goto$goto;->extends:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->finally:Lcom/google/android/material/transition/platform/goto$case;

    .line 33
    invoke-static {v1}, Lcom/google/android/material/transition/platform/goto$case;->new(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;

    move-result-object v7

    move v1, p1

    .line 34
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/transition/platform/else;->if(FLcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/google/android/material/transition/platform/goto$try;)V

    .line 35
    iget v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->new:F

    iget v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->goto:F

    invoke-static {v0, v1, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->final(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->transient:F

    .line 36
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->protected:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->native:F

    invoke-static {v0, v1}, Lcom/google/android/material/transition/platform/goto$goto;->new(Landroid/graphics/RectF;F)F

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->protected:Landroid/graphics/RectF;

    iget v2, p0, Lcom/google/android/material/transition/platform/goto$goto;->public:F

    invoke-static {v1, v2}, Lcom/google/android/material/transition/platform/goto$goto;->try(Landroid/graphics/RectF;F)F

    move-result v1

    .line 38
    iget v2, p0, Lcom/google/android/material/transition/platform/goto$goto;->transient:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float v1, v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 39
    iput v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->implements:F

    .line 40
    iget-object v3, p0, Lcom/google/android/material/transition/platform/goto$goto;->class:Landroid/graphics/Paint;

    const/high16 v4, 0x2d000000

    invoke-virtual {v3, v2, v0, v1, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 41
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->finally:Lcom/google/android/material/transition/platform/goto$case;

    invoke-static {v0}, Lcom/google/android/material/transition/platform/goto$case;->do(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/transition/platform/goto$try;->do(Lcom/google/android/material/transition/platform/goto$try;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->finally:Lcom/google/android/material/transition/platform/goto$case;

    invoke-static {v1}, Lcom/google/android/material/transition/platform/goto$case;->do(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/transition/platform/goto$try;->if(Lcom/google/android/material/transition/platform/goto$try;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 43
    iget-object v2, p0, Lcom/google/android/material/transition/platform/goto$goto;->package:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    const v3, 0x3eb33333    # 0.35f

    .line 44
    invoke-interface {v2, p1, v0, v1, v3}, Lcom/google/android/material/transition/platform/FadeModeEvaluator;->evaluate(FFFF)Lcom/google/android/material/transition/platform/if;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->volatile:Lcom/google/android/material/transition/platform/if;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->break:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->break:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->volatile:Lcom/google/android/material/transition/platform/if;

    iget v1, v1, Lcom/google/android/material/transition/platform/if;->do:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->catch:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_7

    .line 48
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->catch:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->volatile:Lcom/google/android/material/transition/platform/if;

    iget v1, v1, Lcom/google/android/material/transition/platform/if;->if:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private static try(Landroid/graphics/RectF;F)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    div-float/2addr p0, p1

    const/high16 p1, 0x3fc00000    # 1.5f

    mul-float p0, p0, p1

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->const:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->const:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->abstract:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->return:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->transient:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/goto$goto;->goto(Landroid/graphics/Canvas;)V

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->final:Lcom/google/android/material/transition/platform/else;

    invoke-virtual {v1, p1}, Lcom/google/android/material/transition/platform/else;->do(Landroid/graphics/Canvas;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->this:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v1}, Lcom/google/android/material/transition/platform/goto$goto;->final(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 8
    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->volatile:Lcom/google/android/material/transition/platform/if;

    iget-boolean v1, v1, Lcom/google/android/material/transition/platform/if;->for:Z

    if-eqz v1, :cond_3

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/goto$goto;->class(Landroid/graphics/Canvas;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/goto$goto;->catch(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/goto$goto;->catch(Landroid/graphics/Canvas;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/goto$goto;->class(Landroid/graphics/Canvas;)V

    .line 13
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->abstract:Z

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 15
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->switch:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/goto$goto;->strictfp:Landroid/graphics/Path;

    const v2, -0xff01

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/goto$goto;->case(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V

    .line 16
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->throws:Landroid/graphics/RectF;

    const/16 v1, -0x100

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/goto$goto;->else(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    .line 17
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->switch:Landroid/graphics/RectF;

    const v1, -0xff0100

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/goto$goto;->else(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    .line 18
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->extends:Landroid/graphics/RectF;

    const v1, -0xff0001

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/goto$goto;->else(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto;->default:Landroid/graphics/RectF;

    const v1, -0xffff01

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/goto$goto;->else(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    :cond_4
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting alpha on is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting a color filter is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
