.class public final Lrx/internal/operators/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:J

.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:J

.field public final new:Lrx/if;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lrx/if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lrx/internal/operators/p;->do:J

    .line 3
    iput-wide p3, p0, Lrx/internal/operators/p;->if:J

    .line 4
    iput-object p5, p0, Lrx/internal/operators/p;->for:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p6, p0, Lrx/internal/operators/p;->new:Lrx/if;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/p;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/p;->new:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v1

    .line 2
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 3
    new-instance v2, Lrx/internal/operators/p$do;

    invoke-direct {v2, p0, p1, v1}, Lrx/internal/operators/p$do;-><init>(Lrx/internal/operators/p;Landroid/support/v4/y22;Lrx/if$do;)V

    iget-wide v3, p0, Lrx/internal/operators/p;->do:J

    iget-wide v5, p0, Lrx/internal/operators/p;->if:J

    iget-object v7, p0, Lrx/internal/operators/p;->for:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v7}, Lrx/if$do;->new(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    return-void
.end method
