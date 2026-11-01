.class Lcom/wsw/cospa/widget/ScrollBindHelper$VisibleHandler;
.super Lcom/wsw/cospa/widget/LastMsgHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/ScrollBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibleHandler"
.end annotation


# instance fields
.field private helper:Lcom/wsw/cospa/widget/ScrollBindHelper;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/ScrollBindHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/LastMsgHandler;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/ScrollBindHelper$VisibleHandler;->helper:Lcom/wsw/cospa/widget/ScrollBindHelper;

    return-void
.end method


# virtual methods
.method public handleLastMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ScrollBindHelper$VisibleHandler;->helper:Lcom/wsw/cospa/widget/ScrollBindHelper;

    invoke-static {p1}, Lcom/wsw/cospa/widget/ScrollBindHelper;->access$000(Lcom/wsw/cospa/widget/ScrollBindHelper;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/widget/LastMsgHandler;->sendMsgDelayed(J)V

    return-void
.end method
