.class Lorg/chromium/net/impl/else$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/else;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/chromium/net/public;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/concurrent/Executor;

.field public final synthetic if:Lorg/chromium/net/impl/else;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/else;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/else$do;->if:Lorg/chromium/net/impl/else;

    iput-object p2, p0, Lorg/chromium/net/impl/else$do;->do:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/else$do;->do:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/else$do;->if:Lorg/chromium/net/impl/else;

    invoke-virtual {v0, p1}, Lorg/chromium/net/impl/else;->static(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
