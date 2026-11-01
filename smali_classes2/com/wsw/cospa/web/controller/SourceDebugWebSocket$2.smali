.class Lcom/wsw/cospa/web/controller/SourceDebugWebSocket$2;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;->onOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket$2;->this$0:Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Long;)V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket$2;->this$0:Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->byteValue()B

    move-result p1

    aput-byte p1, v1, v2

    invoke-virtual {v0, v1}, Lfi/iki/elonen/do$for;->ping([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket$2;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket$2;->this$0:Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;

    invoke-static {v0}, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;->access$000(Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;)Landroid/support/v4/cq;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
