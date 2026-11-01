.class public final Lrx/subjects/ReplaySubject;
.super Landroid/support/v4/u22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$do;,
        Lrx/subjects/ReplaySubject$if;,
        Lrx/subjects/ReplaySubject$for;,
        Lrx/subjects/ReplaySubject$try;,
        Lrx/subjects/ReplaySubject$ReplayBuffer;,
        Lrx/subjects/ReplaySubject$new;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/u22<",
        "TT;TT;>;"
    }
.end annotation


# static fields
.field private static final for:[Ljava/lang/Object;


# instance fields
.field public final if:Lrx/subjects/ReplaySubject$new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$new<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sput-object v0, Lrx/subjects/ReplaySubject;->for:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/subjects/ReplaySubject$new;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$new<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/u22;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p1, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    return-void
.end method

.method public static g6()Lrx/subjects/ReplaySubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lrx/subjects/ReplaySubject;->h6(I)Lrx/subjects/ReplaySubject;

    move-result-object v0

    return-object v0
.end method

.method public static h6(I)Lrx/subjects/ReplaySubject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    if-lez p0, :cond_0

    .line 1
    new-instance v0, Lrx/subjects/ReplaySubject$try;

    invoke-direct {v0, p0}, Lrx/subjects/ReplaySubject$try;-><init>(I)V

    .line 2
    new-instance p0, Lrx/subjects/ReplaySubject$new;

    invoke-direct {p0, v0}, Lrx/subjects/ReplaySubject$new;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 3
    new-instance v0, Lrx/subjects/ReplaySubject;

    invoke-direct {v0, p0}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$new;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i6()Lrx/subjects/ReplaySubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/ReplaySubject$for;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lrx/subjects/ReplaySubject$for;-><init>(I)V

    .line 2
    new-instance v1, Lrx/subjects/ReplaySubject$new;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$new;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 3
    new-instance v0, Lrx/subjects/ReplaySubject;

    invoke-direct {v0, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$new;)V

    return-object v0
.end method

.method public static j6()Lrx/subjects/ReplaySubject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/ReplaySubject$if;

    invoke-static {}, Landroid/support/v4/ds1;->new()Lrx/if;

    move-result-object v1

    const v2, 0x7fffffff

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3, v4, v1}, Lrx/subjects/ReplaySubject$if;-><init>(IJLrx/if;)V

    .line 2
    new-instance v1, Lrx/subjects/ReplaySubject$new;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$new;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 3
    new-instance v0, Lrx/subjects/ReplaySubject;

    invoke-direct {v0, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$new;)V

    return-object v0
.end method

.method public static k6(I)Lrx/subjects/ReplaySubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/ReplaySubject$for;

    invoke-direct {v0, p0}, Lrx/subjects/ReplaySubject$for;-><init>(I)V

    .line 2
    new-instance p0, Lrx/subjects/ReplaySubject$new;

    invoke-direct {p0, v0}, Lrx/subjects/ReplaySubject$new;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 3
    new-instance v0, Lrx/subjects/ReplaySubject;

    invoke-direct {v0, p0}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$new;)V

    return-object v0
.end method

.method public static l6(JLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/subjects/ReplaySubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/if;",
            ")",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-static {p0, p1, p2, v0, p3}, Lrx/subjects/ReplaySubject;->m6(JLjava/util/concurrent/TimeUnit;ILrx/if;)Lrx/subjects/ReplaySubject;

    move-result-object p0

    return-object p0
.end method

.method public static m6(JLjava/util/concurrent/TimeUnit;ILrx/if;)Lrx/subjects/ReplaySubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/if;",
            ")",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/ReplaySubject$if;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    invoke-direct {v0, p3, p0, p1, p4}, Lrx/subjects/ReplaySubject$if;-><init>(IJLrx/if;)V

    .line 2
    new-instance p0, Lrx/subjects/ReplaySubject$new;

    invoke-direct {p0, v0}, Lrx/subjects/ReplaySubject$new;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 3
    new-instance p1, Lrx/subjects/ReplaySubject;

    invoke-direct {p1, p0}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$new;)V

    return-object p1
.end method


# virtual methods
.method public e6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$do;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n6()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$new;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$new;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->error()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o6()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$new;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$new;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    invoke-virtual {v0, p1}, Lrx/subjects/ReplaySubject$new;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    invoke-virtual {v0, p1}, Lrx/subjects/ReplaySubject$new;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public p6()[Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lrx/subjects/ReplaySubject;->for:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lrx/subjects/ReplaySubject;->q6([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public q6([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$new;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$ReplayBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$new;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public s6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$new;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$new;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$new;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$new;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u6()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject;->r6()Z

    move-result v0

    return v0
.end method

.method public v6()I
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$new;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->size()I

    move-result v0

    return v0
.end method

.method public w6()I
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->if:Lrx/subjects/ReplaySubject$new;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$do;

    array-length v0, v0

    return v0
.end method
