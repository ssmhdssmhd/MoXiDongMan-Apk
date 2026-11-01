.class final Lrx/internal/operators/y2$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/y2;->do([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:[Lrx/Single;

.field public final synthetic if:Lrx/functions/FuncN;


# direct methods
.method public constructor <init>([Lrx/Single;Lrx/functions/FuncN;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/y2$do;->do:[Lrx/Single;

    iput-object p2, p0, Lrx/internal/operators/y2$do;->if:Lrx/functions/FuncN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/b02;

    invoke-virtual {p0, p1}, Lrx/internal/operators/y2$do;->do(Landroid/support/v4/b02;)V

    return-void
.end method

.method public do(Landroid/support/v4/b02;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/y2$do;->do:[Lrx/Single;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Can\'t zip 0 Singles."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lrx/internal/operators/y2$do;->do:[Lrx/Single;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 5
    iget-object v2, p0, Lrx/internal/operators/y2$do;->do:[Lrx/Single;

    array-length v2, v2

    new-array v9, v2, [Ljava/lang/Object;

    .line 6
    new-instance v10, Landroid/support/v4/dq;

    invoke-direct {v10}, Landroid/support/v4/dq;-><init>()V

    .line 7
    invoke-virtual {p1, v10}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/y2$do;->do:[Lrx/Single;

    array-length v2, v2

    if-ge v11, v2, :cond_3

    .line 9
    invoke-virtual {v10}, Landroid/support/v4/dq;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v12, Lrx/internal/operators/y2$do$do;

    move-object v2, v12

    move-object v3, p0

    move-object v4, v9

    move v5, v11

    move-object v6, v0

    move-object v7, p1

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lrx/internal/operators/y2$do$do;-><init>(Lrx/internal/operators/y2$do;[Ljava/lang/Object;ILjava/util/concurrent/atomic/AtomicInteger;Landroid/support/v4/b02;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 11
    invoke-virtual {v10, v12}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 12
    invoke-virtual {v10}, Landroid/support/v4/dq;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    iget-object v2, p0, Lrx/internal/operators/y2$do;->do:[Lrx/Single;

    aget-object v2, v2, v11

    invoke-virtual {v2, v12}, Lrx/Single;->u(Landroid/support/v4/b02;)Lrx/Subscription;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
