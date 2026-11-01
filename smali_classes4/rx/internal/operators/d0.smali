.class public final Lrx/internal/operators/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/d0$if;
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
.field public final do:J

.field public final for:Lrx/if;

.field public final if:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lrx/internal/operators/d0;->do:J

    .line 3
    iput-object p3, p0, Lrx/internal/operators/d0;->if:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Lrx/internal/operators/d0;->for:Lrx/if;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/d0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 7
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
    iget-object v0, p0, Lrx/internal/operators/d0;->for:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v5

    .line 2
    new-instance v6, Landroid/support/v4/ax1;

    invoke-direct {v6, p1}, Landroid/support/v4/ax1;-><init>(Landroid/support/v4/y22;)V

    .line 3
    new-instance v4, Landroid/support/v4/ww1;

    invoke-direct {v4}, Landroid/support/v4/ww1;-><init>()V

    .line 4
    invoke-virtual {v6, v5}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 5
    invoke-virtual {v6, v4}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 6
    new-instance v0, Lrx/internal/operators/d0$do;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/d0$do;-><init>(Lrx/internal/operators/d0;Landroid/support/v4/y22;Landroid/support/v4/ww1;Lrx/if$do;Landroid/support/v4/ax1;)V

    return-object v0
.end method
