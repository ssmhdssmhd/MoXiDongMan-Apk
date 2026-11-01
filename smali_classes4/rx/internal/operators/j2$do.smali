.class final Lrx/internal/operators/j2$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final case:Ljava/lang/Object;


# instance fields
.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final for:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final new:Ljava/util/concurrent/atomic/AtomicInteger;

.field public try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/j2$do;->case:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/y22;Lrx/functions/FuncN;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;",
            "Lrx/functions/FuncN<",
            "TR;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/j2$do;->do:Landroid/support/v4/y22;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/j2$do;->if:Lrx/functions/FuncN;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 p2, p3, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    const/4 p2, 0x0

    :goto_0
    if-gt p2, p3, :cond_0

    .line 5
    sget-object v0, Lrx/internal/operators/j2$do;->case:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/j2$do;->for:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lrx/internal/operators/j2$do;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method


# virtual methods
.method public do(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/j2$do;->for:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lrx/internal/operators/j2$do;->case:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/j2$do;->onCompleted()V

    :cond_0
    return-void
.end method

.method public for(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/j2$do;->for:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object p2, Lrx/internal/operators/j2$do;->case:Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lrx/internal/operators/j2$do;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public if(ILjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lrx/internal/operators/j2$do;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/j2$do;->try:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/j2$do;->try:Z

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 4
    iget-object v0, p0, Lrx/internal/operators/j2$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/j2$do;->try:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lrx/internal/operators/j2$do;->try:Z

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 5
    iget-object v0, p0, Lrx/internal/operators/j2$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/j2$do;->try:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/j2$do;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lrx/internal/operators/j2$do;->for:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/j2$do;->if:Lrx/functions/FuncN;

    invoke-interface {v0, p1}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lrx/internal/operators/j2$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p0, p1}, Lrx/internal/operators/j2$do;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    const-wide/16 v0, 0x1

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    :goto_1
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/j2$do;->do:Landroid/support/v4/y22;

    invoke-virtual {v0, p1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-void
.end method
