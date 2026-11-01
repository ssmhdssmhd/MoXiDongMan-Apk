.class Lcom/google/android/material/internal/for$do;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/internal/for;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/for$do;->do:Lcom/google/android/material/internal/for;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/for$do;->do:Lcom/google/android/material/internal/for;

    iget-object v1, v0, Lcom/google/android/material/internal/for;->for:Landroid/animation/ValueAnimator;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, v0, Lcom/google/android/material/internal/for;->for:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
