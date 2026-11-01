.class Lrx/internal/operators/x1$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/x1;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/if;)V
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
.field public final synthetic do:J

.field public final synthetic if:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lrx/internal/operators/x1$do;->do:J

    iput-object p3, p0, Lrx/internal/operators/x1$do;->if:Ljava/util/concurrent/TimeUnit;

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

    invoke-virtual {p0, p1, p2, p3}, Lrx/internal/operators/x1$do;->do(Lrx/internal/operators/OperatorTimeoutBase$do;Ljava/lang/Long;Lrx/if$do;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public do(Lrx/internal/operators/OperatorTimeoutBase$do;Ljava/lang/Long;Lrx/if$do;)Lrx/Subscription;
    .locals 2
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
    new-instance v0, Lrx/internal/operators/x1$do$do;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/x1$do$do;-><init>(Lrx/internal/operators/x1$do;Lrx/internal/operators/OperatorTimeoutBase$do;Ljava/lang/Long;)V

    iget-wide p1, p0, Lrx/internal/operators/x1$do;->do:J

    iget-object v1, p0, Lrx/internal/operators/x1$do;->if:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, p1, p2, v1}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method
