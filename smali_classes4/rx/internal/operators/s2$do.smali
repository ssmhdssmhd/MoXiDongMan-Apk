.class final Lrx/internal/operators/s2$do;
.super Landroid/support/v4/b02;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/s2;
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
        "TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field public final for:Lrx/if$do;

.field public final if:Landroid/support/v4/b02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b02<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public new:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public try:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Landroid/support/v4/b02;Lrx/if$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;",
            "Lrx/if$do;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/b02;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/s2$do;->if:Landroid/support/v4/b02;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/s2$do;->for:Lrx/if$do;

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/s2$do;->try:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lrx/internal/operators/s2$do;->try:Ljava/lang/Throwable;

    .line 3
    iget-object v1, p0, Lrx/internal/operators/s2$do;->if:Landroid/support/v4/b02;

    invoke-virtual {v1, v0}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/s2$do;->new:Ljava/lang/Object;

    .line 5
    iput-object v1, p0, Lrx/internal/operators/s2$do;->new:Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lrx/internal/operators/s2$do;->if:Landroid/support/v4/b02;

    invoke-virtual {v1, v0}, Landroid/support/v4/b02;->if(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/s2$do;->for:Lrx/if$do;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/s2$do;->for:Lrx/if$do;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    throw v0
.end method

.method public if(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lrx/internal/operators/s2$do;->new:Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lrx/internal/operators/s2$do;->for:Lrx/if$do;

    invoke-virtual {p1, p0}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/s2$do;->try:Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lrx/internal/operators/s2$do;->for:Lrx/if$do;

    invoke-virtual {p1, p0}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method
