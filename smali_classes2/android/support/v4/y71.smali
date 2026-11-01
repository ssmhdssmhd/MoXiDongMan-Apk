.class public Landroid/support/v4/y71;
.super Landroid/support/v4/package;
.source "SourceFile"


# static fields
.field private static final do:Ljava/lang/String; = "y71"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/package;-><init>()V

    return-void
.end method


# virtual methods
.method public fullScreenDontUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/package;->fullScreenDontUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v4/y71;->isNotchScreen(Landroid/view/Window;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/utils/notchtools/helper/do;->new(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public fullScreenDontUseStatusForLandscape(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/package;->fullScreenDontUseStatusForLandscape(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v4/y71;->isNotchScreen(Landroid/view/Window;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/utils/notchtools/helper/do;->for(Landroid/view/Window;)Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public fullScreenDontUseStatusForPortrait(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y71;->fullScreenDontUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    return-void
.end method

.method public fullScreenUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/package;->fullScreenUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    return-void
.end method

.method public getNotchHeight(Landroid/view/Window;)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/y71;->isNotchScreen(Landroid/view/Window;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/utils/notchtools/helper/do;->if(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public isNotchScreen(Landroid/view/Window;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
