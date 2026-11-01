.class public final Lrx/internal/operators/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Resource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0<",
            "TResource;>;"
        }
    .end annotation
.end field

.field public final for:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "-TResource;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TResource;+",
            "Lrx/Single<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final new:Z


# direct methods
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0<",
            "TResource;>;",
            "Lrx/functions/Func1<",
            "-TResource;+",
            "Lrx/Single<",
            "+TT;>;>;",
            "Lrx/functions/Action1<",
            "-TResource;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/w2;->do:Lrx/functions/Func0;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/w2;->if:Lrx/functions/Func1;

    .line 4
    iput-object p3, p0, Lrx/internal/operators/w2;->for:Lrx/functions/Action1;

    .line 5
    iput-boolean p4, p0, Lrx/internal/operators/w2;->new:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/b02;

    invoke-virtual {p0, p1}, Lrx/internal/operators/w2;->do(Landroid/support/v4/b02;)V

    return-void
.end method

.method public do(Landroid/support/v4/b02;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/w2;->do:Lrx/functions/Func0;

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/w2;->if:Lrx/functions/Func1;

    invoke-interface {v1, v0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Single;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The single"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lrx/internal/operators/w2;->if(Landroid/support/v4/b02;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    new-instance v2, Lrx/internal/operators/w2$do;

    invoke-direct {v2, p0, v0, p1}, Lrx/internal/operators/w2$do;-><init>(Lrx/internal/operators/w2;Ljava/lang/Object;Landroid/support/v4/b02;)V

    .line 5
    invoke-virtual {p1, v2}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    .line 6
    invoke-virtual {v1, v2}, Lrx/Single;->u(Landroid/support/v4/b02;)Lrx/Subscription;

    return-void

    :catchall_0
    move-exception v1

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lrx/internal/operators/w2;->if(Landroid/support/v4/b02;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 8
    invoke-static {v0}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public if(Landroid/support/v4/b02;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;TResource;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 2
    iget-boolean v0, p0, Lrx/internal/operators/w2;->new:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/w2;->for:Lrx/functions/Action1;

    invoke-interface {v0, p2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 5
    new-instance v1, Lrx/exceptions/do;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 p3, 0x1

    aput-object v0, v2, p3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v1, p3}, Lrx/exceptions/do;-><init>(Ljava/util/Collection;)V

    move-object p3, v1

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p1, p3}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    .line 7
    iget-boolean p1, p0, Lrx/internal/operators/w2;->new:Z

    if-nez p1, :cond_1

    .line 8
    :try_start_1
    iget-object p1, p0, Lrx/internal/operators/w2;->for:Lrx/functions/Action1;

    invoke-interface {p1, p2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 9
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 10
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
