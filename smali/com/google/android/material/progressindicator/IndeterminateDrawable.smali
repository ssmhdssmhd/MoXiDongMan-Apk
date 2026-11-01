.class public final Lcom/google/android/material/progressindicator/IndeterminateDrawable;
.super Lcom/google/android/material/progressindicator/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Landroid/support/v4/n7;",
        ">",
        "Lcom/google/android/material/progressindicator/for;"
    }
.end annotation


# instance fields
.field private import:Lcom/google/android/material/progressindicator/new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/new<",
            "TS;>;"
        }
    .end annotation
.end field

.field private native:Lcom/google/android/material/progressindicator/try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/try<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/n7;Lcom/google/android/material/progressindicator/new;Lcom/google/android/material/progressindicator/try;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/n7;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/progressindicator/new;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/progressindicator/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/n7;",
            "Lcom/google/android/material/progressindicator/new<",
            "TS;>;",
            "Lcom/google/android/material/progressindicator/try<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/for;-><init>(Landroid/content/Context;Landroid/support/v4/n7;)V

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->extends(Lcom/google/android/material/progressindicator/new;)V

    .line 3
    invoke-virtual {p0, p4}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->default(Lcom/google/android/material/progressindicator/try;)V

    return-void
.end method

.method public static return(Landroid/content/Context;Landroid/support/v4/zl;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/zl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/zl;",
            ")",
            "Lcom/google/android/material/progressindicator/IndeterminateDrawable<",
            "Landroid/support/v4/zl;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    new-instance v1, Lcom/google/android/material/progressindicator/do;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/do;-><init>(Landroid/support/v4/zl;)V

    new-instance v2, Lcom/google/android/material/progressindicator/if;

    invoke-direct {v2, p1}, Lcom/google/android/material/progressindicator/if;-><init>(Landroid/support/v4/zl;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;-><init>(Landroid/content/Context;Landroid/support/v4/n7;Lcom/google/android/material/progressindicator/new;Lcom/google/android/material/progressindicator/try;)V

    return-object v0
.end method

.method public static static(Landroid/content/Context;Landroid/support/v4/ft0;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/ft0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/ft0;",
            ")",
            "Lcom/google/android/material/progressindicator/IndeterminateDrawable<",
            "Landroid/support/v4/ft0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    new-instance v1, Lcom/google/android/material/progressindicator/case;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/case;-><init>(Landroid/support/v4/ft0;)V

    iget v2, p1, Landroid/support/v4/ft0;->else:I

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/material/progressindicator/else;

    invoke-direct {v2, p1}, Lcom/google/android/material/progressindicator/else;-><init>(Landroid/support/v4/ft0;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/material/progressindicator/goto;

    invoke-direct {v2, p0, p1}, Lcom/google/android/material/progressindicator/goto;-><init>(Landroid/content/Context;Landroid/support/v4/ft0;)V

    :goto_0
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;-><init>(Landroid/content/Context;Landroid/support/v4/n7;Lcom/google/android/material/progressindicator/new;Lcom/google/android/material/progressindicator/try;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic break()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/for;->break()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic catch()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/for;->catch()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clearAnimationCallbacks()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/for;->clearAnimationCallbacks()V

    return-void
.end method

.method public default(Lcom/google/android/material/progressindicator/try;)V
    .locals 0
    .param p1    # Lcom/google/android/material/progressindicator/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/progressindicator/try<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->native:Lcom/google/android/material/progressindicator/try;

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/try;->try(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->import:Lcom/google/android/material/progressindicator/new;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/for;->else()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/progressindicator/new;->else(Landroid/graphics/Canvas;F)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->import:Lcom/google/android/material/progressindicator/new;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/for;->const:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/progressindicator/new;->for(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->native:Lcom/google/android/material/progressindicator/try;

    iget-object v2, v1, Lcom/google/android/material/progressindicator/try;->for:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 7
    iget-object v4, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->import:Lcom/google/android/material/progressindicator/new;

    iget-object v6, p0, Lcom/google/android/material/progressindicator/for;->const:Landroid/graphics/Paint;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/try;->if:[F

    mul-int/lit8 v3, v0, 0x2

    aget v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget v8, v1, v3

    aget v9, v2, v0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/material/progressindicator/new;->if(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_1
    return-void
.end method

.method public extends(Lcom/google/android/material/progressindicator/new;)V
    .locals 0
    .param p1    # Lcom/google/android/material/progressindicator/new;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/progressindicator/new<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->import:Lcom/google/android/material/progressindicator/new;

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/new;->case(Lcom/google/android/material/progressindicator/for;)V

    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/for;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->import:Lcom/google/android/material/progressindicator/new;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/new;->new()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->import:Lcom/google/android/material/progressindicator/new;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/new;->try()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/for;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/for;->isRunning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic native(ZZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/for;->native(ZZZ)Z

    move-result p1

    return p1
.end method

.method public public(ZZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/for;->public(ZZZ)Z

    move-result p2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->native:Lcom/google/android/material/progressindicator/try;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/try;->do()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/for;->for:Landroid/support/v4/x1;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/for;->do:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/x1;->do(Landroid/content/ContentResolver;)F

    move-result v0

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-gt p1, p3, :cond_2

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->native:Lcom/google/android/material/progressindicator/try;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/try;->else()V

    :cond_2
    return p2
.end method

.method public bridge synthetic registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/for;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/for;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/for;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/material/progressindicator/for;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/for;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/for;->stop()V

    return-void
.end method

.method public switch()Lcom/google/android/material/progressindicator/try;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/try<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->native:Lcom/google/android/material/progressindicator/try;

    return-object v0
.end method

.method public bridge synthetic this()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/for;->this()Z

    move-result v0

    return v0
.end method

.method public throws()Lcom/google/android/material/progressindicator/new;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/new<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->import:Lcom/google/android/material/progressindicator/new;

    return-object v0
.end method

.method public bridge synthetic unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/for;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    move-result p1

    return p1
.end method
