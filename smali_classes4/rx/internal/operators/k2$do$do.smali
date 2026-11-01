.class final Lrx/internal/operators/k2$do$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/k2$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public final do:Lrx/internal/util/try;

.field public final synthetic if:Lrx/internal/operators/k2$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/k2$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/k2$do$do;->if:Lrx/internal/operators/k2$do;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    invoke-static {}, Lrx/internal/util/try;->case()Lrx/internal/util/try;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/k2$do$do;->do:Lrx/internal/util/try;

    return-void
.end method


# virtual methods
.method public do(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/k2$do$do;->do:Lrx/internal/util/try;

    invoke-virtual {v0}, Lrx/internal/util/try;->class()V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/k2$do$do;->if:Lrx/internal/operators/k2$do;

    invoke-virtual {v0}, Lrx/internal/operators/k2$do;->tick()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/k2$do$do;->if:Lrx/internal/operators/k2$do;

    iget-object v0, v0, Lrx/internal/operators/k2$do;->child:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/k2$do$do;->do:Lrx/internal/util/try;

    invoke-virtual {v0, p1}, Lrx/internal/util/try;->final(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/support/v4/zz0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p0, p1}, Lrx/internal/operators/k2$do$do;->onError(Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    iget-object p1, p0, Lrx/internal/operators/k2$do$do;->if:Lrx/internal/operators/k2$do;

    invoke-virtual {p1}, Lrx/internal/operators/k2$do;->tick()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    sget v0, Lrx/internal/util/try;->new:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method
