.class Lcom/google/android/material/progressindicator/goto$do;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/goto;->import()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/progressindicator/goto;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/goto$do;->do:Lcom/google/android/material/progressindicator/goto;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/progressindicator/goto$do;->do:Lcom/google/android/material/progressindicator/goto;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/goto;->const(Lcom/google/android/material/progressindicator/goto;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/material/progressindicator/goto$do;->do:Lcom/google/android/material/progressindicator/goto;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/goto;->super(Lcom/google/android/material/progressindicator/goto;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/progressindicator/goto$do;->do:Lcom/google/android/material/progressindicator/goto;

    iget-object v0, p1, Lcom/google/android/material/progressindicator/goto;->catch:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/progressindicator/goto$do;->do:Lcom/google/android/material/progressindicator/goto;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/goto;->final(Lcom/google/android/material/progressindicator/goto;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/progressindicator/goto$do;->do:Lcom/google/android/material/progressindicator/goto;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/goto;->this(Lcom/google/android/material/progressindicator/goto;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/goto$do;->do:Lcom/google/android/material/progressindicator/goto;

    invoke-static {v2}, Lcom/google/android/material/progressindicator/goto;->catch(Lcom/google/android/material/progressindicator/goto;)Landroid/support/v4/n7;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/n7;->for:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/goto;->break(Lcom/google/android/material/progressindicator/goto;I)I

    .line 3
    iget-object p1, p0, Lcom/google/android/material/progressindicator/goto$do;->do:Lcom/google/android/material/progressindicator/goto;

    invoke-static {p1, v1}, Lcom/google/android/material/progressindicator/goto;->class(Lcom/google/android/material/progressindicator/goto;Z)Z

    return-void
.end method
