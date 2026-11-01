.class Lcom/gyf/immersionbar/goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private do:Lcom/gyf/immersionbar/else;

.field private for:Lcom/gyf/immersionbar/OnBarListener;

.field private if:Landroid/support/v4/c7;

.field private new:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/gyf/immersionbar/else;

    invoke-direct {v0, p1, p2}, Lcom/gyf/immersionbar/else;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    if-nez v0, :cond_4

    .line 4
    new-instance v0, Lcom/gyf/immersionbar/else;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lcom/gyf/immersionbar/else;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    if-nez v0, :cond_4

    .line 7
    instance-of v0, p1, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/gyf/immersionbar/else;

    check-cast p1, Landroidx/fragment/app/DialogFragment;

    invoke-direct {v0, p1}, Lcom/gyf/immersionbar/else;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/gyf/immersionbar/else;

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {v0, p1}, Lcom/gyf/immersionbar/else;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    goto :goto_0

    .line 10
    :cond_2
    instance-of v0, p1, Landroid/app/Fragment;

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    if-nez v0, :cond_4

    .line 12
    instance-of v0, p1, Landroid/app/DialogFragment;

    if-eqz v0, :cond_3

    .line 13
    new-instance v0, Lcom/gyf/immersionbar/else;

    check-cast p1, Landroid/app/DialogFragment;

    invoke-direct {v0, p1}, Lcom/gyf/immersionbar/else;-><init>(Landroid/app/DialogFragment;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    goto :goto_0

    .line 14
    :cond_3
    new-instance v0, Lcom/gyf/immersionbar/else;

    check-cast p1, Landroid/app/Fragment;

    invoke-direct {v0, p1}, Lcom/gyf/immersionbar/else;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    :cond_4
    :goto_0
    return-void
.end method

.method private do(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->f0()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->v()Lcom/gyf/immersionbar/for;

    move-result-object v0

    iget-object v0, v0, Lcom/gyf/immersionbar/for;->a:Lcom/gyf/immersionbar/OnBarListener;

    iput-object v0, p0, Lcom/gyf/immersionbar/goto;->for:Lcom/gyf/immersionbar/OnBarListener;

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->t()Landroid/app/Activity;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/support/v4/c7;

    invoke-direct {v1}, Landroid/support/v4/c7;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/support/v4/c7;->native(Z)V

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-ne p1, v3, :cond_2

    .line 8
    iget-object p1, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-virtual {p1, v3}, Landroid/support/v4/c7;->class(Z)V

    .line 9
    iget-object p1, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-virtual {p1, v2}, Landroid/support/v4/c7;->const(Z)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-virtual {p1, v2}, Landroid/support/v4/c7;->class(Z)V

    .line 11
    iget-object p1, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-virtual {p1, v3}, Landroid/support/v4/c7;->const(Z)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-virtual {p1, v2}, Landroid/support/v4/c7;->class(Z)V

    .line 13
    iget-object p1, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-virtual {p1, v2}, Landroid/support/v4/c7;->const(Z)V

    .line 14
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->L0()V

    :cond_0
    return-void
.end method

.method public for(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/goto;->do(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public if()Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    return-object v0
.end method

.method public new(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gyf/immersionbar/else;->J0(Landroid/content/res/Configuration;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/goto;->do(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->t()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->t()Landroid/app/Activity;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/gyf/immersionbar/do;

    invoke-direct {v1, v0}, Lcom/gyf/immersionbar/do;-><init>(Landroid/app/Activity;)V

    .line 4
    iget-object v2, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-virtual {v1}, Lcom/gyf/immersionbar/do;->this()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/c7;->public(I)V

    .line 5
    iget-object v2, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-virtual {v1}, Lcom/gyf/immersionbar/do;->catch()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/c7;->final(Z)V

    .line 6
    iget-object v2, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-virtual {v1}, Lcom/gyf/immersionbar/do;->new()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/c7;->super(I)V

    .line 7
    iget-object v2, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-virtual {v1}, Lcom/gyf/immersionbar/do;->case()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/c7;->throw(I)V

    .line 8
    iget-object v2, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-virtual {v1}, Lcom/gyf/immersionbar/do;->do()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/v4/c7;->catch(I)V

    .line 9
    invoke-static {v0}, Landroid/support/v4/r41;->const(Landroid/app/Activity;)Z

    move-result v1

    .line 10
    iget-object v2, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-virtual {v2, v1}, Landroid/support/v4/c7;->import(Z)V

    if-eqz v1, :cond_0

    .line 11
    iget v1, p0, Lcom/gyf/immersionbar/goto;->new:I

    if-nez v1, :cond_0

    .line 12
    invoke-static {v0}, Landroid/support/v4/r41;->try(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/goto;->new:I

    .line 13
    iget-object v1, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-virtual {v1, v0}, Landroid/support/v4/c7;->while(I)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/goto;->for:Lcom/gyf/immersionbar/OnBarListener;

    iget-object v1, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    invoke-interface {v0, v1}, Lcom/gyf/immersionbar/OnBarListener;->onBarChange(Landroid/support/v4/c7;)V

    :cond_1
    return-void
.end method

.method public try()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gyf/immersionbar/goto;->if:Landroid/support/v4/c7;

    .line 2
    iget-object v1, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/gyf/immersionbar/else;->K0()V

    .line 4
    iput-object v0, p0, Lcom/gyf/immersionbar/goto;->do:Lcom/gyf/immersionbar/else;

    :cond_0
    return-void
.end method
