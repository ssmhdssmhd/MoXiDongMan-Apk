.class final Lrx/internal/operators/n2$do;
.super Landroid/support/v4/b02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/b02<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final for:Lrx/functions/Action0;

.field public final if:Landroid/support/v4/b02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b02<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/b02;Lrx/functions/Action0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/b02;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/n2$do;->if:Landroid/support/v4/b02;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/n2$do;->for:Lrx/functions/Action0;

    return-void
.end method


# virtual methods
.method public for()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/n2$do;->for:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public if(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/n2$do;->if:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->if(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/n2$do;->for()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lrx/internal/operators/n2$do;->for()V

    throw p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/n2$do;->if:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/n2$do;->for()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lrx/internal/operators/n2$do;->for()V

    throw p1
.end method
