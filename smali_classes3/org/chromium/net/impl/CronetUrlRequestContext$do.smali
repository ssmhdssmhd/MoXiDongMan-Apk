.class Lorg/chromium/net/impl/CronetUrlRequestContext$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetUrlRequestContext;-><init>(Lorg/chromium/net/impl/if;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/chromium/net/impl/CronetUrlRequestContext;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/CronetUrlRequestContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$do;->do:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/net/impl/CronetLibraryLoader;->if()V

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$do;->do:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->finally(Lorg/chromium/net/impl/CronetUrlRequestContext;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$do;->do:Lorg/chromium/net/impl/CronetUrlRequestContext;

    .line 4
    invoke-static {v2}, Lorg/chromium/net/impl/CronetUrlRequestContext;->package(Lorg/chromium/net/impl/CronetUrlRequestContext;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$do;->do:Lorg/chromium/net/impl/CronetUrlRequestContext;

    .line 5
    invoke-interface {v1, v2, v3, v4}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->initRequestContextOnInitThread(JLorg/chromium/net/impl/CronetUrlRequestContext;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
