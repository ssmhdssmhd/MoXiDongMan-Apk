.class Lorg/chromium/net/impl/CronetBidirectionalStream$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetBidirectionalStream;->onStreamReady(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lorg/chromium/net/impl/CronetBidirectionalStream;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->if:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iput-boolean p2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->if:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->else(Lorg/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->if:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->goto(Lorg/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->if:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iget-boolean v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->do:Z

    invoke-static {v1, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->return(Lorg/chromium/net/impl/CronetBidirectionalStream;Z)Z

    .line 5
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->if:Lorg/chromium/net/impl/CronetBidirectionalStream;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->const(Lorg/chromium/net/impl/CronetBidirectionalStream;I)I

    .line 6
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->if:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->this(Lorg/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->break(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->if:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->public(Lorg/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->if:Lorg/chromium/net/impl/CronetBidirectionalStream;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->super(Lorg/chromium/net/impl/CronetBidirectionalStream;I)I

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->if:Lorg/chromium/net/impl/CronetBidirectionalStream;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->super(Lorg/chromium/net/impl/CronetBidirectionalStream;I)I

    .line 9
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->if:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->while(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$do;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->if:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/VersionSafeCallbacks$do;->case(Lorg/chromium/net/if;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;->if:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->native(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
