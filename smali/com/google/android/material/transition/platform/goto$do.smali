.class Lcom/google/android/material/transition/platform/goto$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/goto;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/transition/platform/goto$goto;

.field public final synthetic if:Lcom/google/android/material/transition/platform/goto;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transition/platform/goto;Lcom/google/android/material/transition/platform/goto$goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/goto$do;->if:Lcom/google/android/material/transition/platform/goto;

    iput-object p2, p0, Lcom/google/android/material/transition/platform/goto$do;->do:Lcom/google/android/material/transition/platform/goto$goto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$do;->do:Lcom/google/android/material/transition/platform/goto$goto;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/material/transition/platform/goto$goto;->do(Lcom/google/android/material/transition/platform/goto$goto;F)V

    return-void
.end method
