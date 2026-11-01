.class final Lrx/internal/schedulers/if$do;
.super Lrx/if$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field private final do:Landroid/support/v4/d32;

.field private final for:Landroid/support/v4/d32;

.field private final if:Landroid/support/v4/dq;

.field private final new:Lrx/internal/schedulers/if$for;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/if$for;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lrx/if$do;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/d32;

    invoke-direct {v0}, Landroid/support/v4/d32;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/if$do;->do:Landroid/support/v4/d32;

    .line 3
    new-instance v1, Landroid/support/v4/dq;

    invoke-direct {v1}, Landroid/support/v4/dq;-><init>()V

    iput-object v1, p0, Lrx/internal/schedulers/if$do;->if:Landroid/support/v4/dq;

    .line 4
    new-instance v2, Landroid/support/v4/d32;

    const/4 v3, 0x2

    new-array v3, v3, [Lrx/Subscription;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/d32;-><init>([Lrx/Subscription;)V

    iput-object v2, p0, Lrx/internal/schedulers/if$do;->for:Landroid/support/v4/d32;

    .line 5
    iput-object p1, p0, Lrx/internal/schedulers/if$do;->new:Lrx/internal/schedulers/if$for;

    return-void
.end method


# virtual methods
.method public for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lrx/internal/schedulers/if$do;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lrx/subscriptions/for;->try()Lrx/Subscription;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/if$do;->new:Lrx/internal/schedulers/if$for;

    new-instance v1, Lrx/internal/schedulers/if$do$if;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/if$do$if;-><init>(Lrx/internal/schedulers/if$do;Lrx/functions/Action0;)V

    iget-object v5, p0, Lrx/internal/schedulers/if$do;->if:Landroid/support/v4/dq;

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/else;->break(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;Landroid/support/v4/dq;)Lrx/internal/schedulers/goto;

    move-result-object p1

    return-object p1
.end method

.method public if(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lrx/internal/schedulers/if$do;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lrx/subscriptions/for;->try()Lrx/Subscription;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/if$do;->new:Lrx/internal/schedulers/if$for;

    new-instance v1, Lrx/internal/schedulers/if$do$do;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/if$do$do;-><init>(Lrx/internal/schedulers/if$do;Lrx/functions/Action0;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lrx/internal/schedulers/if$do;->do:Landroid/support/v4/d32;

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/else;->catch(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;Landroid/support/v4/d32;)Lrx/internal/schedulers/goto;

    move-result-object p1

    return-object p1
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/if$do;->for:Landroid/support/v4/d32;

    invoke-virtual {v0}, Landroid/support/v4/d32;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/if$do;->for:Landroid/support/v4/d32;

    invoke-virtual {v0}, Landroid/support/v4/d32;->unsubscribe()V

    return-void
.end method
