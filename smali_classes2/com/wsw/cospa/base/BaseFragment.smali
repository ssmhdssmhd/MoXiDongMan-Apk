.class public abstract Lcom/wsw/cospa/base/BaseFragment;
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
.field private case:I

.field public do:Landroid/support/v4/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field public else:Landroid/view/View;

.field private for:Landroid/view/ViewGroup;

.field private if:Lbutterknife/Unbinder;

.field public new:Landroid/content/Context;

.field private try:Lcom/wsw/cospa/base/BaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract case()V
.end method

.method public do()Lcom/wsw/cospa/base/BaseActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseFragment;->try:Lcom/wsw/cospa/base/BaseActivity;

    return-object v0
.end method

.method public for()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseFragment;->for:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public abstract if()I
.end method

.method public abstract new()V
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/base/BaseFragment;->new:Landroid/content/Context;

    .line 3
    check-cast p1, Lcom/wsw/cospa/base/BaseActivity;

    iput-object p1, p0, Lcom/wsw/cospa/base/BaseFragment;->try:Lcom/wsw/cospa/base/BaseActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/base/BaseFragment;->new:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseFragment;->try()Landroid/support/v4/m7;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/base/BaseFragment;->do:Landroid/support/v4/m7;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseFragment;->for:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/base/BaseFragment;->for:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/base/BaseFragment;->for:Landroid/view/ViewGroup;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseFragment;->if()I

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseFragment;->if()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/wsw/cospa/base/BaseFragment;->for:Landroid/view/ViewGroup;

    goto :goto_0

    .line 7
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/wsw/cospa/base/BaseFragment;->for:Landroid/view/ViewGroup;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/base/BaseFragment;->for:Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/base/BaseFragment;->if:Lbutterknife/Unbinder;

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseFragment;->case()V

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseFragment;->new()V

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/base/BaseFragment;->for:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseFragment;->do:Landroid/support/v4/m7;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/m7;->try()V

    .line 4
    :cond_0
    invoke-static {}, Landroid/support/v4/rp1;->if()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/base/BaseFragment;->new:Landroid/content/Context;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public abstract try()Landroid/support/v4/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method
