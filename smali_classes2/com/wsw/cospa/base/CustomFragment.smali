.class public abstract Lcom/wsw/cospa/base/CustomFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private do:Lbutterknife/Unbinder;

.field public for:Landroid/content/Context;

.field private if:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do()I
.end method

.method public abstract for()V
.end method

.method public if()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/CustomFragment;->if:Landroid/view/View;

    return-object v0
.end method

.method public abstract new()V
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

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/base/CustomFragment;->for:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/wsw/cospa/base/CustomFragment;->if:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/base/CustomFragment;->if:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/base/CustomFragment;->if:Landroid/view/View;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/base/CustomFragment;->do()I

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/base/CustomFragment;->do()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/base/CustomFragment;->if:Landroid/view/View;

    goto :goto_0

    .line 7
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/base/CustomFragment;->if:Landroid/view/View;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/base/CustomFragment;->if:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/base/CustomFragment;->do:Lbutterknife/Unbinder;

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/base/CustomFragment;->new()V

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/base/CustomFragment;->for()V

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/base/CustomFragment;->if:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method
