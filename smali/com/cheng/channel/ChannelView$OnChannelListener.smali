.class public interface abstract Lcom/cheng/channel/ChannelView$OnChannelListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cheng/channel/ChannelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChannelListener"
.end annotation


# virtual methods
.method public abstract channelEditFinish(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/ih;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract channelEditStart()V
.end method

.method public abstract channelItemClick(ILandroid/support/v4/ih;)V
.end method
