.class public abstract Lcom/wsw/cospa/base/BaseLazyFragment;
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


# static fields
.field private static final this:Ljava/lang/String;


# instance fields
.field private case:Landroid/view/ViewGroup;

.field private do:Z

.field public else:Landroid/content/Context;

.field private for:Z

.field private goto:I

.field private if:Z

.field public new:Landroid/support/v4/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private try:Lbutterknife/Unbinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/wsw/cospa/base/BaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/base/BaseLazyFragment;->this:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private try()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->for:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->do:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->case:Landroid/view/ViewGroup;

    .line 4
    iput-boolean v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->if:Z

    return-void
.end method


# virtual methods
.method public break(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->if:Z

    return-void
.end method

.method public abstract case()V
.end method

.method public abstract do()I
.end method

.method public else()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->do:Z

    return v0
.end method

.method public abstract for()V
.end method

.method public goto()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseLazyFragment;->for()V

    return-void
.end method

.method public if()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->case:Landroid/view/ViewGroup;

    return-object v0
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
    iput-object p1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->else:Landroid/content/Context;

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

    iput-object p1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->else:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseLazyFragment;->new()Landroid/support/v4/m7;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->new:Landroid/support/v4/m7;

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseLazyFragment;->try()V

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
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->case:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->case:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->case:Landroid/view/ViewGroup;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseLazyFragment;->do()I

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseLazyFragment;->do()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->case:Landroid/view/ViewGroup;

    goto :goto_0

    .line 7
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->case:Landroid/view/ViewGroup;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->case:Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->try:Lbutterknife/Unbinder;

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseLazyFragment;->case()V

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->case:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseLazyFragment;->try()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->new:Landroid/support/v4/m7;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/m7;->try()V

    .line 4
    :cond_0
    invoke-static {}, Landroid/support/v4/rp1;->if()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->case:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->for:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseLazyFragment;->goto()V

    .line 5
    iput-boolean v1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->for:Z

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/base/BaseLazyFragment;->this(Z)V

    .line 7
    iput-boolean p1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->do:Z

    return-void

    .line 8
    :cond_2
    iget-boolean p1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->do:Z

    if-eqz p1, :cond_3

    .line 9
    iput-boolean v1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->do:Z

    .line 10
    invoke-virtual {p0, v1}, Lcom/wsw/cospa/base/BaseLazyFragment;->this(Z)V

    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->case:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->case:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->for:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseLazyFragment;->goto()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->for:Z

    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/base/BaseLazyFragment;->this(Z)V

    .line 8
    iput-boolean v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->do:Z

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->if:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/wsw/cospa/base/BaseLazyFragment;->case:Landroid/view/ViewGroup;

    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public abstract this(Z)V
.end method
