.class public final Lrx/internal/operators/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/m2$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/Single$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single$OnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:J

.field public final new:Lrx/if;


# direct methods
.method public constructor <init>(Lrx/Single$OnSubscribe;JLjava/util/concurrent/TimeUnit;Lrx/if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single$OnSubscribe<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/if;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/m2;->do:Lrx/Single$OnSubscribe;

    .line 3
    iput-object p5, p0, Lrx/internal/operators/m2;->new:Lrx/if;

    .line 4
    iput-wide p2, p0, Lrx/internal/operators/m2;->if:J

    .line 5
    iput-object p4, p0, Lrx/internal/operators/m2;->for:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/b02;

    invoke-virtual {p0, p1}, Lrx/internal/operators/m2;->do(Landroid/support/v4/b02;)V

    return-void
.end method

.method public do(Landroid/support/v4/b02;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/m2;->new:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v0

    .line 2
    new-instance v7, Lrx/internal/operators/m2$do;

    iget-wide v4, p0, Lrx/internal/operators/m2;->if:J

    iget-object v6, p0, Lrx/internal/operators/m2;->for:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/m2$do;-><init>(Landroid/support/v4/b02;Lrx/if$do;JLjava/util/concurrent/TimeUnit;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    .line 4
    invoke-virtual {p1, v7}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    .line 5
    iget-object p1, p0, Lrx/internal/operators/m2;->do:Lrx/Single$OnSubscribe;

    invoke-interface {p1, v7}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    return-void
.end method
