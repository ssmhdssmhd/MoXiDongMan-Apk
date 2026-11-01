.class public final Lorg/chromium/net/impl/JavaUrlRequestUtils$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/JavaUrlRequestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;
    }
.end annotation


# instance fields
.field private final do:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$if;->do:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;-><init>(Ljava/lang/Runnable;Ljava/lang/Thread;Lorg/chromium/net/impl/JavaUrlRequestUtils$do;)V

    .line 3
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$if;->do:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {v1}, Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;->do(Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;)Landroid/support/v4/sm0;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    invoke-static {v1, v2}, Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;->if(Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    .line 6
    :cond_0
    invoke-static {v1}, Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;->do(Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;)Landroid/support/v4/sm0;

    move-result-object p1

    throw p1
.end method
