.class Lcom/google/android/material/progressindicator/else$do;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/else;->super()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/progressindicator/else;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/else;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/else$do;->do:Lcom/google/android/material/progressindicator/else;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/progressindicator/else$do;->do:Lcom/google/android/material/progressindicator/else;

    .line 3
    invoke-static {p1}, Lcom/google/android/material/progressindicator/else;->this(Lcom/google/android/material/progressindicator/else;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/else$do;->do:Lcom/google/android/material/progressindicator/else;

    invoke-static {v2}, Lcom/google/android/material/progressindicator/else;->catch(Lcom/google/android/material/progressindicator/else;)Landroid/support/v4/n7;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/n7;->for:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/else;->break(Lcom/google/android/material/progressindicator/else;I)I

    .line 5
    iget-object p1, p0, Lcom/google/android/material/progressindicator/else$do;->do:Lcom/google/android/material/progressindicator/else;

    invoke-static {p1, v1}, Lcom/google/android/material/progressindicator/else;->class(Lcom/google/android/material/progressindicator/else;Z)Z

    return-void
.end method
