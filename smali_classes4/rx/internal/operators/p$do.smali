.class Lrx/internal/operators/p$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/p;->do(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public do:J

.field public final synthetic for:Lrx/if$do;

.field public final synthetic if:Landroid/support/v4/y22;

.field public final synthetic new:Lrx/internal/operators/p;


# direct methods
.method public constructor <init>(Lrx/internal/operators/p;Landroid/support/v4/y22;Lrx/if$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/p$do;->new:Lrx/internal/operators/p;

    iput-object p2, p0, Lrx/internal/operators/p$do;->if:Landroid/support/v4/y22;

    iput-object p3, p0, Lrx/internal/operators/p$do;->for:Lrx/if$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/p$do;->if:Landroid/support/v4/y22;

    iget-wide v1, p0, Lrx/internal/operators/p$do;->do:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lrx/internal/operators/p$do;->do:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/p$do;->for:Lrx/if$do;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    iget-object v1, p0, Lrx/internal/operators/p$do;->if:Landroid/support/v4/y22;

    invoke-static {v0, v1}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lrx/internal/operators/p$do;->if:Landroid/support/v4/y22;

    invoke-static {v0, v2}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    throw v1
.end method
