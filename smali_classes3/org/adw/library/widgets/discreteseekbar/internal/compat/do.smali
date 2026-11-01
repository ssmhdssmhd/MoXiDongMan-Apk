.class public Lorg/adw/library/widgets/discreteseekbar/internal/compat/do;
.super Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field public do:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(FFLorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 2
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/do;->do:Landroid/animation/ValueAnimator;

    .line 3
    new-instance p2, Lorg/adw/library/widgets/discreteseekbar/internal/compat/do$do;

    invoke-direct {p2, p0, p3}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/do$do;-><init>(Lorg/adw/library/widgets/discreteseekbar/internal/compat/do;Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/do;->do:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/do;->do:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public new(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/do;->do:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public try()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/do;->do:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
