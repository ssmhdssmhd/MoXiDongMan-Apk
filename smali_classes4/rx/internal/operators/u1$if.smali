.class Lrx/internal/operators/u1$if;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/u1;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private do:I

.field public final synthetic for:Landroid/support/v4/y22;

.field private if:Z

.field public final synthetic new:Lrx/internal/operators/u1;


# direct methods
.method public constructor <init>(Lrx/internal/operators/u1;Landroid/support/v4/y22;ZLandroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/u1$if;->new:Lrx/internal/operators/u1;

    iput-object p4, p0, Lrx/internal/operators/u1$if;->for:Landroid/support/v4/y22;

    invoke-direct {p0, p2, p3}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/u1$if;->if:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/u1$if;->for:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/u1$if;->if:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/u1$if;->for:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/u1$if;->new:Lrx/internal/operators/u1;

    iget-object v1, v1, Lrx/internal/operators/u1;->do:Lrx/functions/Func2;

    iget v2, p0, Lrx/internal/operators/u1$if;->do:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lrx/internal/operators/u1$if;->do:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/u1$if;->for:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v0, p0, Lrx/internal/operators/u1$if;->if:Z

    .line 4
    iget-object p1, p0, Lrx/internal/operators/u1$if;->for:Landroid/support/v4/y22;

    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 6
    iput-boolean v0, p0, Lrx/internal/operators/u1$if;->if:Z

    .line 7
    iget-object v0, p0, Lrx/internal/operators/u1$if;->for:Landroid/support/v4/y22;

    invoke-static {v1, v0, p1}, Landroid/support/v4/s80;->this(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    return-void
.end method
