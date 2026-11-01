.class final Lrx/internal/operators/interface$do$if;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/interface$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xc4fec6ae3bc6ed6L


# instance fields
.field public final synthetic this$0:Lrx/internal/operators/interface$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/interface$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/interface$do$if;->this$0:Lrx/internal/operators/interface$do;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/interface$do$if;->this$0:Lrx/internal/operators/interface$do;

    iget-boolean v0, v0, Lrx/internal/operators/interface$do;->class:Z

    return v0
.end method

.method public produced(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/support/v4/u6;->this(Ljava/util/concurrent/atomic/AtomicLong;J)J

    return-void
.end method

.method public request(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/support/v4/u6;->if(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 2
    iget-object p1, p0, Lrx/internal/operators/interface$do$if;->this$0:Lrx/internal/operators/interface$do;

    invoke-virtual {p1}, Lrx/internal/operators/interface$do;->do()V

    :cond_0
    return-void
.end method

.method public unsubscribe()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/interface$do$if;->this$0:Lrx/internal/operators/interface$do;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/internal/operators/interface$do;->class:Z

    .line 2
    iget-object v0, p0, Lrx/internal/operators/interface$do$if;->this$0:Lrx/internal/operators/interface$do;

    invoke-virtual {v0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 3
    iget-object v0, p0, Lrx/internal/operators/interface$do$if;->this$0:Lrx/internal/operators/interface$do;

    iget-object v0, v0, Lrx/internal/operators/interface$do;->try:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lrx/internal/operators/interface$do$if;->this$0:Lrx/internal/operators/interface$do;

    iget-object v0, v0, Lrx/internal/operators/interface$do;->this:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_0
    return-void
.end method
