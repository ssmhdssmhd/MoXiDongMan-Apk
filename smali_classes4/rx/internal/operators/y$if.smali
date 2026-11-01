.class final Lrx/internal/operators/y$if;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/y$if$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final case:Ljava/util/concurrent/atomic/AtomicLong;

.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public else:J

.field public final for:I

.field public final if:I

.field public new:J

.field public final try:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/y22;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Ljava/util/List<",
            "TT;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/y$if;->do:Landroid/support/v4/y22;

    .line 3
    iput p2, p0, Lrx/internal/operators/y$if;->if:I

    .line 4
    iput p3, p0, Lrx/internal/operators/y$if;->for:I

    .line 5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/y$if;->try:Ljava/util/ArrayDeque;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/y$if;->case:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p1, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method

.method public static synthetic do(Lrx/internal/operators/y$if;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method

.method public static synthetic if(Lrx/internal/operators/y$if;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method


# virtual methods
.method public for()Lrx/Producer;
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/operators/y$if$do;

    invoke-direct {v0, p0}, Lrx/internal/operators/y$if$do;-><init>(Lrx/internal/operators/y$if;)V

    return-object v0
.end method

.method public onCompleted()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lrx/internal/operators/y$if;->else:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-object v2, p0, Lrx/internal/operators/y$if;->case:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-object v2, p0, Lrx/internal/operators/y$if;->do:Landroid/support/v4/y22;

    new-instance v3, Landroid/support/v4/zz0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "More produced than requested? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/support/v4/zz0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/y$if;->case:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 5
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/y$if;->case:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lrx/internal/operators/y$if;->try:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lrx/internal/operators/y$if;->do:Landroid/support/v4/y22;

    invoke-static {v0, v1, v2}, Landroid/support/v4/u6;->new(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Landroid/support/v4/y22;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/y$if;->try:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/y$if;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lrx/internal/operators/y$if;->new:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    iget v5, p0, Lrx/internal/operators/y$if;->if:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object v5, p0, Lrx/internal/operators/y$if;->try:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 4
    iget v6, p0, Lrx/internal/operators/y$if;->for:I

    int-to-long v6, v6

    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    .line 5
    iput-wide v2, p0, Lrx/internal/operators/y$if;->new:J

    goto :goto_0

    .line 6
    :cond_1
    iput-wide v0, p0, Lrx/internal/operators/y$if;->new:J

    .line 7
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/y$if;->try:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lrx/internal/operators/y$if;->try:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lrx/internal/operators/y$if;->if:I

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Lrx/internal/operators/y$if;->try:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 12
    iget-wide v0, p0, Lrx/internal/operators/y$if;->else:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lrx/internal/operators/y$if;->else:J

    .line 13
    iget-object v0, p0, Lrx/internal/operators/y$if;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
