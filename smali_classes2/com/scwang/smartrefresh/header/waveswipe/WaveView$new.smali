.class Lcom/scwang/smartrefresh/header/waveswipe/WaveView$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->catch(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/header/waveswipe/WaveView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$new;->do:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$new;->do:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    iget-object v0, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$new;->do:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    iget-object v2, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v0, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v3, v0

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v3, v3, v4

    int-to-float v0, v0

    const v4, 0x3eaa7efa    # 0.333f

    mul-float v0, v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, p1, v4

    invoke-virtual {v2, v3, v1, v0, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$new;->do:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    iget-object v2, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v0, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v3, v0

    mul-float v3, v3, v4

    const v4, 0x3fb33333    # 1.4f

    mul-float p1, p1, v4

    int-to-float v0, v0

    const v4, 0x3f2a7efa    # 0.666f

    mul-float v0, v0, v4

    invoke-virtual {v2, v3, p1, v0, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 5
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$new;->do:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    iget-object v0, p1, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget p1, p1, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v2, p1

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v2, v2, v3

    int-to-float p1, p1

    invoke-virtual {v0, v2, v1, p1, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$new;->do:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
