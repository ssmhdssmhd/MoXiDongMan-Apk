.class abstract Lcom/google/android/material/progressindicator/try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/animation/Animator;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

.field public final for:[I

.field public final if:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 v0, p1, 0x2

    .line 2
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/material/progressindicator/try;->if:[F

    .line 3
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/progressindicator/try;->for:[I

    return-void
.end method


# virtual methods
.method public abstract case()V
.end method

.method public abstract do()V
.end method

.method public abstract else()V
.end method

.method public abstract for()V
.end method

.method public abstract goto()V
.end method

.method public if(III)F
    .locals 0

    sub-int/2addr p1, p2

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    return p1
.end method

.method public abstract new(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public try(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)V
    .locals 0
    .param p1    # Lcom/google/android/material/progressindicator/IndeterminateDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/try;->do:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    return-void
.end method
