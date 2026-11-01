.class public abstract Landroid/support/v4/package;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/app/Activity;ILcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    new-instance v0, Landroid/support/v4/q41;

    invoke-direct {v0}, Landroid/support/v4/q41;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;->getNotchHeight(Landroid/view/Window;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/q41;->case(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;->isNotchScreen(Landroid/view/Window;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/q41;->try(Z)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/support/v4/q41;->new(I)V

    .line 5
    invoke-interface {p3, v0}, Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;->onNotchPropertyCallback(Landroid/support/v4/q41;)V

    :cond_0
    return-void
.end method

.method public fullScreenDontUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/notchtools/helper/do;->try(Landroid/view/Window;Z)V

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/package;->if(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    return-void
.end method

.method public fullScreenDontUseStatusForLandscape(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/package;->fullScreenDontUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    return-void
.end method

.method public fullScreenDontUseStatusForPortrait(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/package;->fullScreenDontUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    return-void
.end method

.method public fullScreenUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/notchtools/helper/do;->try(Landroid/view/Window;Z)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;->getNotchHeight(Landroid/view/Window;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/package;->do(Landroid/app/Activity;ILcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    return-void
.end method

.method public getStatusHeight(Landroid/view/Window;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/utils/notchtools/helper/do;->if(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public if(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Landroid/support/v4/q41;

    invoke-direct {v0}, Landroid/support/v4/q41;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;->getNotchHeight(Landroid/view/Window;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/q41;->case(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;->isNotchScreen(Landroid/view/Window;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/q41;->try(Z)V

    .line 4
    invoke-interface {p2, v0}, Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;->onNotchPropertyCallback(Landroid/support/v4/q41;)V

    :cond_0
    return-void
.end method
