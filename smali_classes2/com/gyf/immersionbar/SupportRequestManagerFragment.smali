.class public final Lcom/gyf/immersionbar/SupportRequestManagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private do:Lcom/gyf/immersionbar/goto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->do:Lcom/gyf/immersionbar/goto;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gyf/immersionbar/goto;

    invoke-direct {v0, p1, p2}, Lcom/gyf/immersionbar/goto;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->do:Lcom/gyf/immersionbar/goto;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->do:Lcom/gyf/immersionbar/goto;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/goto;->if()Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/Object;)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->do:Lcom/gyf/immersionbar/goto;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gyf/immersionbar/goto;

    invoke-direct {v0, p1}, Lcom/gyf/immersionbar/goto;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->do:Lcom/gyf/immersionbar/goto;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->do:Lcom/gyf/immersionbar/goto;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/goto;->if()Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->do:Lcom/gyf/immersionbar/goto;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/goto;->for(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->do:Lcom/gyf/immersionbar/goto;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/gyf/immersionbar/goto;->new(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->do:Lcom/gyf/immersionbar/goto;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/gyf/immersionbar/goto;->try()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->do:Lcom/gyf/immersionbar/goto;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->do:Lcom/gyf/immersionbar/goto;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/gyf/immersionbar/goto;->case()V

    :cond_0
    return-void
.end method
