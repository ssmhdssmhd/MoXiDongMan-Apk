.class final Lrx/internal/operators/k2$do;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/k2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/k2$do$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;"
    }
.end annotation


# static fields
.field public static final THRESHOLD:I

.field private static final serialVersionUID:J = 0x53337eae55d8937dL


# instance fields
.field public final child:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final childSubscription:Landroid/support/v4/dq;

.field public emitted:I

.field private requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile subscribers:[Ljava/lang/Object;

.field private final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Lrx/internal/util/try;->new:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    sput v0, Lrx/internal/operators/k2$do;->THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/y22;Lrx/functions/FuncN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/dq;

    invoke-direct {v0}, Landroid/support/v4/dq;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/k2$do;->childSubscription:Landroid/support/v4/dq;

    .line 3
    iput-object p1, p0, Lrx/internal/operators/k2$do;->child:Lrx/Observer;

    .line 4
    iput-object p2, p0, Lrx/internal/operators/k2$do;->zipFunction:Lrx/functions/FuncN;

    .line 5
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    return-void
.end method


# virtual methods
.method public start([Lrx/Observable;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 5

    .line 1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 3
    new-instance v3, Lrx/internal/operators/k2$do$do;

    invoke-direct {v3, p0}, Lrx/internal/operators/k2$do$do;-><init>(Lrx/internal/operators/k2$do;)V

    .line 4
    aput-object v3, v0, v2

    .line 5
    iget-object v4, p0, Lrx/internal/operators/k2$do;->childSubscription:Landroid/support/v4/dq;

    invoke-virtual {v4, v3}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput-object p2, p0, Lrx/internal/operators/k2$do;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    iput-object v0, p0, Lrx/internal/operators/k2$do;->subscribers:[Ljava/lang/Object;

    .line 8
    :goto_1
    array-length p2, p1

    if-ge v1, p2, :cond_1

    .line 9
    aget-object p2, p1, v1

    aget-object v2, v0, v1

    check-cast v2, Lrx/internal/operators/k2$do$do;

    invoke-virtual {p2, v2}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public tick()V
    .locals 14

    .line 1
    iget-object v0, p0, Lrx/internal/operators/k2$do;->subscribers:[Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_9

    .line 3
    array-length v1, v0

    .line 4
    iget-object v2, p0, Lrx/internal/operators/k2$do;->child:Lrx/Observer;

    .line 5
    iget-object v5, p0, Lrx/internal/operators/k2$do;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    :cond_1
    :goto_0
    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_1
    if-ge v9, v1, :cond_4

    .line 7
    aget-object v11, v0, v9

    check-cast v11, Lrx/internal/operators/k2$do$do;

    iget-object v11, v11, Lrx/internal/operators/k2$do$do;->do:Lrx/internal/util/try;

    .line 8
    invoke-virtual {v11}, Lrx/internal/util/try;->super()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v11, v12}, Lrx/internal/util/try;->this(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 10
    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    .line 11
    iget-object v0, p0, Lrx/internal/operators/k2$do;->childSubscription:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->unsubscribe()V

    return-void

    .line 12
    :cond_3
    invoke-virtual {v11, v12}, Lrx/internal/util/try;->goto(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v6, v9

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    if-eqz v10, :cond_8

    .line 13
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v11, v9, v3

    if-lez v11, :cond_8

    .line 14
    :try_start_0
    iget-object v9, p0, Lrx/internal/operators/k2$do;->zipFunction:Lrx/functions/FuncN;

    invoke-interface {v9, v6}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 16
    iget v9, p0, Lrx/internal/operators/k2$do;->emitted:I

    add-int/2addr v9, v8

    iput v9, p0, Lrx/internal/operators/k2$do;->emitted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    array-length v6, v0

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_6

    aget-object v9, v0, v8

    .line 18
    check-cast v9, Lrx/internal/operators/k2$do$do;

    iget-object v9, v9, Lrx/internal/operators/k2$do$do;->do:Lrx/internal/util/try;

    .line 19
    invoke-virtual {v9}, Lrx/internal/util/try;->throw()Ljava/lang/Object;

    .line 20
    invoke-virtual {v9}, Lrx/internal/util/try;->super()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/internal/util/try;->this(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 21
    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    .line 22
    iget-object v0, p0, Lrx/internal/operators/k2$do;->childSubscription:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->unsubscribe()V

    return-void

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 23
    :cond_6
    iget v6, p0, Lrx/internal/operators/k2$do;->emitted:I

    sget v8, Lrx/internal/operators/k2$do;->THRESHOLD:I

    if-le v6, v8, :cond_1

    .line 24
    array-length v6, v0

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_7

    aget-object v9, v0, v8

    .line 25
    check-cast v9, Lrx/internal/operators/k2$do$do;

    iget v10, p0, Lrx/internal/operators/k2$do;->emitted:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lrx/internal/operators/k2$do$do;->do(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 26
    :cond_7
    iput v7, p0, Lrx/internal/operators/k2$do;->emitted:I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 27
    invoke-static {v0, v2, v6}, Landroid/support/v4/s80;->this(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void

    .line 28
    :cond_8
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-gtz v8, :cond_1

    :cond_9
    return-void
.end method
