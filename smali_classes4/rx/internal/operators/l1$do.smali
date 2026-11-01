.class Lrx/internal/operators/l1$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/l1;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
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
.field public do:Z

.field public final synthetic for:Landroid/support/v4/y22;

.field public if:I

.field public final synthetic new:Lrx/internal/operators/l1;


# direct methods
.method public constructor <init>(Lrx/internal/operators/l1;Landroid/support/v4/y22;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/l1$do;->new:Lrx/internal/operators/l1;

    iput-object p3, p0, Lrx/internal/operators/l1$do;->for:Landroid/support/v4/y22;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lrx/internal/operators/l1$do;->do:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/l1$do;->for:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/l1$do;->for:Landroid/support/v4/y22;

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
    iget-boolean v0, p0, Lrx/internal/operators/l1$do;->do:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/l1$do;->for:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/l1$do;->new:Lrx/internal/operators/l1;

    iget-object v0, v0, Lrx/internal/operators/l1;->do:Lrx/functions/Func2;

    iget v1, p0, Lrx/internal/operators/l1$do;->if:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lrx/internal/operators/l1$do;->if:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lrx/internal/operators/l1$do;->do:Z

    .line 5
    iget-object v0, p0, Lrx/internal/operators/l1$do;->for:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lrx/internal/operators/l1$do;->for:Landroid/support/v4/y22;

    invoke-static {v0, v1, p1}, Landroid/support/v4/s80;->this(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void
.end method
