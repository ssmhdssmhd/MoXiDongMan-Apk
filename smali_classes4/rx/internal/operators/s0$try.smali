.class final Lrx/internal/operators/s0$try;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "Lrx/Observable<",
        "+TT;>;>;"
    }
.end annotation


# static fields
.field public static final import:[Lrx/internal/operators/s0$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/s0$for<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public break:Z

.field public volatile case:Landroid/support/v4/dq;

.field public final catch:Ljava/lang/Object;

.field public volatile class:[Lrx/internal/operators/s0$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/s0$for<",
            "*>;"
        }
    .end annotation
.end field

.field public const:J

.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public volatile else:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final:J

.field public final for:I

.field public volatile goto:Z

.field public final if:Z

.field public new:Lrx/internal/operators/s0$new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/s0$new<",
            "TT;>;"
        }
    .end annotation
.end field

.field public super:I

.field public this:Z

.field public final throw:I

.field public volatile try:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public while:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/operators/s0$for;

    .line 1
    sput-object v0, Lrx/internal/operators/s0$try;->import:[Lrx/internal/operators/s0$for;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/y22;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/s0$try;->do:Landroid/support/v4/y22;

    .line 3
    iput-boolean p2, p0, Lrx/internal/operators/s0$try;->if:Z

    .line 4
    iput p3, p0, Lrx/internal/operators/s0$try;->for:I

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/s0$try;->catch:Ljava/lang/Object;

    .line 6
    sget-object p1, Lrx/internal/operators/s0$try;->import:[Lrx/internal/operators/s0$for;

    iput-object p1, p0, Lrx/internal/operators/s0$try;->class:[Lrx/internal/operators/s0$for;

    const p1, 0x7fffffff

    if-ne p3, p1, :cond_0

    .line 7
    iput p1, p0, Lrx/internal/operators/s0$try;->throw:I

    const-wide p1, 0x7fffffffffffffffL

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    goto :goto_0

    :cond_0
    shr-int/lit8 p1, p3, 0x1

    const/4 p2, 0x1

    .line 9
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lrx/internal/operators/s0$try;->throw:I

    int-to-long p1, p3

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    :goto_0
    return-void
.end method

.method private final()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/s0$try;->else:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lrx/internal/operators/s0$try;->do:Landroid/support/v4/y22;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/s0$try;->do:Landroid/support/v4/y22;

    new-instance v2, Lrx/exceptions/do;

    invoke-direct {v2, v0}, Lrx/exceptions/do;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public break(Lrx/Observable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lrx/Observable;->B0()Lrx/Observable;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->new()V

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Lrx/internal/util/else;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Lrx/internal/util/else;

    invoke-virtual {p1}, Lrx/internal/util/else;->g6()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/s0$try;->throw(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lrx/internal/operators/s0$for;

    iget-wide v1, p0, Lrx/internal/operators/s0$try;->const:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lrx/internal/operators/s0$try;->const:J

    invoke-direct {v0, p0, v1, v2}, Lrx/internal/operators/s0$for;-><init>(Lrx/internal/operators/s0$try;J)V

    .line 6
    invoke-virtual {p0, v0}, Lrx/internal/operators/s0$try;->do(Lrx/internal/operators/s0$for;)V

    .line 7
    invoke-virtual {p1, v0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 8
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->for()V

    :goto_0
    return-void
.end method

.method public case(Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/s0$try;->do:Landroid/support/v4/y22;

    invoke-interface {v2, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    iget-boolean v2, p0, Lrx/internal/operators/s0$try;->if:Z

    if-nez v2, :cond_0

    .line 3
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 4
    :try_start_2
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 5
    invoke-virtual {p0, p1}, Lrx/internal/operators/s0$try;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 6
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->this()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, p2, v2

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lrx/internal/operators/s0$try;->new:Lrx/internal/operators/s0$new;

    invoke-virtual {p1, v0}, Lrx/internal/operators/s0$new;->produced(I)J

    .line 8
    :cond_1
    iget p1, p0, Lrx/internal/operators/s0$try;->while:I

    add-int/2addr p1, v0

    .line 9
    iget p2, p0, Lrx/internal/operators/s0$try;->throw:I

    if-ne p1, p2, :cond_2

    .line 10
    iput v1, p0, Lrx/internal/operators/s0$try;->while:I

    int-to-long p1, p1

    .line 11
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/s0$try;->super(J)V

    goto :goto_1

    .line 12
    :cond_2
    iput p1, p0, Lrx/internal/operators/s0$try;->while:I

    .line 13
    :goto_1
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 14
    :try_start_4
    iget-boolean p1, p0, Lrx/internal/operators/s0$try;->break:Z

    if-nez p1, :cond_3

    .line 15
    iput-boolean v1, p0, Lrx/internal/operators/s0$try;->this:Z

    .line 16
    monitor-exit p0

    return-void

    .line 17
    :cond_3
    iput-boolean v1, p0, Lrx/internal/operators/s0$try;->break:Z

    .line 18
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 19
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->try()V

    return-void

    :catchall_2
    move-exception p1

    .line 20
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_3
    move-exception p1

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    .line 21
    monitor-enter p0

    .line 22
    :try_start_7
    iput-boolean v1, p0, Lrx/internal/operators/s0$try;->this:Z

    .line 23
    monitor-exit p0

    goto :goto_3

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1

    :cond_4
    :goto_3
    throw p1
.end method

.method public catch(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/s0$try;->try:Ljava/util/Queue;

    if-nez v0, :cond_3

    .line 2
    iget v0, p0, Lrx/internal/operators/s0$try;->for:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Landroid/support/v4/f12;

    sget v1, Lrx/internal/util/try;->new:I

    invoke-direct {v0, v1}, Landroid/support/v4/f12;-><init>(I)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {v0}, Landroid/support/v4/ve1;->do(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {}, Lrx/internal/util/unsafe/implements;->case()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lrx/internal/util/unsafe/switch;

    invoke-direct {v1, v0}, Lrx/internal/util/unsafe/switch;-><init>(I)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Lrx/internal/util/atomic/new;

    invoke-direct {v1, v0}, Lrx/internal/util/atomic/new;-><init>(I)V

    goto :goto_0

    .line 8
    :cond_2
    new-instance v1, Landroid/support/v4/c12;

    invoke-direct {v1, v0}, Landroid/support/v4/c12;-><init>(I)V

    :goto_0
    move-object v0, v1

    .line 9
    :goto_1
    iput-object v0, p0, Lrx/internal/operators/s0$try;->try:Ljava/util/Queue;

    .line 10
    :cond_3
    invoke-static {p1}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 12
    new-instance v0, Landroid/support/v4/zz0;

    invoke-direct {v0}, Landroid/support/v4/zz0;-><init>()V

    invoke-static {v0, p1}, Lrx/exceptions/if;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/s0$try;->onError(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public class(Lrx/internal/operators/s0$for;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/s0$for<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lrx/internal/operators/s0$for;->new:Lrx/internal/util/try;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lrx/internal/util/try;->else()Lrx/internal/util/try;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 4
    iput-object v0, p1, Lrx/internal/operators/s0$for;->new:Lrx/internal/util/try;

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p2}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lrx/internal/util/try;->final(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/support/v4/zz0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/support/v4/y22;->unsubscribe()V

    .line 8
    invoke-virtual {p1, p2}, Lrx/internal/operators/s0$for;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 9
    invoke-virtual {p1}, Landroid/support/v4/y22;->unsubscribe()V

    .line 10
    invoke-virtual {p1, p2}, Lrx/internal/operators/s0$for;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public const(Lrx/internal/operators/s0$for;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/s0$for<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lrx/internal/operators/s0$for;->new:Lrx/internal/util/try;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lrx/internal/util/try;->while()V

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/s0$try;->case:Landroid/support/v4/dq;

    invoke-virtual {v0, p1}, Landroid/support/v4/dq;->try(Lrx/Subscription;)V

    .line 4
    iget-object v0, p0, Lrx/internal/operators/s0$try;->catch:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/s0$try;->class:[Lrx/internal/operators/s0$for;

    .line 6
    array-length v2, v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 7
    aget-object v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v3, :cond_3

    .line 8
    monitor-exit v0

    return-void

    :cond_3
    const/4 p1, 0x1

    if-ne v2, p1, :cond_4

    .line 9
    sget-object p1, Lrx/internal/operators/s0$try;->import:[Lrx/internal/operators/s0$for;

    iput-object p1, p0, Lrx/internal/operators/s0$try;->class:[Lrx/internal/operators/s0$for;

    .line 10
    monitor-exit v0

    return-void

    :cond_4
    add-int/lit8 v5, v2, -0x1

    .line 11
    new-array v5, v5, [Lrx/internal/operators/s0$for;

    .line 12
    invoke-static {v1, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    .line 13
    invoke-static {v1, v4, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iput-object v5, p0, Lrx/internal/operators/s0$try;->class:[Lrx/internal/operators/s0$for;

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public do(Lrx/internal/operators/s0$for;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/s0$for<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->goto()Landroid/support/v4/dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/s0$try;->catch:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/s0$try;->class:[Lrx/internal/operators/s0$for;

    .line 4
    array-length v2, v1

    add-int/lit8 v3, v2, 0x1

    .line 5
    new-array v3, v3, [Lrx/internal/operators/s0$for;

    const/4 v4, 0x0

    .line 6
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    aput-object p1, v3, v2

    .line 8
    iput-object v3, p0, Lrx/internal/operators/s0$try;->class:[Lrx/internal/operators/s0$for;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public else(Lrx/internal/operators/s0$for;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/s0$for<",
            "TT;>;TT;J)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/s0$try;->do:Landroid/support/v4/y22;

    invoke-interface {v2, p2}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 2
    :try_start_1
    iget-boolean v2, p0, Lrx/internal/operators/s0$try;->if:Z

    if-nez v2, :cond_0

    .line 3
    invoke-static {p2}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 4
    :try_start_2
    invoke-virtual {p1}, Landroid/support/v4/y22;->unsubscribe()V

    .line 5
    invoke-virtual {p1, p2}, Lrx/internal/operators/s0$for;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->this()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, p3, v2

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Lrx/internal/operators/s0$try;->new:Lrx/internal/operators/s0$new;

    invoke-virtual {p2, v0}, Lrx/internal/operators/s0$new;->produced(I)J

    :cond_1
    const-wide/16 p2, 0x1

    .line 8
    invoke-virtual {p1, p2, p3}, Lrx/internal/operators/s0$for;->do(J)V

    .line 9
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 10
    :try_start_4
    iget-boolean p1, p0, Lrx/internal/operators/s0$try;->break:Z

    if-nez p1, :cond_2

    .line 11
    iput-boolean v1, p0, Lrx/internal/operators/s0$try;->this:Z

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :cond_2
    iput-boolean v1, p0, Lrx/internal/operators/s0$try;->break:Z

    .line 14
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 15
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->try()V

    return-void

    :catchall_2
    move-exception p1

    .line 16
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_3
    move-exception p1

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 17
    monitor-enter p0

    .line 18
    :try_start_7
    iput-boolean v1, p0, Lrx/internal/operators/s0$try;->this:Z

    .line 19
    monitor-exit p0

    goto :goto_2

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1

    :cond_3
    :goto_2
    throw p1
.end method

.method public for()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/s0$try;->this:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lrx/internal/operators/s0$try;->break:Z

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iput-boolean v1, p0, Lrx/internal/operators/s0$try;->this:Z

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->try()V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public goto()Landroid/support/v4/dq;
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/s0$try;->case:Landroid/support/v4/dq;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/s0$try;->case:Landroid/support/v4/dq;

    if-nez v1, :cond_0

    .line 4
    new-instance v0, Landroid/support/v4/dq;

    invoke-direct {v0}, Landroid/support/v4/dq;-><init>()V

    .line 5
    iput-object v0, p0, Lrx/internal/operators/s0$try;->case:Landroid/support/v4/dq;

    const/4 v1, 0x1

    move-object v1, v0

    const/4 v0, 0x1

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public if()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/s0$try;->do:Landroid/support/v4/y22;

    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/s0$try;->else:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    iget-boolean v2, p0, Lrx/internal/operators/s0$try;->if:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :try_start_0
    invoke-direct {p0}, Lrx/internal/operators/s0$try;->final()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    return v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public new()V
    .locals 2

    .line 1
    iget v0, p0, Lrx/internal/operators/s0$try;->while:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget v1, p0, Lrx/internal/operators/s0$try;->throw:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lrx/internal/operators/s0$try;->while:I

    int-to-long v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/s0$try;->super(J)V

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, Lrx/internal/operators/s0$try;->while:I

    :goto_0
    return-void
.end method

.method public onCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lrx/internal/operators/s0$try;->goto:Z

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->for()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->this()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lrx/internal/operators/s0$try;->goto:Z

    .line 3
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->for()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/s0$try;->break(Lrx/Observable;)V

    return-void
.end method

.method public super(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method

.method public this()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/s0$try;->else:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/s0$try;->else:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 5
    iput-object v0, p0, Lrx/internal/operators/s0$try;->else:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public throw(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/s0$try;->new:Lrx/internal/operators/s0$new;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/s0$try;->new:Lrx/internal/operators/s0$new;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 4
    iget-boolean v5, p0, Lrx/internal/operators/s0$try;->this:Z

    const/4 v6, 0x1

    if-nez v5, :cond_0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 5
    iput-boolean v6, p0, Lrx/internal/operators/s0$try;->this:Z

    const/4 v4, 0x1

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    .line 7
    iget-object v2, p0, Lrx/internal/operators/s0$try;->try:Ljava/util/Queue;

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lrx/internal/operators/s0$try;->catch(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->try()V

    goto :goto_2

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lrx/internal/operators/s0$try;->case(Ljava/lang/Object;J)V

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p0, p1}, Lrx/internal/operators/s0$try;->catch(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->for()V

    :goto_2
    return-void
.end method

.method public try()V
    .locals 22

    move-object/from16 v1, p0

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v4, v1, Lrx/internal/operators/s0$try;->do:Landroid/support/v4/y22;

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/s0$try;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v5, v1, Lrx/internal/operators/s0$try;->try:Ljava/util/Queue;

    .line 4
    iget-object v0, v1, Lrx/internal/operators/s0$try;->new:Lrx/internal/operators/s0$new;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    const-wide/16 v11, 0x1

    const-wide/16 v14, 0x0

    if-eqz v5, :cond_9

    const/4 v0, 0x0

    :goto_2
    move-wide/from16 v16, v6

    const/4 v7, 0x0

    move v6, v0

    const/4 v0, 0x0

    :goto_3
    cmp-long v18, v16, v14

    if-lez v18, :cond_5

    .line 5
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v18

    .line 6
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/s0$try;->if()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-nez v18, :cond_3

    move-object/from16 v0, v18

    goto :goto_5

    .line 7
    :cond_3
    invoke-static/range {v18 .. v18}, Lrx/internal/operators/return;->try(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 8
    :try_start_1
    invoke-interface {v4, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v19, v0

    .line 9
    :try_start_2
    iget-boolean v0, v1, Lrx/internal/operators/s0$try;->if:Z

    if-nez v0, :cond_4

    .line 10
    invoke-static/range {v19 .. v19}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 11
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/y22;->unsubscribe()V

    move-object/from16 v5, v19

    .line 12
    invoke-interface {v4, v5}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    const/4 v2, 0x1

    goto/16 :goto_14

    :cond_4
    move-object/from16 v2, v19

    .line 13
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/s0$try;->this()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    sub-long v16, v16, v11

    move-object/from16 v0, v18

    goto :goto_3

    :cond_5
    :goto_5
    if-lez v7, :cond_7

    if-eqz v10, :cond_6

    move-wide/from16 v16, v8

    goto :goto_6

    .line 14
    :cond_6
    iget-object v2, v1, Lrx/internal/operators/s0$try;->new:Lrx/internal/operators/s0$new;

    invoke-virtual {v2, v7}, Lrx/internal/operators/s0$new;->produced(I)J

    move-result-wide v16

    :cond_7
    :goto_6
    cmp-long v2, v16, v14

    if-eqz v2, :cond_a

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    move v0, v6

    move-wide/from16 v6, v16

    goto :goto_2

    :cond_9
    move-wide/from16 v16, v6

    const/4 v6, 0x0

    .line 15
    :cond_a
    :goto_7
    iget-boolean v0, v1, Lrx/internal/operators/s0$try;->goto:Z

    .line 16
    iget-object v2, v1, Lrx/internal/operators/s0$try;->try:Ljava/util/Queue;

    .line 17
    iget-object v5, v1, Lrx/internal/operators/s0$try;->class:[Lrx/internal/operators/s0$for;

    .line 18
    array-length v7, v5

    if-eqz v0, :cond_e

    if-eqz v2, :cond_b

    .line 19
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_b
    if-nez v7, :cond_e

    .line 20
    iget-object v0, v1, Lrx/internal/operators/s0$try;->else:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_d

    .line 21
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    .line 22
    :cond_c
    invoke-direct/range {p0 .. p0}, Lrx/internal/operators/s0$try;->final()V

    goto :goto_9

    .line 23
    :cond_d
    :goto_8
    invoke-interface {v4}, Lrx/Observer;->onCompleted()V

    :goto_9
    return-void

    :cond_e
    if-lez v7, :cond_24

    .line 24
    iget-wide v8, v1, Lrx/internal/operators/s0$try;->final:J

    .line 25
    iget v0, v1, Lrx/internal/operators/s0$try;->super:I

    if-le v7, v0, :cond_f

    .line 26
    aget-object v2, v5, v0

    iget-wide v11, v2, Lrx/internal/operators/s0$for;->if:J

    cmp-long v2, v11, v8

    if-eqz v2, :cond_14

    :cond_f
    if-gt v7, v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v7, :cond_13

    .line 27
    aget-object v11, v5, v0

    iget-wide v11, v11, Lrx/internal/operators/s0$for;->if:J

    cmp-long v18, v11, v8

    if-nez v18, :cond_11

    goto :goto_b

    :cond_11
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_12

    const/4 v0, 0x0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 28
    :cond_13
    :goto_b
    iput v0, v1, Lrx/internal/operators/s0$try;->super:I

    .line 29
    aget-object v2, v5, v0

    iget-wide v8, v2, Lrx/internal/operators/s0$for;->if:J

    iput-wide v8, v1, Lrx/internal/operators/s0$try;->final:J

    :cond_14
    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_c
    if-ge v2, v7, :cond_23

    .line 30
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/s0$try;->if()Z

    move-result v9

    if-eqz v9, :cond_15

    return-void

    .line 31
    :cond_15
    aget-object v9, v5, v0

    const/4 v11, 0x0

    :cond_16
    const/4 v12, 0x0

    :goto_d
    cmp-long v18, v16, v14

    if-lez v18, :cond_19

    .line 32
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/s0$try;->if()Z

    move-result v18

    if-eqz v18, :cond_17

    return-void

    .line 33
    :cond_17
    iget-object v13, v9, Lrx/internal/operators/s0$for;->new:Lrx/internal/util/try;

    if-nez v13, :cond_18

    goto :goto_e

    .line 34
    :cond_18
    invoke-virtual {v13}, Lrx/internal/util/try;->throw()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1a

    :cond_19
    :goto_e
    const-wide/16 v20, 0x1

    goto :goto_f

    .line 35
    :cond_1a
    invoke-static {v11}, Lrx/internal/operators/return;->try(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 36
    :try_start_5
    invoke-interface {v4, v13}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-wide/16 v20, 0x1

    sub-long v16, v16, v20

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 37
    :try_start_6
    invoke-static {v2}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 38
    :try_start_7
    invoke-interface {v4, v2}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 39
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/y22;->unsubscribe()V

    return-void

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/y22;->unsubscribe()V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_f
    if-lez v12, :cond_1c

    if-nez v10, :cond_1b

    .line 40
    :try_start_9
    iget-object v13, v1, Lrx/internal/operators/s0$try;->new:Lrx/internal/operators/s0$new;

    invoke-virtual {v13, v12}, Lrx/internal/operators/s0$new;->produced(I)J

    move-result-wide v16

    goto :goto_10

    :cond_1b
    const-wide v16, 0x7fffffffffffffffL

    :goto_10
    int-to-long v12, v12

    .line 41
    invoke-virtual {v9, v12, v13}, Lrx/internal/operators/s0$for;->do(J)V

    :cond_1c
    cmp-long v12, v16, v14

    if-eqz v12, :cond_1d

    if-nez v11, :cond_16

    .line 42
    :cond_1d
    iget-boolean v11, v9, Lrx/internal/operators/s0$for;->for:Z

    .line 43
    iget-object v12, v9, Lrx/internal/operators/s0$for;->new:Lrx/internal/util/try;

    if-eqz v11, :cond_20

    if-eqz v12, :cond_1e

    .line 44
    invoke-virtual {v12}, Lrx/internal/util/try;->break()Z

    move-result v11

    if-eqz v11, :cond_20

    .line 45
    :cond_1e
    invoke-virtual {v1, v9}, Lrx/internal/operators/s0$try;->const(Lrx/internal/operators/s0$for;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/s0$try;->if()Z

    move-result v8

    if-eqz v8, :cond_1f

    return-void

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x1

    :cond_20
    cmp-long v9, v16, v14

    if-nez v9, :cond_21

    goto :goto_11

    :cond_21
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_22

    const/4 v0, 0x0

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 47
    :cond_23
    :goto_11
    iput v0, v1, Lrx/internal/operators/s0$try;->super:I

    .line 48
    aget-object v0, v5, v0

    iget-wide v9, v0, Lrx/internal/operators/s0$for;->if:J

    iput-wide v9, v1, Lrx/internal/operators/s0$try;->final:J

    goto :goto_12

    :cond_24
    const/4 v8, 0x0

    :goto_12
    if-lez v6, :cond_25

    int-to-long v5, v6

    .line 49
    invoke-virtual {v1, v5, v6}, Landroid/support/v4/y22;->request(J)V

    :cond_25
    if-eqz v8, :cond_26

    goto/16 :goto_0

    .line 50
    :cond_26
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 51
    :try_start_a
    iget-boolean v0, v1, Lrx/internal/operators/s0$try;->break:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-nez v0, :cond_27

    .line 52
    :try_start_b
    iput-boolean v3, v1, Lrx/internal/operators/s0$try;->this:Z

    .line 53
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    const/4 v2, 0x1

    goto :goto_13

    .line 54
    :cond_27
    :try_start_c
    iput-boolean v3, v1, Lrx/internal/operators/s0$try;->break:Z

    .line 55
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    const/4 v2, 0x0

    :goto_13
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_14

    :catchall_7
    move-exception v0

    goto :goto_13

    :catchall_8
    move-exception v0

    const/4 v2, 0x0

    :goto_14
    if-nez v2, :cond_28

    .line 56
    monitor-enter p0

    .line 57
    :try_start_f
    iput-boolean v3, v1, Lrx/internal/operators/s0$try;->this:Z

    .line 58
    monitor-exit p0

    goto :goto_15

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    throw v0

    :cond_28
    :goto_15
    goto :goto_17

    :goto_16
    throw v0

    :goto_17
    goto :goto_16
.end method

.method public while(Lrx/internal/operators/s0$for;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/s0$for<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/s0$try;->new:Lrx/internal/operators/s0$new;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/s0$try;->new:Lrx/internal/operators/s0$new;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 4
    iget-boolean v5, p0, Lrx/internal/operators/s0$try;->this:Z

    const/4 v6, 0x1

    if-nez v5, :cond_0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 5
    iput-boolean v6, p0, Lrx/internal/operators/s0$try;->this:Z

    const/4 v4, 0x1

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    .line 7
    iget-object v2, p1, Lrx/internal/operators/s0$for;->new:Lrx/internal/util/try;

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v2}, Lrx/internal/util/try;->break()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/s0$try;->class(Lrx/internal/operators/s0$for;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->try()V

    goto :goto_2

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, v0, v1}, Lrx/internal/operators/s0$try;->else(Lrx/internal/operators/s0$for;Ljava/lang/Object;J)V

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/s0$try;->class(Lrx/internal/operators/s0$for;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lrx/internal/operators/s0$try;->for()V

    :goto_2
    return-void
.end method
