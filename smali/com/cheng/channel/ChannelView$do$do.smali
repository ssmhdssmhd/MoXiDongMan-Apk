.class Lcom/cheng/channel/ChannelView$do$do;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cheng/channel/ChannelView$do;->import(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/View;

.field public final synthetic if:Lcom/cheng/channel/ChannelView$do;


# direct methods
.method public constructor <init>(Lcom/cheng/channel/ChannelView$do;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cheng/channel/ChannelView$do$do;->if:Lcom/cheng/channel/ChannelView$do;

    iput-object p2, p0, Lcom/cheng/channel/ChannelView$do$do;->do:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x41

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/cheng/channel/ChannelView$do$do;->do:Landroid/view/View;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/cheng/channel/ChannelView$do$do;->if:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v1}, Lcom/cheng/channel/ChannelView$do;->try(Lcom/cheng/channel/ChannelView$do;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method
