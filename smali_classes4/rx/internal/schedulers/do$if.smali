.class final Lrx/internal/schedulers/do$if;
.super Lrx/if$do;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final do:Landroid/support/v4/dq;

.field private final for:Lrx/internal/schedulers/do$for;

.field private final if:Lrx/internal/schedulers/do$do;

.field public final new:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/do$do;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrx/if$do;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/dq;

    invoke-direct {v0}, Landroid/support/v4/dq;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/do$if;->do:Landroid/support/v4/dq;

    .line 3
    iput-object p1, p0, Lrx/internal/schedulers/do$if;->if:Lrx/internal/schedulers/do$do;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/do$if;->new:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {p1}, Lrx/internal/schedulers/do$do;->if()Lrx/internal/schedulers/do$for;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/schedulers/do$if;->for:Lrx/internal/schedulers/do$for;

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/do$if;->if:Lrx/internal/schedulers/do$do;

    iget-object v1, p0, Lrx/internal/schedulers/do$if;->for:Lrx/internal/schedulers/do$for;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/do$do;->new(Lrx/internal/schedulers/do$for;)V

    return-void
.end method

.method public for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/do$if;->do:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lrx/subscriptions/for;->try()Lrx/Subscription;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/do$if;->for:Lrx/internal/schedulers/do$for;

    new-instance v1, Lrx/internal/schedulers/do$if$do;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/do$if$do;-><init>(Lrx/internal/schedulers/do$if;Lrx/functions/Action0;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lrx/internal/schedulers/else;->this(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/goto;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lrx/internal/schedulers/do$if;->do:Landroid/support/v4/dq;

    invoke-virtual {p2, p1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 5
    iget-object p2, p0, Lrx/internal/schedulers/do$if;->do:Landroid/support/v4/dq;

    invoke-virtual {p1, p2}, Lrx/internal/schedulers/goto;->addParent(Landroid/support/v4/dq;)V

    return-object p1
.end method

.method public if(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/internal/schedulers/do$if;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/do$if;->do:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/do$if;->new:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/schedulers/do$if;->for:Lrx/internal/schedulers/do$for;

    invoke-virtual {v0, p0}, Lrx/internal/schedulers/else;->if(Lrx/functions/Action0;)Lrx/Subscription;

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/do$if;->do:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->unsubscribe()V

    return-void
.end method
