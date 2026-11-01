.class public Lrx/Completable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Completable$Transformer;,
        Lrx/Completable$Operator;,
        Lrx/Completable$OnSubscribe;
    }
.end annotation


# static fields
.field public static final for:Lrx/Completable;

.field public static final if:Lrx/Completable;


# instance fields
.field private final do:Lrx/Completable$OnSubscribe;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrx/Completable;

    new-instance v1, Lrx/Completable$catch;

    invoke-direct {v1}, Lrx/Completable$catch;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/Completable;-><init>(Lrx/Completable$OnSubscribe;Z)V

    sput-object v0, Lrx/Completable;->if:Lrx/Completable;

    .line 2
    new-instance v0, Lrx/Completable;

    new-instance v1, Lrx/Completable$static;

    invoke-direct {v1}, Lrx/Completable$static;-><init>()V

    invoke-direct {v0, v1, v2}, Lrx/Completable;-><init>(Lrx/Completable$OnSubscribe;Z)V

    sput-object v0, Lrx/Completable;->for:Lrx/Completable;

    return-void
.end method

.method public constructor <init>(Lrx/Completable$OnSubscribe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lrx/plugins/if;->strictfp(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object p1

    iput-object p1, p0, Lrx/Completable;->do:Lrx/Completable$OnSubscribe;

    return-void
.end method

.method public constructor <init>(Lrx/Completable$OnSubscribe;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Lrx/plugins/if;->strictfp(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lrx/Completable;->do:Lrx/Completable$OnSubscribe;

    return-void
.end method

.method public static M(JLjava/util/concurrent/TimeUnit;)Lrx/Completable;
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/ds1;->do()Lrx/if;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/Completable;->N(JLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static N(JLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/Completable;
    .locals 1

    .line 1
    invoke-static {p2}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lrx/Completable$for;

    invoke-direct {v0, p3, p0, p1, p2}, Lrx/Completable$for;-><init>(Lrx/if;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static P(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method private U(Landroid/support/v4/y22;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/y22<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/y22;->onStart()V

    .line 3
    :cond_0
    new-instance p2, Lrx/Completable$throws;

    invoke-direct {p2, p0, p1}, Lrx/Completable$throws;-><init>(Lrx/Completable;Landroid/support/v4/y22;)V

    invoke-virtual {p0, p2}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    .line 4
    invoke-static {p1}, Lrx/plugins/if;->a(Lrx/Subscription;)Lrx/Subscription;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p1}, Lrx/plugins/if;->instanceof(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p1}, Lrx/Completable;->P(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    .line 9
    throw p1
.end method

.method public static X(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0<",
            "TR;>;",
            "Lrx/functions/Func1<",
            "-TR;+",
            "Lrx/Completable;",
            ">;",
            "Lrx/functions/Action1<",
            "-TR;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lrx/Completable;->Y(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0<",
            "TR;>;",
            "Lrx/functions/Func1<",
            "-TR;+",
            "Lrx/Completable;",
            ">;",
            "Lrx/functions/Action1<",
            "-TR;>;Z)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lrx/Completable$new;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/Completable$new;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static abstract(Ljava/lang/Throwable;)Lrx/Completable;
    .locals 1

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$volatile;

    invoke-direct {v0, p0}, Lrx/Completable$volatile;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Iterable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/internal/operators/throw;

    invoke-direct {v0, p0}, Lrx/internal/operators/throw;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lrx/Observable;)Lrx/Completable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lrx/Completable;->f(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Ljava/lang/Iterable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/internal/operators/catch;

    invoke-direct {v0, p0}, Lrx/internal/operators/catch;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static class(Lrx/Observable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Lrx/Completable;->const(Lrx/Observable;I)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static const(Lrx/Observable;I)Lrx/Completable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+",
            "Lrx/Completable;",
            ">;I)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 2
    new-instance v0, Lrx/internal/operators/this;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/this;-><init>(Lrx/Observable;I)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefetch > 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static continue(Lrx/functions/Func0;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$strictfp;

    invoke-direct {v0, p0}, Lrx/Completable$strictfp;-><init>(Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lrx/Observable;I)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+",
            "Lrx/Completable;",
            ">;I)",
            "Lrx/Completable;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lrx/Completable;->f(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static do(Ljava/lang/Iterable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$abstract;

    invoke-direct {v0, p0}, Lrx/Completable$abstract;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e([Lrx/Completable;)Lrx/Completable;
    .locals 2

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lrx/Completable;->this()Lrx/Completable;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lrx/internal/operators/const;

    invoke-direct {v0, p0}, Lrx/internal/operators/const;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lrx/Observable;IZ)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+",
            "Lrx/Completable;",
            ">;IZ)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 2
    new-instance v0, Lrx/internal/operators/class;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/class;-><init>(Lrx/Observable;IZ)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maxConcurrency > 0 required but it was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs final([Lrx/Completable;)Lrx/Completable;
    .locals 2

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lrx/Completable;->this()Lrx/Completable;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lrx/internal/operators/break;

    invoke-direct {v0, p0}, Lrx/internal/operators/break;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Iterable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/internal/operators/super;

    invoke-direct {v0, p0}, Lrx/internal/operators/super;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lrx/Observable;)Lrx/Completable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Lrx/Completable;->f(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lrx/Observable;I)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+",
            "Lrx/Completable;",
            ">;I)",
            "Lrx/Completable;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lrx/Completable;->f(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs if([Lrx/Completable;)Lrx/Completable;
    .locals 2

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lrx/Completable;->this()Lrx/Completable;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lrx/Completable$switch;

    invoke-direct {v0, p0}, Lrx/Completable$switch;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static implements(Lrx/Single;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single<",
            "*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$if;

    invoke-direct {v0, p0}, Lrx/Completable$if;-><init>(Lrx/Single;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static interface(Lrx/functions/Action1;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Lrx/CompletableEmitter;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/goto;

    invoke-direct {v0, p0}, Lrx/internal/operators/goto;-><init>(Lrx/functions/Action1;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs j([Lrx/Completable;)Lrx/Completable;
    .locals 1

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/internal/operators/final;

    invoke-direct {v0, p0}, Lrx/internal/operators/final;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static l()Lrx/Completable;
    .locals 3

    .line 1
    sget-object v0, Lrx/Completable;->for:Lrx/Completable;

    iget-object v1, v0, Lrx/Completable;->do:Lrx/Completable$OnSubscribe;

    invoke-static {v1}, Lrx/plugins/if;->strictfp(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lrx/Completable;->do:Lrx/Completable$OnSubscribe;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lrx/Completable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/Completable;-><init>(Lrx/Completable$OnSubscribe;Z)V

    return-object v0
.end method

.method public static protected(Ljava/util/concurrent/Future;)Lrx/Completable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lrx/Observable;->e1(Ljava/util/concurrent/Future;)Lrx/Observable;

    move-result-object p0

    invoke-static {p0}, Lrx/Completable;->transient(Lrx/Observable;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static return(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static strictfp(Lrx/functions/Action0;)Lrx/Completable;
    .locals 1

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$interface;

    invoke-direct {v0, p0}, Lrx/Completable$interface;-><init>(Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static this()Lrx/Completable;
    .locals 3

    .line 1
    sget-object v0, Lrx/Completable;->if:Lrx/Completable;

    iget-object v1, v0, Lrx/Completable;->do:Lrx/Completable$OnSubscribe;

    invoke-static {v1}, Lrx/plugins/if;->strictfp(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lrx/Completable;->do:Lrx/Completable$OnSubscribe;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lrx/Completable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/Completable;-><init>(Lrx/Completable$OnSubscribe;Z)V

    return-object v0
.end method

.method public static throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;
    .locals 1

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    new-instance v0, Lrx/Completable;

    invoke-direct {v0, p0}, Lrx/Completable;-><init>(Lrx/Completable$OnSubscribe;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p0}, Lrx/Completable;->P(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    .line 5
    throw p0
.end method

.method public static transient(Lrx/Observable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$do;

    invoke-direct {v0, p0}, Lrx/Completable$do;-><init>(Lrx/Observable;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static volatile(Ljava/util/concurrent/Callable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$protected;

    invoke-direct {v0, p0}, Lrx/Completable$protected;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static while(Lrx/functions/Func0;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0<",
            "+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$continue;

    invoke-direct {v0, p0}, Lrx/Completable$continue;-><init>(Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lrx/Subscription;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/x01;

    invoke-direct {v0}, Landroid/support/v4/x01;-><init>()V

    .line 2
    new-instance v1, Lrx/Completable$native;

    invoke-direct {v1, p0, v0}, Lrx/Completable$native;-><init>(Lrx/Completable;Landroid/support/v4/x01;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    return-object v0
.end method

.method public final B(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 2

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/x01;

    invoke-direct {v0}, Landroid/support/v4/x01;-><init>()V

    .line 3
    new-instance v1, Lrx/Completable$public;

    invoke-direct {v1, p0, p1, v0}, Lrx/Completable$public;-><init>(Lrx/Completable;Lrx/functions/Action0;Landroid/support/v4/x01;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    return-object v0
.end method

.method public final C(Lrx/functions/Action0;Lrx/functions/Action1;)Lrx/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/support/v4/x01;

    invoke-direct {v0}, Landroid/support/v4/x01;-><init>()V

    .line 4
    new-instance v1, Lrx/Completable$return;

    invoke-direct {v1, p0, p1, v0, p2}, Lrx/Completable$return;-><init>(Lrx/Completable;Lrx/functions/Action0;Landroid/support/v4/x01;Lrx/functions/Action1;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    return-object v0
.end method

.method public final D(Landroid/support/v4/y22;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/y22<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/y22;->onStart()V

    .line 2
    instance-of v0, p1, Landroid/support/v4/sr1;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/support/v4/sr1;

    invoke-direct {v0, p1}, Landroid/support/v4/sr1;-><init>(Landroid/support/v4/y22;)V

    move-object p1, v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lrx/Completable;->U(Landroid/support/v4/y22;Z)V

    return-void
.end method

.method public final E(Lrx/CompletableSubscriber;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v4/pr1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/pr1;

    invoke-direct {v0, p1}, Landroid/support/v4/pr1;-><init>(Lrx/CompletableSubscriber;)V

    move-object p1, v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public final F(Lrx/if;)Lrx/Completable;
    .locals 1

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$default;

    invoke-direct {v0, p0, p1}, Lrx/Completable$default;-><init>(Lrx/Completable;Lrx/if;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final G()Lrx/observers/AssertableSubscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observers/AssertableSubscriber<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-static {v0, v1}, Landroid/support/v4/v3;->do(J)Landroid/support/v4/v3;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lrx/Completable;->D(Landroid/support/v4/y22;)V

    return-object v0
.end method

.method public final H(JLjava/util/concurrent/TimeUnit;)Lrx/Completable;
    .locals 6

    .line 1
    invoke-static {}, Landroid/support/v4/ds1;->do()Lrx/if;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->L(JLjava/util/concurrent/TimeUnit;Lrx/if;Lrx/Completable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final I(JLjava/util/concurrent/TimeUnit;Lrx/Completable;)Lrx/Completable;
    .locals 6

    .line 1
    invoke-static {p4}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroid/support/v4/ds1;->do()Lrx/if;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->L(JLjava/util/concurrent/TimeUnit;Lrx/if;Lrx/Completable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final J(JLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/Completable;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->L(JLjava/util/concurrent/TimeUnit;Lrx/if;Lrx/Completable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final K(JLjava/util/concurrent/TimeUnit;Lrx/if;Lrx/Completable;)Lrx/Completable;
    .locals 0

    .line 1
    invoke-static {p5}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual/range {p0 .. p5}, Lrx/Completable;->L(JLjava/util/concurrent/TimeUnit;Lrx/if;Lrx/Completable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final L(JLjava/util/concurrent/TimeUnit;Lrx/if;Lrx/Completable;)Lrx/Completable;
    .locals 8

    .line 1
    invoke-static {p3}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p4}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v7, Lrx/internal/operators/while;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/while;-><init>(Lrx/Completable;JLjava/util/concurrent/TimeUnit;Lrx/if;Lrx/Completable;)V

    invoke-static {v7}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final O(Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Completable;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final Q()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/Completable$extends;

    invoke-direct {v0, p0}, Lrx/Completable$extends;-><init>(Lrx/Completable;)V

    invoke-static {v0}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final R(Lrx/functions/Func0;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0<",
            "+TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$finally;

    invoke-direct {v0, p0, p1}, Lrx/Completable$finally;-><init>(Lrx/Completable;Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final S(Ljava/lang/Object;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$package;

    invoke-direct {v0, p0, p1}, Lrx/Completable$package;-><init>(Lrx/Completable;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/Completable;->R(Lrx/functions/Func0;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final T(Landroid/support/v4/y22;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/y22<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lrx/Completable;->U(Landroid/support/v4/y22;Z)V

    return-void
.end method

.method public final V(Lrx/CompletableSubscriber;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, p0, Lrx/Completable;->do:Lrx/Completable$OnSubscribe;

    invoke-static {p0, v0}, Lrx/plugins/if;->abstract(Lrx/Completable;Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 5
    invoke-static {p1}, Lrx/plugins/if;->package(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {p1}, Lrx/Completable;->P(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    .line 8
    throw p1
.end method

.method public final W(Lrx/if;)Lrx/Completable;
    .locals 1

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$private;

    invoke-direct {v0, p0, p1}, Lrx/Completable$private;-><init>(Lrx/Completable;Lrx/if;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lrx/Completable$Operator;)Lrx/Completable;
    .locals 1

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$super;

    invoke-direct {v0, p0, p1}, Lrx/Completable$super;-><init>(Lrx/Completable;Lrx/Completable$Operator;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final break(Lrx/Completable$Transformer;)Lrx/Completable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lrx/Completable;->O(Lrx/functions/Func1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Completable;

    return-object p1
.end method

.method public final case(Lrx/Single;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lrx/Completable;->Q()Lrx/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Single;->while(Lrx/Observable;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final default(Lrx/functions/Action1;)Lrx/Completable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v1

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v3

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v4

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->extends(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final else()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [Ljava/lang/Throwable;

    .line 2
    new-instance v2, Lrx/Completable$try;

    invoke-direct {v2, p0, v0, v1}, Lrx/Completable$try;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_1

    .line 4
    aget-object v0, v1, v4

    if-eqz v0, :cond_0

    .line 5
    aget-object v0, v1, v4

    invoke-static {v0}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    :cond_0
    return-void

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    aget-object v0, v1, v4

    if-eqz v0, :cond_2

    .line 8
    aget-object v0, v1, v4

    invoke-static {v0}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final extends(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-",
            "Lrx/Subscription;",
            ">;",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p4}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p5}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v7, Lrx/Completable$break;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/Completable$break;-><init>(Lrx/Completable;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    invoke-static {v7}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final finally(Lrx/functions/Action1;)Lrx/Completable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-",
            "Lrx/Subscription;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v2

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v3

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v4

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->extends(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final for(Lrx/Completable;)Lrx/Completable;
    .locals 2

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lrx/Completable;->if([Lrx/Completable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final goto(JLjava/util/concurrent/TimeUnit;)Z
    .locals 9

    .line 1
    invoke-static {p3}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v2, v1, [Ljava/lang/Throwable;

    .line 3
    new-instance v3, Lrx/Completable$case;

    invoke-direct {v3, p0, v0, v2}, Lrx/Completable$case;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-nez v8, :cond_1

    .line 5
    aget-object p1, v2, v5

    if-eqz p1, :cond_0

    .line 6
    aget-object p1, v2, v5

    invoke-static {p1}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    :cond_0
    return v1

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    .line 8
    aget-object p2, v2, v5

    if-eqz p2, :cond_2

    .line 9
    aget-object p2, v2, v5

    invoke-static {p2}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    :cond_2
    return p1

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final import(JLjava/util/concurrent/TimeUnit;)Lrx/Completable;
    .locals 6

    .line 1
    invoke-static {}, Landroid/support/v4/ds1;->do()Lrx/if;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->public(JLjava/util/concurrent/TimeUnit;Lrx/if;Z)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final instanceof()Ljava/lang/Throwable;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [Ljava/lang/Throwable;

    .line 2
    new-instance v2, Lrx/Completable$const;

    invoke-direct {v2, p0, v0, v1}, Lrx/Completable$const;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_0

    .line 4
    aget-object v0, v1, v4

    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    aget-object v0, v1, v4

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final k(Lrx/Completable;)Lrx/Completable;
    .locals 2

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lrx/Completable;->e([Lrx/Completable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lrx/if;)Lrx/Completable;
    .locals 1

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$throw;

    invoke-direct {v0, p0, p1}, Lrx/Completable$throw;-><init>(Lrx/Completable;Lrx/if;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final n()Lrx/Completable;
    .locals 1

    .line 1
    invoke-static {}, Lrx/internal/util/this;->if()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Completable;->o(Lrx/functions/Func1;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final native(JLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/Completable;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->public(JLjava/util/concurrent/TimeUnit;Lrx/if;Z)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final new(Lrx/Completable;)Lrx/Completable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lrx/Completable;->super(Lrx/Completable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lrx/functions/Func1;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$while;

    invoke-direct {v0, p0, p1}, Lrx/Completable$while;-><init>(Lrx/Completable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lrx/functions/Func1;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Completable$import;

    invoke-direct {v0, p0, p1}, Lrx/Completable$import;-><init>(Lrx/Completable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final package(Lrx/functions/Action0;)Lrx/Completable;
    .locals 6

    .line 1
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v1

    new-instance v2, Lrx/Completable$class;

    invoke-direct {v2, p0, p1}, Lrx/Completable$class;-><init>(Lrx/Completable;Lrx/functions/Action0;)V

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v4

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->extends(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final private(Lrx/functions/Action0;)Lrx/Completable;
    .locals 6

    .line 1
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v1

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v2

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v3

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->extends(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final public(JLjava/util/concurrent/TimeUnit;Lrx/if;Z)Lrx/Completable;
    .locals 8

    .line 1
    invoke-static {p3}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p4}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v7, Lrx/Completable$else;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p1

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/Completable$else;-><init>(Lrx/Completable;Lrx/if;JLjava/util/concurrent/TimeUnit;Z)V

    invoke-static {v7}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final q()Lrx/Completable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/Completable;->Q()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->O2()Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->transient(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final r(J)Lrx/Completable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/Completable;->Q()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/Observable;->P2(J)Lrx/Observable;

    move-result-object p1

    invoke-static {p1}, Lrx/Completable;->transient(Lrx/Observable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lrx/functions/Func1;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/Observable<",
            "*>;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lrx/Completable;->Q()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->S2(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    invoke-static {p1}, Lrx/Completable;->transient(Lrx/Observable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final static(Lrx/functions/Action0;)Lrx/Completable;
    .locals 6

    .line 1
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v1

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v2

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v3

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v5

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->extends(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final super(Lrx/Completable;)Lrx/Completable;
    .locals 2

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lrx/Completable;->final([Lrx/Completable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final switch(Lrx/functions/Action0;)Lrx/Completable;
    .locals 6

    .line 1
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v1

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v2

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v4

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->extends(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final synchronized(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .locals 8

    .line 1
    invoke-static {p3}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [Ljava/lang/Throwable;

    .line 3
    new-instance v2, Lrx/Completable$final;

    invoke-direct {v2, p0, v0, v1}, Lrx/Completable$final;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_0

    .line 5
    aget-object p1, v1, v4

    return-object p1

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 7
    aget-object p1, v1, v4

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-static {p1}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final throws(Lrx/functions/Action1;)Lrx/Completable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Lrx/do<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v1

    new-instance v2, Lrx/Completable$goto;

    invoke-direct {v2, p0, p1}, Lrx/Completable$goto;-><init>(Lrx/Completable;Lrx/functions/Action1;)V

    new-instance v3, Lrx/Completable$this;

    invoke-direct {v3, p0, p1}, Lrx/Completable$this;-><init>(Lrx/Completable;Lrx/functions/Action1;)V

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v4

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->extends(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "onNotification is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final try(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lrx/Completable;->Q()Lrx/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->h0(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final u()Lrx/Completable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/Completable;->Q()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->k3()Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->transient(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final v(J)Lrx/Completable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/Completable;->Q()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/Observable;->l3(J)Lrx/Observable;

    move-result-object p1

    invoke-static {p1}, Lrx/Completable;->transient(Lrx/Observable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lrx/functions/Func2;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/Completable;->Q()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->m3(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object p1

    invoke-static {p1}, Lrx/Completable;->transient(Lrx/Observable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final x(Lrx/functions/Func1;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable<",
            "*>;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/Completable;->Q()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->n3(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    invoke-static {p1}, Lrx/Completable;->transient(Lrx/Observable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final y(Lrx/Completable;)Lrx/Completable;
    .locals 2

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 2
    invoke-static {v0}, Lrx/Completable;->final([Lrx/Completable;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final z(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrx/Completable;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lrx/Completable;->Q()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->W3(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
