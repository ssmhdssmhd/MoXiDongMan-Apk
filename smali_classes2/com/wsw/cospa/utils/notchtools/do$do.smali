.class Lcom/wsw/cospa/utils/notchtools/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/notchtools/do;->fullScreenDontUseStatusForLandscape(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/app/Activity;

.field public final synthetic for:Lcom/wsw/cospa/utils/notchtools/do;

.field public final synthetic if:Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/notchtools/do;Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/notchtools/do$do;->for:Lcom/wsw/cospa/utils/notchtools/do;

    iput-object p2, p0, Lcom/wsw/cospa/utils/notchtools/do$do;->do:Landroid/app/Activity;

    iput-object p3, p0, Lcom/wsw/cospa/utils/notchtools/do$do;->if:Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/do$do;->for:Lcom/wsw/cospa/utils/notchtools/do;

    invoke-static {v0}, Lcom/wsw/cospa/utils/notchtools/do;->do(Lcom/wsw/cospa/utils/notchtools/do;)Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/do$do;->for:Lcom/wsw/cospa/utils/notchtools/do;

    iget-object v1, p0, Lcom/wsw/cospa/utils/notchtools/do$do;->do:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/notchtools/do;->if(Lcom/wsw/cospa/utils/notchtools/do;Landroid/view/Window;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/do$do;->for:Lcom/wsw/cospa/utils/notchtools/do;

    invoke-static {v0}, Lcom/wsw/cospa/utils/notchtools/do;->do(Lcom/wsw/cospa/utils/notchtools/do;)Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/do$do;->for:Lcom/wsw/cospa/utils/notchtools/do;

    invoke-static {v0}, Lcom/wsw/cospa/utils/notchtools/do;->do(Lcom/wsw/cospa/utils/notchtools/do;)Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/utils/notchtools/do$do;->do:Landroid/app/Activity;

    iget-object v2, p0, Lcom/wsw/cospa/utils/notchtools/do$do;->if:Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;

    invoke-interface {v0, v1, v2}, Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;->fullScreenDontUseStatusForLandscape(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    :cond_1
    return-void
.end method
