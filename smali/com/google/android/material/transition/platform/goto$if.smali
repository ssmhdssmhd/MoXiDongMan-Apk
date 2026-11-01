.class Lcom/google/android/material/transition/platform/goto$if;
.super Lcom/google/android/material/transition/platform/throw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/goto;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/View;

.field public final synthetic for:Landroid/view/View;

.field public final synthetic if:Lcom/google/android/material/transition/platform/goto$goto;

.field public final synthetic new:Landroid/view/View;

.field public final synthetic try:Lcom/google/android/material/transition/platform/goto;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transition/platform/goto;Landroid/view/View;Lcom/google/android/material/transition/platform/goto$goto;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/goto$if;->try:Lcom/google/android/material/transition/platform/goto;

    iput-object p2, p0, Lcom/google/android/material/transition/platform/goto$if;->do:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/transition/platform/goto$if;->if:Lcom/google/android/material/transition/platform/goto$goto;

    iput-object p4, p0, Lcom/google/android/material/transition/platform/goto$if;->for:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/material/transition/platform/goto$if;->new:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/material/transition/platform/throw;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/material/transition/platform/goto$if;->try:Lcom/google/android/material/transition/platform/goto;

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 2
    iget-object p1, p0, Lcom/google/android/material/transition/platform/goto$if;->try:Lcom/google/android/material/transition/platform/goto;

    invoke-static {p1}, Lcom/google/android/material/transition/platform/goto;->do(Lcom/google/android/material/transition/platform/goto;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/transition/platform/goto$if;->for:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/transition/platform/goto$if;->new:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/transition/platform/goto$if;->do:Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->goto(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$if;->if:Lcom/google/android/material/transition/platform/goto$goto;

    invoke-interface {p1, v0}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/material/transition/platform/goto$if;->do:Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->goto(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$if;->if:Lcom/google/android/material/transition/platform/goto$goto;

    invoke-interface {p1, v0}, Lcom/google/android/material/internal/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/transition/platform/goto$if;->for:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/transition/platform/goto$if;->new:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
