.class Lrx/internal/operators/i0$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/i0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
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
.field public do:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field public final synthetic for:Landroid/support/v4/y22;

.field public if:Z

.field public final synthetic new:Lrx/internal/operators/i0;


# direct methods
.method public constructor <init>(Lrx/internal/operators/i0;Landroid/support/v4/y22;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/i0$do;->new:Lrx/internal/operators/i0;

    iput-object p3, p0, Lrx/internal/operators/i0$do;->for:Landroid/support/v4/y22;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/i0$do;->for:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/i0$do;->for:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/i0$do;->new:Lrx/internal/operators/i0;

    iget-object v0, v0, Lrx/internal/operators/i0;->do:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    iget-object v1, p0, Lrx/internal/operators/i0$do;->do:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lrx/internal/operators/i0$do;->do:Ljava/lang/Object;

    .line 4
    iget-boolean v2, p0, Lrx/internal/operators/i0$do;->if:Z

    if-eqz v2, :cond_1

    .line 5
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/i0$do;->new:Lrx/internal/operators/i0;

    iget-object v2, v2, Lrx/internal/operators/i0;->if:Lrx/functions/Func2;

    invoke-interface {v2, v1, v0}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lrx/internal/operators/i0$do;->for:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    iget-object v1, p0, Lrx/internal/operators/i0$do;->for:Landroid/support/v4/y22;

    invoke-static {p1, v1, v0}, Landroid/support/v4/s80;->this(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lrx/internal/operators/i0$do;->if:Z

    .line 10
    iget-object v0, p0, Lrx/internal/operators/i0$do;->for:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 11
    iget-object v1, p0, Lrx/internal/operators/i0$do;->for:Landroid/support/v4/y22;

    invoke-static {v0, v1, p1}, Landroid/support/v4/s80;->this(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void
.end method
