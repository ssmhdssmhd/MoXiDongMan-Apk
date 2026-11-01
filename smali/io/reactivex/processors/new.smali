.class public final Lio/reactivex/processors/new;
.super Lio/reactivex/processors/for;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/cs1;
    value = "none"
.end annotation

.annotation runtime Landroid/support/v4/t6;
    value = .enum Landroid/support/v4/s6;->FULL:Landroid/support/v4/s6;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/new$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/for<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final final:[Lio/reactivex/processors/new$do;

.field public static final super:[Lio/reactivex/processors/new$do;


# instance fields
.field public volatile break:Z

.field public final case:I

.field public volatile catch:Ljava/lang/Throwable;

.field public class:I

.field public const:I

.field public final else:I

.field public final for:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field public final goto:Z

.field public final if:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final new:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/new$do<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public volatile this:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final try:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/processors/new$do;

    .line 1
    sput-object v1, Lio/reactivex/processors/new;->final:[Lio/reactivex/processors/new$do;

    new-array v0, v0, [Lio/reactivex/processors/new$do;

    .line 2
    sput-object v0, Lio/reactivex/processors/new;->super:[Lio/reactivex/processors/new$do;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/reactivex/processors/for;-><init>()V

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 3
    iput p1, p0, Lio/reactivex/processors/new;->case:I

    shr-int/lit8 v0, p1, 0x2

    sub-int/2addr p1, v0

    .line 4
    iput p1, p0, Lio/reactivex/processors/new;->else:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/processors/new;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/processors/new;->final:[Lio/reactivex/processors/new$do;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/processors/new;->new:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/processors/new;->for:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    iput-boolean p2, p0, Lio/reactivex/processors/new;->goto:Z

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/processors/new;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static R7()Lio/reactivex/processors/new;
    .locals 3
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/processors/new;

    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/processors/new;-><init>(IZ)V

    return-object v0
.end method

.method public static S7(I)Lio/reactivex/processors/new;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/processors/new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/processors/new;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/processors/new;-><init>(IZ)V

    return-object v0
.end method

.method public static T7(IZ)Lio/reactivex/processors/new;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IZ)",
            "Lio/reactivex/processors/new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/processors/new;

    invoke-direct {v0, p0, p1}, Lio/reactivex/processors/new;-><init>(IZ)V

    return-object v0
.end method

.method public static U7(Z)Lio/reactivex/processors/new;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lio/reactivex/processors/new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/processors/new;

    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lio/reactivex/processors/new;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public L7()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/new;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/new;->catch:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public M7()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/new;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/new;->catch:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N7()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/new;->new:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/new$do;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O7()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/new;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/new;->catch:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q7(Lio/reactivex/processors/new$do;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/new$do<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/new;->new:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/new$do;

    .line 2
    sget-object v1, Lio/reactivex/processors/new;->super:[Lio/reactivex/processors/new$do;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 3
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 4
    new-array v3, v3, [Lio/reactivex/processors/new$do;

    .line 5
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    aput-object p1, v3, v1

    .line 7
    iget-object v1, p0, Lio/reactivex/processors/new;->new:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public V7()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lio/reactivex/processors/new;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v1, Lio/reactivex/processors/new;->new:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iget v0, v1, Lio/reactivex/processors/new;->class:I

    .line 4
    iget v3, v1, Lio/reactivex/processors/new;->else:I

    .line 5
    iget v4, v1, Lio/reactivex/processors/new;->const:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 6
    :cond_1
    :goto_0
    iget-object v7, v1, Lio/reactivex/processors/new;->this:Lio/reactivex/internal/fuseable/SimpleQueue;

    if-eqz v7, :cond_14

    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lio/reactivex/processors/new$do;

    .line 8
    array-length v9, v8

    if-eqz v9, :cond_14

    .line 9
    array-length v9, v8

    const-wide/16 v10, -0x1

    move-wide v14, v10

    const/4 v13, 0x0

    :goto_1
    const-wide/16 v16, 0x0

    if-ge v13, v9, :cond_4

    aget-object v12, v8, v13

    .line 10
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    cmp-long v20, v18, v16

    if-ltz v20, :cond_3

    cmp-long v16, v14, v10

    if-nez v16, :cond_2

    .line 11
    iget-wide v14, v12, Lio/reactivex/processors/new$do;->emitted:J

    sub-long v14, v18, v14

    goto :goto_2

    .line 12
    :cond_2
    iget-wide v10, v12, Lio/reactivex/processors/new$do;->emitted:J

    sub-long v10, v18, v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v10, -0x1

    goto :goto_1

    :cond_4
    move v9, v0

    :cond_5
    :goto_3
    cmp-long v0, v14, v16

    if-lez v0, :cond_e

    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/new$do;

    .line 14
    sget-object v10, Lio/reactivex/processors/new;->super:[Lio/reactivex/processors/new$do;

    if-ne v0, v10, :cond_6

    .line 15
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void

    :cond_6
    if-eq v8, v0, :cond_7

    goto/16 :goto_a

    .line 16
    :cond_7
    iget-boolean v0, v1, Lio/reactivex/processors/new;->break:Z

    .line 17
    :try_start_0
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v10, v0

    .line 18
    invoke-static {v10}, Landroid/support/v4/t80;->if(Ljava/lang/Throwable;)V

    .line 19
    iget-object v0, v1, Lio/reactivex/processors/new;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/for;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 v0, 0x0

    .line 20
    iput-object v10, v1, Lio/reactivex/processors/new;->catch:Ljava/lang/Throwable;

    .line 21
    iput-boolean v5, v1, Lio/reactivex/processors/new;->break:Z

    move-object v10, v0

    const/4 v0, 0x1

    :goto_4
    if-nez v10, :cond_8

    const/4 v11, 0x1

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    :goto_5
    if-eqz v0, :cond_b

    if-eqz v11, :cond_b

    .line 22
    iget-object v0, v1, Lio/reactivex/processors/new;->catch:Ljava/lang/Throwable;

    if-eqz v0, :cond_9

    .line 23
    sget-object v3, Lio/reactivex/processors/new;->super:[Lio/reactivex/processors/new$do;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/processors/new$do;

    array-length v3, v2

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v3, :cond_a

    aget-object v4, v2, v12

    .line 24
    invoke-virtual {v4, v0}, Lio/reactivex/processors/new$do;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 25
    :cond_9
    sget-object v0, Lio/reactivex/processors/new;->super:[Lio/reactivex/processors/new$do;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/new$do;

    array-length v2, v0

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v2, :cond_a

    aget-object v3, v0, v12

    .line 26
    invoke-virtual {v3}, Lio/reactivex/processors/new$do;->onComplete()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_a
    return-void

    :cond_b
    if-eqz v11, :cond_c

    goto :goto_9

    .line 27
    :cond_c
    array-length v0, v8

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v0, :cond_d

    aget-object v12, v8, v11

    .line 28
    invoke-virtual {v12, v10}, Lio/reactivex/processors/new$do;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_d
    const-wide/16 v10, 0x1

    sub-long/2addr v14, v10

    if-eq v4, v5, :cond_5

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v3, :cond_5

    .line 29
    iget-object v0, v1, Lio/reactivex/processors/new;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    int-to-long v9, v3

    invoke-interface {v0, v9, v10}, Lorg/reactivestreams/Subscription;->request(J)V

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_e
    :goto_9
    cmp-long v0, v14, v16

    if-nez v0, :cond_13

    .line 30
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/new$do;

    .line 31
    sget-object v10, Lio/reactivex/processors/new;->super:[Lio/reactivex/processors/new$do;

    if-ne v0, v10, :cond_f

    .line 32
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void

    :cond_f
    if-eq v8, v0, :cond_10

    :goto_a
    move v0, v9

    goto/16 :goto_0

    .line 33
    :cond_10
    iget-boolean v0, v1, Lio/reactivex/processors/new;->break:Z

    if-eqz v0, :cond_13

    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 34
    iget-object v0, v1, Lio/reactivex/processors/new;->catch:Ljava/lang/Throwable;

    if-eqz v0, :cond_11

    .line 35
    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/processors/new$do;

    array-length v3, v2

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v3, :cond_12

    aget-object v4, v2, v12

    .line 36
    invoke-virtual {v4, v0}, Lio/reactivex/processors/new$do;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 37
    :cond_11
    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/new$do;

    array-length v2, v0

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v2, :cond_12

    aget-object v3, v0, v12

    .line 38
    invoke-virtual {v3}, Lio/reactivex/processors/new$do;->onComplete()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_12
    return-void

    :cond_13
    move v0, v9

    .line 39
    :cond_14
    iput v0, v1, Lio/reactivex/processors/new;->class:I

    .line 40
    iget-object v7, v1, Lio/reactivex/processors/new;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v6, v6

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public W7(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/new;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "offer called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lio/reactivex/processors/new;->const:I

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/reactivex/processors/new;->this:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/reactivex/processors/new;->V7()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public X7(Lio/reactivex/processors/new$do;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/new$do<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/new;->new:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/new$do;

    .line 2
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 3
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    .line 4
    iget-boolean v1, p0, Lio/reactivex/processors/new;->goto:Z

    if-eqz v1, :cond_5

    .line 5
    iget-object v1, p0, Lio/reactivex/processors/new;->new:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/new;->super:[Lio/reactivex/processors/new$do;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lio/reactivex/processors/new;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/for;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 7
    iget-object p1, p0, Lio/reactivex/processors/new;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    .line 8
    :cond_5
    iget-object v1, p0, Lio/reactivex/processors/new;->new:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/new;->final:[Lio/reactivex/processors/new$do;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v1, -0x1

    .line 9
    new-array v5, v5, [Lio/reactivex/processors/new$do;

    .line 10
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 11
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v1, p0, Lio/reactivex/processors/new;->new:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_2
    return-void
.end method

.method public Y7()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/new;->for:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/subscriptions/do;->INSTANCE:Lio/reactivex/internal/subscriptions/do;

    invoke-static {v0, v1}, Lio/reactivex/internal/subscriptions/for;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/b12;

    iget v1, p0, Lio/reactivex/processors/new;->case:I

    invoke-direct {v0, v1}, Landroid/support/v4/b12;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/new;->this:Lio/reactivex/internal/fuseable/SimpleQueue;

    :cond_0
    return-void
.end method

.method public Z7()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/new;->for:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/subscriptions/do;->INSTANCE:Lio/reactivex/internal/subscriptions/do;

    invoke-static {v0, v1}, Lio/reactivex/internal/subscriptions/for;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/e12;

    iget v1, p0, Lio/reactivex/processors/new;->case:I

    invoke-direct {v0, v1}, Landroid/support/v4/e12;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/new;->this:Lio/reactivex/internal/fuseable/SimpleQueue;

    :cond_0
    return-void
.end method

.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/processors/new$do;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/new$do;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/new;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/processors/new;->Q7(Lio/reactivex/processors/new$do;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lio/reactivex/processors/new;->X7(Lio/reactivex/processors/new$do;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/processors/new;->V7()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lio/reactivex/processors/new;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/reactivex/processors/new;->goto:Z

    if-nez v0, :cond_3

    .line 8
    :cond_2
    iget-object v0, p0, Lio/reactivex/processors/new;->catch:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_3
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/new;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v2, p0, Lio/reactivex/processors/new;->break:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/processors/new;->V7()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/reactivex/processors/new;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lio/reactivex/processors/new;->catch:Ljava/lang/Throwable;

    .line 4
    iput-boolean v2, p0, Lio/reactivex/processors/new;->break:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/processors/new;->V7()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    :goto_0
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
    iget-object v0, p0, Lio/reactivex/processors/new;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lio/reactivex/processors/new;->const:I

    if-nez v0, :cond_1

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 3
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lio/reactivex/processors/new;->this:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/reactivex/processors/new;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/for;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 6
    new-instance p1, Landroid/support/v4/a01;

    invoke-direct {p1}, Landroid/support/v4/a01;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/processors/new;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/processors/new;->V7()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/new;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/for;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    const/4 v1, 0x3

    .line 4
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueFuseable;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iput v1, p0, Lio/reactivex/processors/new;->const:I

    .line 6
    iput-object v0, p0, Lio/reactivex/processors/new;->this:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 7
    iput-boolean v2, p0, Lio/reactivex/processors/new;->break:Z

    .line 8
    invoke-virtual {p0}, Lio/reactivex/processors/new;->V7()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9
    iput v1, p0, Lio/reactivex/processors/new;->const:I

    .line 10
    iput-object v0, p0, Lio/reactivex/processors/new;->this:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 11
    iget v0, p0, Lio/reactivex/processors/new;->case:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void

    .line 12
    :cond_1
    new-instance v0, Landroid/support/v4/b12;

    iget v1, p0, Lio/reactivex/processors/new;->case:I

    invoke-direct {v0, v1}, Landroid/support/v4/b12;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/new;->this:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 13
    iget v0, p0, Lio/reactivex/processors/new;->case:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_2
    return-void
.end method
