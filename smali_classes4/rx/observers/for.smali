.class public Lrx/observers/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observers/for$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final do:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private volatile for:Z

.field private if:Z

.field private new:Lrx/observers/for$do;


# direct methods
.method public constructor <init>(Lrx/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/observers/for;->do:Lrx/Observer;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/observers/for;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lrx/observers/for;->for:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lrx/observers/for;->for:Z

    .line 6
    iget-boolean v1, p0, Lrx/observers/for;->if:Z

    if-eqz v1, :cond_3

    .line 7
    iget-object v0, p0, Lrx/observers/for;->new:Lrx/observers/for$do;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lrx/observers/for$do;

    invoke-direct {v0}, Lrx/observers/for$do;-><init>()V

    .line 9
    iput-object v0, p0, Lrx/observers/for;->new:Lrx/observers/for$do;

    .line 10
    :cond_2
    invoke-static {}, Lrx/internal/operators/return;->if()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/observers/for$do;->do(Ljava/lang/Object;)V

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_3
    iput-boolean v0, p0, Lrx/observers/for;->if:Z

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lrx/observers/for;->do:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 2
    iget-boolean v0, p0, Lrx/observers/for;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lrx/observers/for;->for:Z

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lrx/observers/for;->for:Z

    .line 7
    iget-boolean v1, p0, Lrx/observers/for;->if:Z

    if-eqz v1, :cond_3

    .line 8
    iget-object v0, p0, Lrx/observers/for;->new:Lrx/observers/for$do;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lrx/observers/for$do;

    invoke-direct {v0}, Lrx/observers/for$do;-><init>()V

    .line 10
    iput-object v0, p0, Lrx/observers/for;->new:Lrx/observers/for$do;

    .line 11
    :cond_2
    invoke-static {p1}, Lrx/internal/operators/return;->for(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/observers/for$do;->do(Ljava/lang/Object;)V

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :cond_3
    iput-boolean v0, p0, Lrx/observers/for;->if:Z

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Lrx/observers/for;->do:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrx/observers/for;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lrx/observers/for;->for:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Lrx/observers/for;->if:Z

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lrx/observers/for;->new:Lrx/observers/for$do;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lrx/observers/for$do;

    invoke-direct {v0}, Lrx/observers/for$do;-><init>()V

    .line 8
    iput-object v0, p0, Lrx/observers/for;->new:Lrx/observers/for$do;

    .line 9
    :cond_2
    invoke-static {p1}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/observers/for$do;->do(Ljava/lang/Object;)V

    .line 10
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lrx/observers/for;->if:Z

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 13
    :try_start_1
    iget-object v1, p0, Lrx/observers/for;->do:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 14
    :cond_4
    :goto_0
    monitor-enter p0

    .line 15
    :try_start_2
    iget-object v1, p0, Lrx/observers/for;->new:Lrx/observers/for$do;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 16
    iput-boolean v2, p0, Lrx/observers/for;->if:Z

    .line 17
    monitor-exit p0

    return-void

    :cond_5
    const/4 v3, 0x0

    .line 18
    iput-object v3, p0, Lrx/observers/for;->new:Lrx/observers/for$do;

    .line 19
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    iget-object v1, v1, Lrx/observers/for$do;->do:[Ljava/lang/Object;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    if-nez v4, :cond_6

    goto :goto_0

    .line 21
    :cond_6
    :try_start_3
    iget-object v5, p0, Lrx/observers/for;->do:Lrx/Observer;

    invoke-static {v5, v4}, Lrx/internal/operators/return;->do(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 22
    iput-boolean v0, p0, Lrx/observers/for;->for:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 23
    iput-boolean v0, p0, Lrx/observers/for;->for:Z

    .line 24
    invoke-static {v1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 25
    iget-object v0, p0, Lrx/observers/for;->do:Lrx/Observer;

    invoke-static {v1, p1}, Lrx/exceptions/if;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    .line 26
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception v1

    .line 27
    iput-boolean v0, p0, Lrx/observers/for;->for:Z

    .line 28
    iget-object v0, p0, Lrx/observers/for;->do:Lrx/Observer;

    invoke-static {v1, v0, p1}, Landroid/support/v4/s80;->this(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void

    :catchall_3
    move-exception p1

    .line 29
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
