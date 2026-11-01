.class public final Lrx/internal/operators/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/a0$do;,
        Lrx/internal/operators/a0$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "Ljava/util/List<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field public final do:J

.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:J

.field public final new:I

.field public final try:Lrx/if;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;ILrx/if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lrx/internal/operators/a0;->do:J

    .line 3
    iput-wide p3, p0, Lrx/internal/operators/a0;->if:J

    .line 4
    iput-object p5, p0, Lrx/internal/operators/a0;->for:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput p6, p0, Lrx/internal/operators/a0;->new:I

    .line 6
    iput-object p7, p0, Lrx/internal/operators/a0;->try:Lrx/if;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/a0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/a0;->try:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/support/v4/ax1;

    invoke-direct {v1, p1}, Landroid/support/v4/ax1;-><init>(Landroid/support/v4/y22;)V

    .line 3
    iget-wide v2, p0, Lrx/internal/operators/a0;->do:J

    iget-wide v4, p0, Lrx/internal/operators/a0;->if:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 4
    new-instance v2, Lrx/internal/operators/a0$do;

    invoke-direct {v2, p0, v1, v0}, Lrx/internal/operators/a0$do;-><init>(Lrx/internal/operators/a0;Landroid/support/v4/y22;Lrx/if$do;)V

    .line 5
    invoke-virtual {v2, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 6
    invoke-virtual {p1, v2}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 7
    invoke-virtual {v2}, Lrx/internal/operators/a0$do;->if()V

    return-object v2

    .line 8
    :cond_0
    new-instance v2, Lrx/internal/operators/a0$if;

    invoke-direct {v2, p0, v1, v0}, Lrx/internal/operators/a0$if;-><init>(Lrx/internal/operators/a0;Landroid/support/v4/y22;Lrx/if$do;)V

    .line 9
    invoke-virtual {v2, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 10
    invoke-virtual {p1, v2}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 11
    invoke-virtual {v2}, Lrx/internal/operators/a0$if;->for()V

    .line 12
    invoke-virtual {v2}, Lrx/internal/operators/a0$if;->if()V

    return-object v2
.end method
