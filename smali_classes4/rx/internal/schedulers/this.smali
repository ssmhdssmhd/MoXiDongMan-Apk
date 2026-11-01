.class public Lrx/internal/schedulers/this;
.super Lrx/if;
.source "SourceFile"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/this$case;,
        Lrx/internal/schedulers/this$new;,
        Lrx/internal/schedulers/this$try;,
        Lrx/internal/schedulers/this$else;
    }
.end annotation


# static fields
.field public static final new:Lrx/Subscription;

.field public static final try:Lrx/Subscription;


# instance fields
.field private final do:Lrx/if;

.field private final for:Lrx/Subscription;

.field private final if:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "Lrx/Observable<",
            "Lrx/Completable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/schedulers/this$for;

    invoke-direct {v0}, Lrx/internal/schedulers/this$for;-><init>()V

    sput-object v0, Lrx/internal/schedulers/this;->new:Lrx/Subscription;

    .line 2
    invoke-static {}, Lrx/subscriptions/for;->try()Lrx/Subscription;

    move-result-object v0

    sput-object v0, Lrx/internal/schedulers/this;->try:Lrx/Subscription;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/if;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "Lrx/Observable<",
            "Lrx/Observable<",
            "Lrx/Completable;",
            ">;>;",
            "Lrx/Completable;",
            ">;",
            "Lrx/if;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lrx/if;-><init>()V

    .line 2
    iput-object p2, p0, Lrx/internal/schedulers/this;->do:Lrx/if;

    .line 3
    invoke-static {}, Lrx/subjects/for;->g6()Lrx/subjects/for;

    move-result-object p2

    .line 4
    new-instance v0, Lrx/observers/for;

    invoke-direct {v0, p2}, Lrx/observers/for;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/internal/schedulers/this;->if:Lrx/Observer;

    .line 5
    invoke-virtual {p2}, Lrx/Observable;->v2()Lrx/Observable;

    move-result-object p2

    invoke-interface {p1, p2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Completable;

    invoke-virtual {p1}, Lrx/Completable;->A()Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/schedulers/this;->for:Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public do()Lrx/if$do;
    .locals 4

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/this;->do:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v0

    .line 2
    invoke-static {}, Lrx/internal/operators/try;->g6()Lrx/internal/operators/try;

    move-result-object v1

    .line 3
    new-instance v2, Lrx/observers/for;

    invoke-direct {v2, v1}, Lrx/observers/for;-><init>(Lrx/Observer;)V

    .line 4
    new-instance v3, Lrx/internal/schedulers/this$do;

    invoke-direct {v3, p0, v0}, Lrx/internal/schedulers/this$do;-><init>(Lrx/internal/schedulers/this;Lrx/if$do;)V

    invoke-virtual {v1, v3}, Lrx/Observable;->K1(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 5
    new-instance v3, Lrx/internal/schedulers/this$if;

    invoke-direct {v3, p0, v0, v2}, Lrx/internal/schedulers/this$if;-><init>(Lrx/internal/schedulers/this;Lrx/if$do;Lrx/Observer;)V

    .line 6
    iget-object v0, p0, Lrx/internal/schedulers/this;->if:Lrx/Observer;

    invoke-interface {v0, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return-object v3
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/this;->for:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/this;->for:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method
