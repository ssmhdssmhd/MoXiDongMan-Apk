.class public final Lrx/internal/operators/finally;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:J

.field public final new:Lrx/if;


# direct methods
.method public constructor <init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/if;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/finally;->do:Lrx/Observable;

    .line 3
    iput-wide p2, p0, Lrx/internal/operators/finally;->if:J

    .line 4
    iput-object p4, p0, Lrx/internal/operators/finally;->for:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lrx/internal/operators/finally;->new:Lrx/if;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/finally;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/finally;->new:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 3
    new-instance v1, Lrx/internal/operators/finally$do;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/finally$do;-><init>(Lrx/internal/operators/finally;Landroid/support/v4/y22;)V

    iget-wide v2, p0, Lrx/internal/operators/finally;->if:J

    iget-object p1, p0, Lrx/internal/operators/finally;->for:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    return-void
.end method
