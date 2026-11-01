.class Lrx/internal/operators/y1$if$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/y1$if;->do(Lrx/internal/operators/OperatorTimeoutBase$do;Ljava/lang/Long;Ljava/lang/Object;Lrx/if$do;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/OperatorTimeoutBase$do;

.field public final synthetic for:Lrx/internal/operators/y1$if;

.field public final synthetic if:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lrx/internal/operators/y1$if;Lrx/internal/operators/OperatorTimeoutBase$do;Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/y1$if$do;->for:Lrx/internal/operators/y1$if;

    iput-object p2, p0, Lrx/internal/operators/y1$if$do;->do:Lrx/internal/operators/OperatorTimeoutBase$do;

    iput-object p3, p0, Lrx/internal/operators/y1$if$do;->if:Ljava/lang/Long;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/y1$if$do;->do:Lrx/internal/operators/OperatorTimeoutBase$do;

    iget-object v1, p0, Lrx/internal/operators/y1$if$do;->if:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorTimeoutBase$do;->do(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/y1$if$do;->do:Lrx/internal/operators/OperatorTimeoutBase$do;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorTimeoutBase$do;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lrx/internal/operators/y1$if$do;->do:Lrx/internal/operators/OperatorTimeoutBase$do;

    iget-object v0, p0, Lrx/internal/operators/y1$if$do;->if:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lrx/internal/operators/OperatorTimeoutBase$do;->do(J)V

    return-void
.end method
