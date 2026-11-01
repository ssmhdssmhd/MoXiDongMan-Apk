.class final Lorg/chromium/net/impl/CronetUrlRequest$catch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "catch"
.end annotation


# instance fields
.field public do:Ljava/nio/ByteBuffer;

.field public final synthetic if:Lorg/chromium/net/impl/CronetUrlRequest;


# direct methods
.method private constructor <init>(Lorg/chromium/net/impl/CronetUrlRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest$catch;->if:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/CronetUrlRequest$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest$catch;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$catch;->if:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->default()V

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$catch;->do:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$catch;->do:Ljava/nio/ByteBuffer;

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$catch;->if:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetUrlRequest;->catch(Lorg/chromium/net/impl/CronetUrlRequest;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequest$catch;->if:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetUrlRequest;->while(Lorg/chromium/net/impl/CronetUrlRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    monitor-exit v1

    return-void

    .line 7
    :cond_0
    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequest$catch;->if:Lorg/chromium/net/impl/CronetUrlRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/chromium/net/impl/CronetUrlRequest;->import(Lorg/chromium/net/impl/CronetUrlRequest;Z)Z

    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$catch;->if:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetUrlRequest;->public(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/VersionSafeCallbacks$else;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequest$catch;->if:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetUrlRequest;->native(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/this;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lorg/chromium/net/impl/VersionSafeCallbacks$else;->for(Lorg/chromium/net/return;Lorg/chromium/net/static;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
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

    .line 11
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$catch;->if:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->return(Lorg/chromium/net/impl/CronetUrlRequest;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
