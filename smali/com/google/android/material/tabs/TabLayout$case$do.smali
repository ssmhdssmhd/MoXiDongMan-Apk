.class Lcom/google/android/material/tabs/TabLayout$case$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$case;->this(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/View;

.field public final synthetic for:Lcom/google/android/material/tabs/TabLayout$case;

.field public final synthetic if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout$case;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$case$do;->for:Lcom/google/android/material/tabs/TabLayout$case;

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$case$do;->do:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout$case$do;->if:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$case$do;->for:Lcom/google/android/material/tabs/TabLayout$case;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$case$do;->do:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$case$do;->if:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/material/tabs/TabLayout$case;->do(Lcom/google/android/material/tabs/TabLayout$case;Landroid/view/View;Landroid/view/View;F)V

    return-void
.end method
