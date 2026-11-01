.class final Lrx/internal/operators/for$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private case:Ljava/lang/Throwable;

.field private final do:Lrx/internal/operators/for$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/for$for<",
            "TT;>;"
        }
    .end annotation
.end field

.field private else:Z

.field private for:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final if:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private new:Z

.field private try:Z


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/internal/operators/for$for;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/internal/operators/for$for<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/for$if;->new:Z

    .line 3
    iput-boolean v0, p0, Lrx/internal/operators/for$if;->try:Z

    .line 4
    iput-object p1, p0, Lrx/internal/operators/for$if;->if:Lrx/Observable;

    .line 5
    iput-object p2, p0, Lrx/internal/operators/for$if;->do:Lrx/internal/operators/for$for;

    return-void
.end method

.method private do()Z
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/for$if;->else:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lrx/internal/operators/for$if;->else:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/for$if;->do:Lrx/internal/operators/for$for;

    invoke-virtual {v0, v1}, Lrx/internal/operators/for$for;->if(I)V

    .line 4
    iget-object v0, p0, Lrx/internal/operators/for$if;->if:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->M1()Lrx/Observable;

    move-result-object v0

    iget-object v2, p0, Lrx/internal/operators/for$if;->do:Lrx/internal/operators/for$for;

    invoke-virtual {v0, v2}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 5
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/for$if;->do:Lrx/internal/operators/for$for;

    invoke-virtual {v0}, Lrx/internal/operators/for$for;->for()Lrx/do;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lrx/do;->const()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 7
    iput-boolean v3, p0, Lrx/internal/operators/for$if;->try:Z

    .line 8
    invoke-virtual {v0}, Lrx/do;->goto()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/for$if;->for:Ljava/lang/Object;

    return v1

    .line 9
    :cond_1
    iput-boolean v3, p0, Lrx/internal/operators/for$if;->new:Z

    .line 10
    invoke-virtual {v0}, Lrx/do;->catch()Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 11
    :cond_2
    invoke-virtual {v0}, Lrx/do;->class()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0}, Lrx/do;->else()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/for$if;->case:Ljava/lang/Throwable;

    .line 13
    invoke-static {v0}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lrx/internal/operators/for$if;->do:Lrx/internal/operators/for$for;

    invoke-virtual {v1}, Landroid/support/v4/y22;->unsubscribe()V

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 17
    iput-object v0, p0, Lrx/internal/operators/for$if;->case:Ljava/lang/Throwable;

    .line 18
    invoke-static {v0}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/for$if;->case:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lrx/internal/operators/for$if;->new:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lrx/internal/operators/for$if;->try:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lrx/internal/operators/for$if;->do()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 4
    :cond_3
    invoke-static {v0}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/for$if;->case:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/for$if;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lrx/internal/operators/for$if;->try:Z

    .line 4
    iget-object v0, p0, Lrx/internal/operators/for$if;->for:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    invoke-static {v0}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
