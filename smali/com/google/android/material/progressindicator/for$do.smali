.class Lcom/google/android/material/progressindicator/for$do;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/for;->import(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/progressindicator/for;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/for$do;->do:Lcom/google/android/material/progressindicator/for;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/progressindicator/for$do;->do:Lcom/google/android/material/progressindicator/for;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/for;->do(Lcom/google/android/material/progressindicator/for;)V

    return-void
.end method
