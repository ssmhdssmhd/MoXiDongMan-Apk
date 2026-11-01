.class final Lcom/google/android/material/transition/this$do;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/this;->do(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/View;

.field public final synthetic for:F

.field public final synthetic if:F


# direct methods
.method public constructor <init>(Landroid/view/View;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/this$do;->do:Landroid/view/View;

    iput p2, p0, Lcom/google/android/material/transition/this$do;->if:F

    iput p3, p0, Lcom/google/android/material/transition/this$do;->for:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/transition/this$do;->do:Landroid/view/View;

    iget v0, p0, Lcom/google/android/material/transition/this$do;->if:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/transition/this$do;->do:Landroid/view/View;

    iget v0, p0, Lcom/google/android/material/transition/this$do;->for:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
