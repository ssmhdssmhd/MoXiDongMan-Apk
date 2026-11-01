.class public abstract Landroid/support/v4/f4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private do:Landroid/support/v4/uf1;

.field private if:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/uf1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/f4;->do:Landroid/support/v4/uf1;

    .line 3
    iput-boolean p2, p0, Landroid/support/v4/f4;->if:Z

    return-void
.end method

.method private synthetic case(Ljava/lang/Object;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/f4;->do:Landroid/support/v4/uf1;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/f4;->else(Ljava/lang/Object;Landroid/support/v4/uf1;)V
    :try_end_0
    .catch Landroid/support/v4/rj2; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic do(Landroid/support/v4/f4;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/f4;->case(Ljava/lang/Object;)V

    return-void
.end method

.method private else(Ljava/lang/Object;Landroid/support/v4/uf1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v4/uf1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/f4;->new(Ljava/lang/Object;Landroid/support/v4/uf1;)V

    .line 2
    invoke-virtual {p2}, Landroid/support/v4/uf1;->do()V
    :try_end_0
    .catch Landroid/support/v4/rj2; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p2, p1}, Landroid/support/v4/uf1;->if(Ljava/lang/Exception;)V

    .line 4
    new-instance p2, Landroid/support/v4/rj2;

    invoke-direct {p2, p1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {p2, p1}, Landroid/support/v4/uf1;->if(Ljava/lang/Exception;)V

    .line 6
    throw p1
.end method


# virtual methods
.method public for(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/f4;->do:Landroid/support/v4/uf1;

    invoke-virtual {v0}, Landroid/support/v4/uf1;->for()V

    .line 2
    iget-object v0, p0, Landroid/support/v4/f4;->do:Landroid/support/v4/uf1;

    sget-object v1, Landroid/support/v4/uf1$if;->BUSY:Landroid/support/v4/uf1$if;

    invoke-virtual {v0, v1}, Landroid/support/v4/uf1;->static(Landroid/support/v4/uf1$if;)V

    .line 3
    iget-object v0, p0, Landroid/support/v4/f4;->do:Landroid/support/v4/uf1;

    invoke-virtual {p0}, Landroid/support/v4/f4;->try()Landroid/support/v4/uf1$for;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/uf1;->throw(Landroid/support/v4/uf1$for;)V

    .line 4
    iget-boolean v0, p0, Landroid/support/v4/f4;->if:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroid/support/v4/f4;->if(Ljava/lang/Object;)J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Landroid/support/v4/f4;->do:Landroid/support/v4/uf1;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/uf1;->switch(J)V

    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Landroid/support/v4/e4;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/e4;-><init>(Landroid/support/v4/f4;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/support/v4/f4;->do:Landroid/support/v4/uf1;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/f4;->else(Ljava/lang/Object;Landroid/support/v4/uf1;)V

    :goto_0
    return-void
.end method

.method public goto()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/f4;->do:Landroid/support/v4/uf1;

    invoke-virtual {v0}, Landroid/support/v4/uf1;->class()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/f4;->do:Landroid/support/v4/uf1;

    sget-object v1, Landroid/support/v4/uf1$do;->CANCELLED:Landroid/support/v4/uf1$do;

    invoke-virtual {v0, v1}, Landroid/support/v4/uf1;->return(Landroid/support/v4/uf1$do;)V

    .line 3
    iget-object v0, p0, Landroid/support/v4/f4;->do:Landroid/support/v4/uf1;

    sget-object v1, Landroid/support/v4/uf1$if;->READY:Landroid/support/v4/uf1$if;

    invoke-virtual {v0, v1}, Landroid/support/v4/uf1;->static(Landroid/support/v4/uf1$if;)V

    .line 4
    new-instance v0, Landroid/support/v4/rj2;

    sget-object v1, Landroid/support/v4/rj2$do;->TASK_CANCELLED_EXCEPTION:Landroid/support/v4/rj2$do;

    const-string v2, "Task cancelled"

    invoke-direct {v0, v2, v1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;Landroid/support/v4/rj2$do;)V

    throw v0
.end method

.method public abstract if(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation
.end method

.method public abstract new(Ljava/lang/Object;Landroid/support/v4/uf1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v4/uf1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract try()Landroid/support/v4/uf1$for;
.end method
