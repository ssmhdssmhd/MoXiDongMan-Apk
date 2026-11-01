.class public abstract Lcom/wsw/cospa/base/LazyFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/wsw/cospa/base/BaseModel;",
        "P:",
        "Landroid/support/v4/m7;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# instance fields
.field public case:Landroid/content/Context;

.field private do:Z

.field private else:Lcom/wsw/cospa/base/BaseActivity;

.field private for:Z

.field private if:Z

.field public new:Landroid/support/v4/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private try:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/base/LazyFragment;->if:Z

    return-void
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/base/LazyFragment;->do:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wsw/cospa/base/LazyFragment;->for:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/wsw/cospa/base/LazyFragment;->if:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/wsw/cospa/base/LazyFragment;->if:Z

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/base/LazyFragment;->for()V

    :cond_0
    return-void
.end method

.method public do()Lcom/wsw/cospa/base/BaseActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/LazyFragment;->else:Lcom/wsw/cospa/base/BaseActivity;

    return-object v0
.end method

.method public else()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wsw/cospa/base/LazyFragment;->for:Z

    return-void
.end method

.method public abstract for()V
.end method

.method public goto()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/wsw/cospa/base/LazyFragment;->for:Z

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/LazyFragment;->case()V

    return-void
.end method

.method public abstract if()I
.end method

.method public abstract new()Landroid/support/v4/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/base/LazyFragment;->case:Landroid/content/Context;

    .line 3
    check-cast p1, Lcom/wsw/cospa/base/BaseActivity;

    iput-object p1, p0, Lcom/wsw/cospa/base/LazyFragment;->else:Lcom/wsw/cospa/base/BaseActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/wsw/cospa/base/LazyFragment;->if:Z

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/base/LazyFragment;->try:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/base/LazyFragment;->try:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/base/LazyFragment;->try:Landroid/view/ViewGroup;

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/base/LazyFragment;->if()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/base/LazyFragment;->if()I

    move-result p3

    const/4 v1, 0x0

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/wsw/cospa/base/LazyFragment;->try:Landroid/view/ViewGroup;

    goto :goto_0

    .line 8
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/wsw/cospa/base/LazyFragment;->try:Landroid/view/ViewGroup;

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/base/LazyFragment;->try:Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/base/LazyFragment;->try()V

    .line 11
    iput-boolean v0, p0, Lcom/wsw/cospa/base/LazyFragment;->do:Z

    .line 12
    invoke-virtual {p0}, Lcom/wsw/cospa/base/LazyFragment;->case()V

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/base/LazyFragment;->try:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/base/LazyFragment;->do:Z

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/base/LazyFragment;->new:Landroid/support/v4/m7;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/m7;->try()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/LazyFragment;->goto()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/base/LazyFragment;->else()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/base/LazyFragment;->goto()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/base/LazyFragment;->else()V

    :goto_0
    return-void
.end method

.method public abstract try()V
.end method
