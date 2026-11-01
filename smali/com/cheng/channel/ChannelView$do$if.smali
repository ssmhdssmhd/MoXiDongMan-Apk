.class Lcom/cheng/channel/ChannelView$do$if;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cheng/channel/ChannelView$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/cheng/channel/ChannelView$do;


# direct methods
.method public constructor <init>(Lcom/cheng/channel/ChannelView$do;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cheng/channel/ChannelView$do$if;->do:Lcom/cheng/channel/ChannelView$do;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->bringToFront()V

    .line 3
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do$if;->do:Lcom/cheng/channel/ChannelView$do;

    iget-object v0, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView;->implements(Lcom/cheng/channel/ChannelView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do$if;->do:Lcom/cheng/channel/ChannelView$do;

    iget-object v0, v0, Lcom/cheng/channel/ChannelView$do;->private:Lcom/cheng/channel/ChannelView;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView;->instanceof(Lcom/cheng/channel/ChannelView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/cheng/channel/ChannelView$do$if;->do:Lcom/cheng/channel/ChannelView$do;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cheng/channel/ChannelView$do;->case(Lcom/cheng/channel/ChannelView$do;Z)Z

    return-void
.end method
