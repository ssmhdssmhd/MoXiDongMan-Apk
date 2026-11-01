.class public final Lrx/internal/operators/OperatorReplay;
.super Lrx/observables/for;
.source "SourceFile"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorReplay$class;,
        Lrx/internal/operators/OperatorReplay$const;,
        Lrx/internal/operators/OperatorReplay$goto;,
        Lrx/internal/operators/OperatorReplay$break;,
        Lrx/internal/operators/OperatorReplay$final;,
        Lrx/internal/operators/OperatorReplay$ReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$this;,
        Lrx/internal/operators/OperatorReplay$catch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/for<",
        "TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field public static final try:Lrx/functions/Func0;


# instance fields
.field public final for:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/operators/OperatorReplay$catch<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final new:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0<",
            "+",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/operators/OperatorReplay$do;

    invoke-direct {v0}, Lrx/internal/operators/OperatorReplay$do;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorReplay;->try:Lrx/functions/Func0;

    return-void
.end method

.method private constructor <init>(Lrx/Observable$OnSubscribe;Lrx/Observable;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Func0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;",
            "Lrx/Observable<",
            "+TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/operators/OperatorReplay$catch<",
            "TT;>;>;",
            "Lrx/functions/Func0<",
            "+",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lrx/observables/for;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay;->if:Lrx/Observable;

    .line 3
    iput-object p3, p0, Lrx/internal/operators/OperatorReplay;->for:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iput-object p4, p0, Lrx/internal/operators/OperatorReplay;->new:Lrx/functions/Func0;

    return-void
.end method

.method public static k6(Lrx/Observable;)Lrx/observables/for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;)",
            "Lrx/observables/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lrx/internal/operators/OperatorReplay;->try:Lrx/functions/Func0;

    invoke-static {p0, v0}, Lrx/internal/operators/OperatorReplay;->o6(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/for;

    move-result-object p0

    return-object p0
.end method

.method public static l6(Lrx/Observable;I)Lrx/observables/for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;I)",
            "Lrx/observables/for<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {p0}, Lrx/internal/operators/OperatorReplay;->k6(Lrx/Observable;)Lrx/observables/for;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lrx/internal/operators/OperatorReplay$try;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorReplay$try;-><init>(I)V

    invoke-static {p0, v0}, Lrx/internal/operators/OperatorReplay;->o6(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/for;

    move-result-object p0

    return-object p0
.end method

.method public static m6(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/observables/for;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/if;",
            ")",
            "Lrx/observables/for<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lrx/internal/operators/OperatorReplay;->n6(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/if;I)Lrx/observables/for;

    move-result-object p0

    return-object p0
.end method

.method public static n6(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/if;I)Lrx/observables/for;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/if;",
            "I)",
            "Lrx/observables/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 2
    new-instance p3, Lrx/internal/operators/OperatorReplay$case;

    invoke-direct {p3, p5, p1, p2, p4}, Lrx/internal/operators/OperatorReplay$case;-><init>(IJLrx/if;)V

    invoke-static {p0, p3}, Lrx/internal/operators/OperatorReplay;->o6(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/for;

    move-result-object p0

    return-object p0
.end method

.method public static o6(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/for;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/functions/Func0<",
            "+",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer<",
            "TT;>;>;)",
            "Lrx/observables/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v1, Lrx/internal/operators/OperatorReplay$else;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/OperatorReplay$else;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Func0;)V

    .line 3
    new-instance v2, Lrx/internal/operators/OperatorReplay;

    invoke-direct {v2, v1, p0, v0, p1}, Lrx/internal/operators/OperatorReplay;-><init>(Lrx/Observable$OnSubscribe;Lrx/Observable;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Func0;)V

    return-object v2
.end method

.method public static p6(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0<",
            "+",
            "Lrx/observables/for<",
            "TU;>;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "TU;>;+",
            "Lrx/Observable<",
            "TR;>;>;)",
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/OperatorReplay$if;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorReplay$if;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static q6(Lrx/observables/for;Lrx/if;)Lrx/observables/for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/observables/for<",
            "TT;>;",
            "Lrx/if;",
            ")",
            "Lrx/observables/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lrx/Observable;->q2(Lrx/if;)Lrx/Observable;

    move-result-object p1

    .line 2
    new-instance v0, Lrx/internal/operators/OperatorReplay$for;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorReplay$for;-><init>(Lrx/Observable;)V

    .line 3
    new-instance p1, Lrx/internal/operators/OperatorReplay$new;

    invoke-direct {p1, v0, p0}, Lrx/internal/operators/OperatorReplay$new;-><init>(Lrx/Observable$OnSubscribe;Lrx/observables/for;)V

    return-object p1
.end method


# virtual methods
.method public i6(Lrx/functions/Action1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$catch;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    new-instance v1, Lrx/internal/operators/OperatorReplay$catch;

    iget-object v2, p0, Lrx/internal/operators/OperatorReplay;->new:Lrx/functions/Func0;

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-direct {v1, v2}, Lrx/internal/operators/OperatorReplay$catch;-><init>(Lrx/internal/operators/OperatorReplay$ReplayBuffer;)V

    .line 4
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$catch;->for()V

    .line 5
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 6
    :cond_2
    iget-object v1, v0, Lrx/internal/operators/OperatorReplay$catch;->goto:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lrx/internal/operators/OperatorReplay$catch;->goto:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-interface {p1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    .line 8
    iget-object p1, p0, Lrx/internal/operators/OperatorReplay;->if:Lrx/Observable;

    invoke-virtual {p1, v0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    :cond_4
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$catch;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public unsubscribe()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay;->for:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method
