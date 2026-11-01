.class public Landroid/support/v4/ch1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private case:F

.field private do:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private for:Z

.field private if:Z

.field private new:F

.field private try:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/ch1;->if:Z

    .line 3
    iput-boolean v0, p0, Landroid/support/v4/ch1;->for:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Landroid/support/v4/ch1;->new:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 5
    iput v0, p0, Landroid/support/v4/ch1;->try:F

    .line 6
    iput v0, p0, Landroid/support/v4/ch1;->case:F

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/ch1;->do:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_alpha_pressed:I

    invoke-static {v0, v1}, Landroid/support/v4/sh1;->else(Landroid/content/Context;I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/ch1;->try:F

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_alpha_disabled:I

    invoke-static {p1, v0}, Landroid/support/v4/sh1;->else(Landroid/content/Context;I)F

    move-result p1

    iput p1, p0, Landroid/support/v4/ch1;->case:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;FF)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Landroid/support/v4/ch1;->if:Z

    .line 12
    iput-boolean v0, p0, Landroid/support/v4/ch1;->for:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iput v0, p0, Landroid/support/v4/ch1;->new:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    iput v0, p0, Landroid/support/v4/ch1;->try:F

    .line 15
    iput v0, p0, Landroid/support/v4/ch1;->case:F

    .line 16
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/ch1;->do:Ljava/lang/ref/WeakReference;

    .line 17
    iput p2, p0, Landroid/support/v4/ch1;->try:F

    .line 18
    iput p3, p0, Landroid/support/v4/ch1;->case:F

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/ch1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/ch1;->for:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 3
    iget v1, p0, Landroid/support/v4/ch1;->new:F

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/support/v4/ch1;->case:F

    goto :goto_0

    .line 4
    :cond_2
    iget v1, p0, Landroid/support/v4/ch1;->new:F

    :goto_0
    if-eq p1, v0, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eq p1, p2, :cond_3

    .line 6
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public for(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/ch1;->for:Z

    .line 2
    iget-object p1, p0, Landroid/support/v4/ch1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/ch1;->do(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public if(Landroid/view/View;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/ch1;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, p0, Landroid/support/v4/ch1;->if:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/support/v4/ch1;->try:F

    goto :goto_0

    :cond_1
    iget p1, p0, Landroid/support/v4/ch1;->new:F

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 4
    :cond_2
    iget-boolean p1, p0, Landroid/support/v4/ch1;->for:Z

    if-eqz p1, :cond_3

    .line 5
    iget p1, p0, Landroid/support/v4/ch1;->case:F

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public new(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/ch1;->if:Z

    return-void
.end method
