.class public Lcom/google/android/material/internal/ViewUtils$try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# instance fields
.field public do:I

.field public for:I

.field public if:I

.field public new:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/material/internal/ViewUtils$try;->do:I

    .line 3
    iput p2, p0, Lcom/google/android/material/internal/ViewUtils$try;->if:I

    .line 4
    iput p3, p0, Lcom/google/android/material/internal/ViewUtils$try;->for:I

    .line 5
    iput p4, p0, Lcom/google/android/material/internal/ViewUtils$try;->new:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/internal/ViewUtils$try;)V
    .locals 1
    .param p1    # Lcom/google/android/material/internal/ViewUtils$try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Lcom/google/android/material/internal/ViewUtils$try;->do:I

    iput v0, p0, Lcom/google/android/material/internal/ViewUtils$try;->do:I

    .line 8
    iget v0, p1, Lcom/google/android/material/internal/ViewUtils$try;->if:I

    iput v0, p0, Lcom/google/android/material/internal/ViewUtils$try;->if:I

    .line 9
    iget v0, p1, Lcom/google/android/material/internal/ViewUtils$try;->for:I

    iput v0, p0, Lcom/google/android/material/internal/ViewUtils$try;->for:I

    .line 10
    iget p1, p1, Lcom/google/android/material/internal/ViewUtils$try;->new:I

    iput p1, p0, Lcom/google/android/material/internal/ViewUtils$try;->new:I

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/ViewUtils$try;->do:I

    iget v1, p0, Lcom/google/android/material/internal/ViewUtils$try;->if:I

    iget v2, p0, Lcom/google/android/material/internal/ViewUtils$try;->for:I

    iget v3, p0, Lcom/google/android/material/internal/ViewUtils$try;->new:I

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method
