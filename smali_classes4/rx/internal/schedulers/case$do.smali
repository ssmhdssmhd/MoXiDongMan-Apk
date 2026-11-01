.class final Lrx/internal/schedulers/case$do;
.super Lrx/if$do;
.source "SourceFile"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public final do:Lrx/subscriptions/do;

.field public final synthetic if:Lrx/internal/schedulers/case;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/schedulers/case$do;->if:Lrx/internal/schedulers/case;

    invoke-direct {p0}, Lrx/if$do;-><init>()V

    .line 2
    new-instance p1, Lrx/subscriptions/do;

    invoke-direct {p1}, Lrx/subscriptions/do;-><init>()V

    iput-object p1, p0, Lrx/internal/schedulers/case$do;->do:Lrx/subscriptions/do;

    return-void
.end method


# virtual methods
.method public for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/case$do;->if:Lrx/internal/schedulers/case;

    invoke-virtual {v0}, Lrx/if;->if()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    add-long/2addr v0, p2

    .line 2
    new-instance p2, Lrx/internal/schedulers/break;

    invoke-direct {p2, p1, p0, v0, v1}, Lrx/internal/schedulers/break;-><init>(Lrx/functions/Action0;Lrx/if$do;J)V

    invoke-virtual {p0, p2}, Lrx/internal/schedulers/case$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public if(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 0

    .line 1
    invoke-interface {p1}, Lrx/functions/Action0;->call()V

    .line 2
    invoke-static {}, Lrx/subscriptions/for;->try()Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/case$do;->do:Lrx/subscriptions/do;

    invoke-virtual {v0}, Lrx/subscriptions/do;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/case$do;->do:Lrx/subscriptions/do;

    invoke-virtual {v0}, Lrx/subscriptions/do;->unsubscribe()V

    return-void
.end method
