.class interface abstract Lcom/google/android/material/floatingactionbutton/MotionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract createAnimator()Landroid/animation/AnimatorSet;
.end method

.method public abstract getCurrentMotionSpec()Landroid/support/v4/q01;
.end method

.method public abstract getDefaultMotionSpecResource()I
    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end method

.method public abstract getListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMotionSpec()Landroid/support/v4/q01;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract onAnimationCancel()V
.end method

.method public abstract onAnimationEnd()V
.end method

.method public abstract onAnimationStart(Landroid/animation/Animator;)V
.end method

.method public abstract onChange(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$break;)V
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$break;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract performNow()V
.end method

.method public abstract removeAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setMotionSpec(Landroid/support/v4/q01;)V
    .param p1    # Landroid/support/v4/q01;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract shouldCancel()Z
.end method
