.class Lrx/internal/operators/u$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/u;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
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

.field public final synthetic if:Landroid/support/v4/lz1;

.field public final synthetic new:Lrx/internal/operators/u;


# direct methods
.method public constructor <init>(Lrx/internal/operators/u;Landroid/support/v4/lz1;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/u$do;->new:Lrx/internal/operators/u;

    iput-object p2, p0, Lrx/internal/operators/u$do;->if:Landroid/support/v4/lz1;

    iput-object p3, p0, Lrx/internal/operators/u$do;->for:Landroid/support/v4/y22;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/u$do;->do:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/u$do;->do:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/u$do;->if:Landroid/support/v4/lz1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/support/v4/lz1;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/u$do;->do:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/u$do;->do:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/u$do;->for:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/u$do;->do:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/u$do;->new:Lrx/internal/operators/u;

    iget-object v0, v0, Lrx/internal/operators/u;->do:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lrx/internal/operators/u$do;->do:Z

    .line 5
    iget-object p1, p0, Lrx/internal/operators/u$do;->if:Landroid/support/v4/lz1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/support/v4/lz1;->setValue(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0, p0, p1}, Landroid/support/v4/s80;->this(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void
.end method
