.class public final Lrx/internal/operators/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/h2$for;,
        Lrx/internal/operators/h2$do;,
        Lrx/internal/operators/h2$if;,
        Lrx/internal/operators/h2$new;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "Lrx/Observable<",
        "TT;>;TT;>;"
    }
.end annotation


# static fields
.field public static final case:Ljava/lang/Object;


# instance fields
.field public final do:J

.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:J

.field public final new:Lrx/if;

.field public final try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/h2;->case:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;ILrx/if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lrx/internal/operators/h2;->do:J

    .line 3
    iput-wide p3, p0, Lrx/internal/operators/h2;->if:J

    .line 4
    iput-object p5, p0, Lrx/internal/operators/h2;->for:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput p6, p0, Lrx/internal/operators/h2;->try:I

    .line 6
    iput-object p7, p0, Lrx/internal/operators/h2;->new:Lrx/if;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/h2;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;)",
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/h2;->new:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lrx/internal/operators/h2;->do:J

    iget-wide v3, p0, Lrx/internal/operators/h2;->if:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    new-instance v1, Lrx/internal/operators/h2$if;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/h2$if;-><init>(Lrx/internal/operators/h2;Landroid/support/v4/y22;Lrx/if$do;)V

    .line 4
    invoke-virtual {v1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 5
    invoke-virtual {v1}, Lrx/internal/operators/h2$if;->else()V

    return-object v1

    .line 6
    :cond_0
    new-instance v1, Lrx/internal/operators/h2$for;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/h2$for;-><init>(Lrx/internal/operators/h2;Landroid/support/v4/y22;Lrx/if$do;)V

    .line 7
    invoke-virtual {v1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 8
    invoke-virtual {v1}, Lrx/internal/operators/h2$for;->for()V

    .line 9
    invoke-virtual {v1}, Lrx/internal/operators/h2$for;->if()V

    return-object v1
.end method
