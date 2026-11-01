.class public final Lrx/internal/operators/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/c3$do;
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

.field public final try:Lrx/Single$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single$OnSubscribe<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Single$OnSubscribe;JLjava/util/concurrent/TimeUnit;Lrx/if;Lrx/Single$OnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single$OnSubscribe<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/if;",
            "Lrx/Single$OnSubscribe<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/c3;->do:Lrx/Single$OnSubscribe;

    .line 3
    iput-wide p2, p0, Lrx/internal/operators/c3;->if:J

    .line 4
    iput-object p4, p0, Lrx/internal/operators/c3;->for:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lrx/internal/operators/c3;->new:Lrx/if;

    .line 6
    iput-object p6, p0, Lrx/internal/operators/c3;->try:Lrx/Single$OnSubscribe;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/b02;

    invoke-virtual {p0, p1}, Lrx/internal/operators/c3;->do(Landroid/support/v4/b02;)V

    return-void
.end method

.method public do(Landroid/support/v4/b02;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/c3$do;

    iget-object v1, p0, Lrx/internal/operators/c3;->try:Lrx/Single$OnSubscribe;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/c3$do;-><init>(Landroid/support/v4/b02;Lrx/Single$OnSubscribe;)V

    .line 2
    iget-object v1, p0, Lrx/internal/operators/c3;->new:Lrx/if;

    invoke-virtual {v1}, Lrx/if;->do()Lrx/if$do;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    .line 5
    iget-wide v2, p0, Lrx/internal/operators/c3;->if:J

    iget-object p1, p0, Lrx/internal/operators/c3;->for:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, p1}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 6
    iget-object p1, p0, Lrx/internal/operators/c3;->do:Lrx/Single$OnSubscribe;

    invoke-interface {p1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    return-void
.end method
