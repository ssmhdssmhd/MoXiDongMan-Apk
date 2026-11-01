.class Lcom/google/android/material/internal/else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewOverlayImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/else$do;
    }
.end annotation


# instance fields
.field public do:Lcom/google/android/material/internal/else$do;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/material/internal/else$do;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/android/material/internal/else$do;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/internal/else;)V

    iput-object v0, p0, Lcom/google/android/material/internal/else;->do:Lcom/google/android/material/internal/else$do;

    return-void
.end method

.method public static do(Landroid/view/View;)Lcom/google/android/material/internal/else;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->case(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    instance-of v4, v3, Lcom/google/android/material/internal/else$do;

    if-eqz v4, :cond_0

    .line 5
    check-cast v3, Lcom/google/android/material/internal/else$do;

    iget-object p0, v3, Lcom/google/android/material/internal/else$do;->new:Lcom/google/android/material/internal/else;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lcom/google/android/material/internal/try;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/material/internal/try;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/else;->do:Lcom/google/android/material/internal/else$do;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/else$do;->do(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/else;->do:Lcom/google/android/material/internal/else$do;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/else$do;->else(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
