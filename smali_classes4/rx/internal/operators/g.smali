.class public final Lrx/internal/operators/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/g$else;,
        Lrx/internal/operators/g$case;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final case:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Observable<",
            "+",
            "Lrx/do<",
            "*>;>;",
            "Lrx/Observable<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final do:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final for:Z

.field private final if:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "+",
            "Lrx/do<",
            "*>;>;+",
            "Lrx/Observable<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final new:Z

.field private final try:Lrx/if;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/operators/g$do;

    invoke-direct {v0}, Lrx/internal/operators/g$do;-><init>()V

    sput-object v0, Lrx/internal/operators/g;->case:Lrx/functions/Func1;

    return-void
.end method

.method private constructor <init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "TT;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "+",
            "Lrx/do<",
            "*>;>;+",
            "Lrx/Observable<",
            "*>;>;ZZ",
            "Lrx/if;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/g;->do:Lrx/Observable;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/g;->if:Lrx/functions/Func1;

    .line 4
    iput-boolean p3, p0, Lrx/internal/operators/g;->for:Z

    .line 5
    iput-boolean p4, p0, Lrx/internal/operators/g;->new:Z

    .line 6
    iput-object p5, p0, Lrx/internal/operators/g;->try:Lrx/if;

    return-void
.end method

.method public static break(Lrx/Observable;J)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;J)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lrx/internal/operators/g$case;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/g$case;-><init>(J)V

    invoke-static {p0, v0}, Lrx/internal/operators/g;->catch(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "count >= 0 expected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static case(Lrx/Observable;Lrx/if;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;",
            "Lrx/if;",
            ")",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lrx/internal/operators/g;->case:Lrx/functions/Func1;

    invoke-static {p0, v0, p1}, Lrx/internal/operators/g;->goto(Lrx/Observable;Lrx/functions/Func1;Lrx/if;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "+",
            "Lrx/do<",
            "*>;>;+",
            "Lrx/Observable<",
            "*>;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lrx/internal/operators/g;

    invoke-static {}, Landroid/support/v4/ds1;->const()Lrx/if;

    move-result-object v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/g;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/if;)V

    invoke-static {v6}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static class(Lrx/Observable;Lrx/functions/Func1;Lrx/if;)Lrx/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "+",
            "Lrx/do<",
            "*>;>;+",
            "Lrx/Observable<",
            "*>;>;",
            "Lrx/if;",
            ")",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lrx/internal/operators/g;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/g;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/if;)V

    invoke-static {v6}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static else(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "+",
            "Lrx/do<",
            "*>;>;+",
            "Lrx/Observable<",
            "*>;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lrx/internal/operators/g;

    invoke-static {}, Landroid/support/v4/ds1;->const()Lrx/if;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/g;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/if;)V

    invoke-static {v6}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static for(Lrx/Observable;)Lrx/Observable;
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
    invoke-static {}, Landroid/support/v4/ds1;->const()Lrx/if;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/internal/operators/g;->case(Lrx/Observable;Lrx/if;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static goto(Lrx/Observable;Lrx/functions/Func1;Lrx/if;)Lrx/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "+",
            "Lrx/do<",
            "*>;>;+",
            "Lrx/Observable<",
            "*>;>;",
            "Lrx/if;",
            ")",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lrx/internal/operators/g;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/g;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/if;)V

    invoke-static {v6}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static if(Lrx/Observable;Lrx/functions/Func1;Lrx/if;)Lrx/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "+",
            "Lrx/do<",
            "*>;>;+",
            "Lrx/Observable<",
            "*>;>;",
            "Lrx/if;",
            ")",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lrx/internal/operators/g;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/g;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/if;)V

    invoke-static {v6}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static new(Lrx/Observable;J)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;J)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/support/v4/ds1;->const()Lrx/if;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/internal/operators/g;->try(Lrx/Observable;JLrx/if;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static this(Lrx/Observable;)Lrx/Observable;
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
    sget-object v0, Lrx/internal/operators/g;->case:Lrx/functions/Func1;

    invoke-static {p0, v0}, Lrx/internal/operators/g;->catch(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static try(Lrx/Observable;JLrx/if;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;J",
            "Lrx/if;",
            ")",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    invoke-static {}, Lrx/Observable;->B0()Lrx/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 2
    new-instance v0, Lrx/internal/operators/g$case;

    const-wide/16 v1, 0x1

    sub-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/g$case;-><init>(J)V

    invoke-static {p0, v0, p3}, Lrx/internal/operators/g;->goto(Lrx/Observable;Lrx/functions/Func1;Lrx/if;)Lrx/Observable;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "count >= 0 expected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/g;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2
    new-instance v9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 3
    iget-object v0, p0, Lrx/internal/operators/g;->try:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v10

    .line 4
    invoke-virtual {p1, v10}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 5
    new-instance v7, Landroid/support/v4/ww1;

    invoke-direct {v7}, Landroid/support/v4/ww1;-><init>()V

    .line 6
    invoke-virtual {p1, v7}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 7
    invoke-static {}, Lrx/subjects/if;->g6()Lrx/subjects/if;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/u22;->f6()Lrx/subjects/new;

    move-result-object v0

    .line 8
    invoke-static {}, Lrx/observers/new;->new()Landroid/support/v4/y22;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 10
    new-instance v11, Lrx/internal/producers/do;

    invoke-direct {v11}, Lrx/internal/producers/do;-><init>()V

    .line 11
    new-instance v12, Lrx/internal/operators/g$if;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v11

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Lrx/internal/operators/g$if;-><init>(Lrx/internal/operators/g;Landroid/support/v4/y22;Landroid/support/v4/u22;Lrx/internal/producers/do;Ljava/util/concurrent/atomic/AtomicLong;Landroid/support/v4/ww1;)V

    .line 12
    iget-object v1, p0, Lrx/internal/operators/g;->if:Lrx/functions/Func1;

    new-instance v2, Lrx/internal/operators/g$for;

    invoke-direct {v2, p0}, Lrx/internal/operators/g$for;-><init>(Lrx/internal/operators/g;)V

    invoke-virtual {v0, v2}, Lrx/Observable;->I1(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    invoke-interface {v1, v0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lrx/Observable;

    .line 13
    new-instance v13, Lrx/internal/operators/g$new;

    move-object v0, v13

    move-object v1, p0

    move-object v4, v9

    move-object v5, v10

    move-object v6, v12

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lrx/internal/operators/g$new;-><init>(Lrx/internal/operators/g;Lrx/Observable;Landroid/support/v4/y22;Ljava/util/concurrent/atomic/AtomicLong;Lrx/if$do;Lrx/functions/Action0;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v10, v13}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    .line 14
    new-instance v7, Lrx/internal/operators/g$try;

    move-object v0, v7

    move-object v2, v9

    move-object v3, v11

    move-object v4, v8

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/g$try;-><init>(Lrx/internal/operators/g;Ljava/util/concurrent/atomic/AtomicLong;Lrx/internal/producers/do;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/if$do;Lrx/functions/Action0;)V

    invoke-virtual {p1, v7}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-void
.end method
