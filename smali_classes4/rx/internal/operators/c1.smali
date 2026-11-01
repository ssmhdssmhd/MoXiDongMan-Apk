.class public final Lrx/internal/operators/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/c1$do;
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
    iput-wide p1, p0, Lrx/internal/operators/c1;->do:J

    .line 3
    iput-object p3, p0, Lrx/internal/operators/c1;->if:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Lrx/internal/operators/c1;->for:Lrx/if;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/c1;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 9
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
    new-instance v0, Landroid/support/v4/ax1;

    invoke-direct {v0, p1}, Landroid/support/v4/ax1;-><init>(Landroid/support/v4/y22;)V

    .line 2
    iget-object v1, p0, Lrx/internal/operators/c1;->for:Lrx/if;

    invoke-virtual {v1}, Lrx/if;->do()Lrx/if$do;

    move-result-object v2

    .line 3
    invoke-virtual {p1, v2}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 4
    new-instance v1, Lrx/internal/operators/c1$do;

    invoke-direct {v1, v0}, Lrx/internal/operators/c1$do;-><init>(Landroid/support/v4/y22;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 6
    iget-wide v6, p0, Lrx/internal/operators/c1;->do:J

    iget-object v8, p0, Lrx/internal/operators/c1;->if:Ljava/util/concurrent/TimeUnit;

    move-object v3, v1

    move-wide v4, v6

    invoke-virtual/range {v2 .. v8}, Lrx/if$do;->new(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    return-object v1
.end method
