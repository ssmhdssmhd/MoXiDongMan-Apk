.class Lrx/internal/operators/y1$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/y1;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/functions/Func0;


# direct methods
.method public constructor <init>(Lrx/functions/Func0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/y1$do;->do:Lrx/functions/Func0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrx/internal/operators/OperatorTimeoutBase$do;

    check-cast p2, Ljava/lang/Long;

    check-cast p3, Lrx/if$do;

    invoke-virtual {p0, p1, p2, p3}, Lrx/internal/operators/y1$do;->do(Lrx/internal/operators/OperatorTimeoutBase$do;Ljava/lang/Long;Lrx/if$do;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public do(Lrx/internal/operators/OperatorTimeoutBase$do;Ljava/lang/Long;Lrx/if$do;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorTimeoutBase$do<",
            "TT;>;",
            "Ljava/lang/Long;",
            "Lrx/if$do;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lrx/internal/operators/y1$do;->do:Lrx/functions/Func0;

    if-eqz p3, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p3}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lrx/Observable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v0, Lrx/internal/operators/y1$do$do;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/y1$do$do;-><init>(Lrx/internal/operators/y1$do;Lrx/internal/operators/OperatorTimeoutBase$do;Ljava/lang/Long;)V

    invoke-virtual {p3, v0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    .line 4
    invoke-static {p2, p1}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 5
    invoke-static {}, Lrx/subscriptions/for;->try()Lrx/Subscription;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {}, Lrx/subscriptions/for;->try()Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method
