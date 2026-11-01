.class public Lrx/internal/operators/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/v0$do;,
        Lrx/internal/operators/v0$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final do:Ljava/lang/Long;

.field private final for:Lrx/BackpressureOverflow$Strategy;

.field private final if:Lrx/functions/Action0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lrx/internal/operators/v0;->do:Ljava/lang/Long;

    .line 3
    iput-object v0, p0, Lrx/internal/operators/v0;->if:Lrx/functions/Action0;

    .line 4
    sget-object v0, Lrx/BackpressureOverflow;->if:Lrx/BackpressureOverflow$Strategy;

    iput-object v0, p0, Lrx/internal/operators/v0;->for:Lrx/BackpressureOverflow$Strategy;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 5
    sget-object v0, Lrx/BackpressureOverflow;->if:Lrx/BackpressureOverflow$Strategy;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lrx/internal/operators/v0;-><init>(JLrx/functions/Action0;Lrx/BackpressureOverflow$Strategy;)V

    return-void
.end method

.method public constructor <init>(JLrx/functions/Action0;)V
    .locals 1

    .line 6
    sget-object v0, Lrx/BackpressureOverflow;->if:Lrx/BackpressureOverflow$Strategy;

    invoke-direct {p0, p1, p2, p3, v0}, Lrx/internal/operators/v0;-><init>(JLrx/functions/Action0;Lrx/BackpressureOverflow$Strategy;)V

    return-void
.end method

.method public constructor <init>(JLrx/functions/Action0;Lrx/BackpressureOverflow$Strategy;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-string v0, "The BackpressureOverflow strategy must not be null"

    .line 8
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/v0;->do:Ljava/lang/Long;

    .line 10
    iput-object p3, p0, Lrx/internal/operators/v0;->if:Lrx/functions/Action0;

    .line 11
    iput-object p4, p0, Lrx/internal/operators/v0;->for:Lrx/BackpressureOverflow$Strategy;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer capacity must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static if()Lrx/internal/operators/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/v0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lrx/internal/operators/v0$if;->do:Lrx/internal/operators/v0;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/v0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)",
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/v0$do;

    iget-object v1, p0, Lrx/internal/operators/v0;->do:Ljava/lang/Long;

    iget-object v2, p0, Lrx/internal/operators/v0;->if:Lrx/functions/Action0;

    iget-object v3, p0, Lrx/internal/operators/v0;->for:Lrx/BackpressureOverflow$Strategy;

    invoke-direct {v0, p1, v1, v2, v3}, Lrx/internal/operators/v0$do;-><init>(Landroid/support/v4/y22;Ljava/lang/Long;Lrx/functions/Action0;Lrx/BackpressureOverflow$Strategy;)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 3
    invoke-virtual {v0}, Lrx/internal/operators/v0$do;->if()Lrx/Producer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-object v0
.end method
