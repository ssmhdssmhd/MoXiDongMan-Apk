.class final Lorg/chromium/net/impl/CronetBidirectionalStream$else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetBidirectionalStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "else"
.end annotation


# instance fields
.field private do:Ljava/nio/ByteBuffer;

.field public final synthetic for:Lorg/chromium/net/impl/CronetBidirectionalStream;

.field private final if:Z


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/nio/ByteBuffer;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->for:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->do:Ljava/nio/ByteBuffer;

    .line 3
    iput-boolean p3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->if:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->do:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->do:Ljava/nio/ByteBuffer;

    .line 3
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->for:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->else(Lorg/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->for:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->goto(Lorg/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    monitor-exit v1

    return-void

    .line 6
    :cond_0
    iget-boolean v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->if:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->for:Lorg/chromium/net/impl/CronetBidirectionalStream;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lorg/chromium/net/impl/CronetBidirectionalStream;->super(Lorg/chromium/net/impl/CronetBidirectionalStream;I)I

    .line 8
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->for:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->class(Lorg/chromium/net/impl/CronetBidirectionalStream;)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 9
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->for:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->while(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$do;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->for:Lorg/chromium/net/impl/CronetBidirectionalStream;

    .line 11
    invoke-static {v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->throw(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/this;

    move-result-object v4

    iget-boolean v5, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->if:Z

    .line 12
    invoke-virtual {v1, v2, v4, v0, v5}, Lorg/chromium/net/impl/VersionSafeCallbacks$do;->goto(Lorg/chromium/net/if;Lorg/chromium/net/static;Ljava/nio/ByteBuffer;Z)V

    if-eqz v3, :cond_2

    .line 13
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->for:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->import(Lorg/chromium/net/impl/CronetBidirectionalStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$else;->for:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->native(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method
