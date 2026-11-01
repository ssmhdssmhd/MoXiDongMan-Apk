.class final Lrx/internal/operators/instanceof$do;
.super Ljava/util/HashMap;
.source "SourceFile"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/instanceof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/instanceof$do$for;,
        Lrx/internal/operators/instanceof$do$do;,
        Lrx/internal/operators/instanceof$do$new;,
        Lrx/internal/operators/instanceof$do$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lrx/Observer<",
        "TT2;>;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2a1f0a50492e2277L


# instance fields
.field public final cancel:Lrx/subscriptions/if;

.field public final group:Landroid/support/v4/dq;

.field public leftDone:Z

.field public leftIds:I

.field public rightDone:Z

.field public rightIds:I

.field public final rightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT2;>;"
        }
    .end annotation
.end field

.field public final subscriber:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lrx/internal/operators/instanceof;


# direct methods
.method public constructor <init>(Lrx/internal/operators/instanceof;Landroid/support/v4/y22;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lrx/internal/operators/instanceof$do;->this$0:Lrx/internal/operators/instanceof;

    .line 2
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/instanceof$do;->rightMap:Ljava/util/Map;

    .line 4
    iput-object p2, p0, Lrx/internal/operators/instanceof$do;->subscriber:Landroid/support/v4/y22;

    .line 5
    new-instance p1, Landroid/support/v4/dq;

    invoke-direct {p1}, Landroid/support/v4/dq;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/instanceof$do;->group:Landroid/support/v4/dq;

    .line 6
    new-instance p2, Lrx/subscriptions/if;

    invoke-direct {p2, p1}, Lrx/subscriptions/if;-><init>(Lrx/Subscription;)V

    iput-object p2, p0, Lrx/internal/operators/instanceof$do;->cancel:Lrx/subscriptions/if;

    return-void
.end method


# virtual methods
.method public complete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrx/Observer<",
            "TT2;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    .line 2
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lrx/internal/operators/instanceof$do;->subscriber:Landroid/support/v4/y22;

    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    .line 4
    iget-object p1, p0, Lrx/internal/operators/instanceof$do;->cancel:Lrx/subscriptions/if;

    invoke-virtual {p1}, Lrx/subscriptions/if;->unsubscribe()V

    :cond_1
    return-void
.end method

.method public errorAll(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lrx/internal/operators/instanceof$do;->leftMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {p0}, Lrx/internal/operators/instanceof$do;->leftMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v1, p0, Lrx/internal/operators/instanceof$do;->rightMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observer;

    .line 7
    invoke-interface {v1, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/instanceof$do;->subscriber:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 9
    iget-object p1, p0, Lrx/internal/operators/instanceof$do;->cancel:Lrx/subscriptions/if;

    invoke-virtual {p1}, Lrx/subscriptions/if;->unsubscribe()V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public errorMain(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lrx/internal/operators/instanceof$do;->leftMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v0, p0, Lrx/internal/operators/instanceof$do;->rightMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lrx/internal/operators/instanceof$do;->subscriber:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 6
    iget-object p1, p0, Lrx/internal/operators/instanceof$do;->cancel:Lrx/subscriptions/if;

    invoke-virtual {p1}, Lrx/subscriptions/if;->unsubscribe()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public init()V
    .locals 3

    .line 1
    new-instance v0, Lrx/internal/operators/instanceof$do$if;

    invoke-direct {v0, p0}, Lrx/internal/operators/instanceof$do$if;-><init>(Lrx/internal/operators/instanceof$do;)V

    .line 2
    new-instance v1, Lrx/internal/operators/instanceof$do$new;

    invoke-direct {v1, p0}, Lrx/internal/operators/instanceof$do$new;-><init>(Lrx/internal/operators/instanceof$do;)V

    .line 3
    iget-object v2, p0, Lrx/internal/operators/instanceof$do;->group:Landroid/support/v4/dq;

    invoke-virtual {v2, v0}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 4
    iget-object v2, p0, Lrx/internal/operators/instanceof$do;->group:Landroid/support/v4/dq;

    invoke-virtual {v2, v1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 5
    iget-object v2, p0, Lrx/internal/operators/instanceof$do;->this$0:Lrx/internal/operators/instanceof;

    iget-object v2, v2, Lrx/internal/operators/instanceof;->do:Lrx/Observable;

    invoke-virtual {v2, v0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 6
    iget-object v0, p0, Lrx/internal/operators/instanceof$do;->this$0:Lrx/internal/operators/instanceof;

    iget-object v0, v0, Lrx/internal/operators/instanceof;->if:Lrx/Observable;

    invoke-virtual {v0, v1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/instanceof$do;->cancel:Lrx/subscriptions/if;

    invoke-virtual {v0}, Lrx/subscriptions/if;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public leftMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lrx/Observer<",
            "TT2;>;>;"
        }
    .end annotation

    return-object p0
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/instanceof$do;->cancel:Lrx/subscriptions/if;

    invoke-virtual {v0}, Lrx/subscriptions/if;->unsubscribe()V

    return-void
.end method
