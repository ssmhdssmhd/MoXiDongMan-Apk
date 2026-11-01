.class Lcom/google/android/material/appbar/new;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private case:Z

.field private final do:Landroid/view/View;

.field private else:Z

.field private for:I

.field private if:I

.field private new:I

.field private try:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/appbar/new;->case:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/appbar/new;->else:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/material/appbar/new;->do:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public break(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/new;->else:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/new;->try:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/appbar/new;->try:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/new;->do()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public case()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/new;->else:Z

    return v0
.end method

.method public catch(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/new;->case:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/new;->new:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/appbar/new;->new:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/new;->do()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public class(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/appbar/new;->case:Z

    return-void
.end method

.method public do()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/new;->do:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/new;->new:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/new;->if:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/new;->do:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/new;->try:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/new;->for:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method

.method public else()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/new;->case:Z

    return v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/new;->if:I

    return v0
.end method

.method public goto()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/new;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/new;->if:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/new;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/new;->for:I

    return-void
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/new;->for:I

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/new;->try:I

    return v0
.end method

.method public this(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/appbar/new;->else:Z

    return-void
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/new;->new:I

    return v0
.end method
