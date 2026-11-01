.class final Lcom/google/android/material/internal/ViewUtils$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/ViewUtils;->new(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

.field public final synthetic if:Lcom/google/android/material/internal/ViewUtils$try;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;Lcom/google/android/material/internal/ViewUtils$try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/ViewUtils$for;->do:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    iput-object p2, p0, Lcom/google/android/material/internal/ViewUtils$for;->if:Lcom/google/android/material/internal/ViewUtils$try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/ViewUtils$for;->do:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    new-instance v1, Lcom/google/android/material/internal/ViewUtils$try;

    iget-object v2, p0, Lcom/google/android/material/internal/ViewUtils$for;->if:Lcom/google/android/material/internal/ViewUtils$try;

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/ViewUtils$try;-><init>(Lcom/google/android/material/internal/ViewUtils$try;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$try;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
