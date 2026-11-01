.class Lrx/internal/operators/o$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/o;->do(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/y22;

.field public final synthetic if:Lrx/internal/operators/o;


# direct methods
.method public constructor <init>(Lrx/internal/operators/o;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/o$do;->if:Lrx/internal/operators/o;

    iput-object p2, p0, Lrx/internal/operators/o$do;->do:Landroid/support/v4/y22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/o$do;->do:Landroid/support/v4/y22;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/o$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lrx/internal/operators/o$do;->do:Landroid/support/v4/y22;

    invoke-static {v0, v1}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    return-void
.end method
