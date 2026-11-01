.class Lcom/google/android/material/internal/TextDrawableHelper$do;
.super Landroid/support/v4/c62;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/TextDrawableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/internal/TextDrawableHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/TextDrawableHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$do;->do:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-direct {p0}, Landroid/support/v4/c62;-><init>()V

    return-void
.end method


# virtual methods
.method public do(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$do;->do:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->do(Lcom/google/android/material/internal/TextDrawableHelper;Z)Z

    .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$do;->do:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-static {p1}, Lcom/google/android/material/internal/TextDrawableHelper;->if(Lcom/google/android/material/internal/TextDrawableHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onTextSizeChange()V

    :cond_0
    return-void
.end method

.method public if(Landroid/graphics/Typeface;Z)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$do;->do:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/material/internal/TextDrawableHelper;->do(Lcom/google/android/material/internal/TextDrawableHelper;Z)Z

    .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$do;->do:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-static {p1}, Lcom/google/android/material/internal/TextDrawableHelper;->if(Lcom/google/android/material/internal/TextDrawableHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onTextSizeChange()V

    :cond_1
    return-void
.end method
