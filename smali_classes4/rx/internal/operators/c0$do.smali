.class Lrx/internal/operators/c0$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/c0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
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
.field public final do:Lrx/internal/operators/d0$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/d0$if<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic for:Landroid/support/v4/ax1;

.field public final if:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic new:Landroid/support/v4/ww1;

.field public final synthetic try:Lrx/internal/operators/c0;


# direct methods
.method public constructor <init>(Lrx/internal/operators/c0;Landroid/support/v4/y22;Landroid/support/v4/ax1;Landroid/support/v4/ww1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/c0$do;->try:Lrx/internal/operators/c0;

    iput-object p3, p0, Lrx/internal/operators/c0$do;->for:Landroid/support/v4/ax1;

    iput-object p4, p0, Lrx/internal/operators/c0$do;->new:Landroid/support/v4/ww1;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    .line 2
    new-instance p1, Lrx/internal/operators/d0$if;

    invoke-direct {p1}, Lrx/internal/operators/d0$if;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/c0$do;->do:Lrx/internal/operators/d0$if;

    .line 3
    iput-object p0, p0, Lrx/internal/operators/c0$do;->if:Landroid/support/v4/y22;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/c0$do;->do:Lrx/internal/operators/d0$if;

    iget-object v1, p0, Lrx/internal/operators/c0$do;->for:Landroid/support/v4/ax1;

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/d0$if;->for(Landroid/support/v4/y22;Landroid/support/v4/y22;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/c0$do;->for:Landroid/support/v4/ax1;

    invoke-virtual {v0, p1}, Landroid/support/v4/ax1;->onError(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 3
    iget-object p1, p0, Lrx/internal/operators/c0$do;->do:Lrx/internal/operators/d0$if;

    invoke-virtual {p1}, Lrx/internal/operators/d0$if;->do()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/c0$do;->try:Lrx/internal/operators/c0;

    iget-object v0, v0, Lrx/internal/operators/c0;->do:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lrx/internal/operators/c0$do;->do:Lrx/internal/operators/d0$if;

    invoke-virtual {v1, p1}, Lrx/internal/operators/d0$if;->new(Ljava/lang/Object;)I

    move-result p1

    .line 3
    new-instance v1, Lrx/internal/operators/c0$do$do;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/c0$do$do;-><init>(Lrx/internal/operators/c0$do;I)V

    .line 4
    iget-object p1, p0, Lrx/internal/operators/c0$do;->new:Landroid/support/v4/ww1;

    invoke-virtual {p1, v1}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    .line 5
    invoke-virtual {v0, v1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1, p0}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method
