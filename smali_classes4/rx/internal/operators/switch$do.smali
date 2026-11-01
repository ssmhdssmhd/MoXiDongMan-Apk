.class final Lrx/internal/operators/switch$do;
.super Landroid/support/v4/dz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/dz<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final break:Lrx/functions/Action2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action2<",
            "TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/y22;Ljava/lang/Object;Lrx/functions/Action2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;TR;",
            "Lrx/functions/Action2<",
            "TR;-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/dz;-><init>(Landroid/support/v4/y22;)V

    .line 2
    iput-object p2, p0, Lrx/internal/operators/import;->for:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lrx/internal/operators/import;->if:Z

    .line 4
    iput-object p3, p0, Lrx/internal/operators/switch$do;->break:Lrx/functions/Action2;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/dz;->this:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/switch$do;->break:Lrx/functions/Action2;

    iget-object v1, p0, Lrx/internal/operators/import;->for:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 5
    invoke-virtual {p0, p1}, Landroid/support/v4/dz;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
