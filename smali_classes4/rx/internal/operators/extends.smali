.class public final Lrx/internal/operators/extends;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/extends$case;,
        Lrx/internal/operators/extends$for;,
        Lrx/internal/operators/extends$try;,
        Lrx/internal/operators/extends$new;,
        Lrx/internal/operators/extends$else;,
        Lrx/internal/operators/extends$goto;,
        Lrx/internal/operators/extends$if;
    }
.end annotation

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
.field public final do:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Lrx/Emitter<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/Emitter$do;


# direct methods
.method public constructor <init>(Lrx/functions/Action1;Lrx/Emitter$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Lrx/Emitter<",
            "TT;>;>;",
            "Lrx/Emitter$do;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/extends;->do:Lrx/functions/Action1;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/extends;->if:Lrx/Emitter$do;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/extends;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lrx/internal/operators/extends$do;->do:[I

    iget-object v1, p0, Lrx/internal/operators/extends;->if:Lrx/Emitter$do;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lrx/internal/operators/extends$for;

    sget v1, Lrx/internal/util/try;->new:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/extends$for;-><init>(Landroid/support/v4/y22;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lrx/internal/operators/extends$case;

    invoke-direct {v0, p1}, Lrx/internal/operators/extends$case;-><init>(Landroid/support/v4/y22;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lrx/internal/operators/extends$new;

    invoke-direct {v0, p1}, Lrx/internal/operators/extends$new;-><init>(Landroid/support/v4/y22;)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lrx/internal/operators/extends$try;

    invoke-direct {v0, p1}, Lrx/internal/operators/extends$try;-><init>(Landroid/support/v4/y22;)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Lrx/internal/operators/extends$goto;

    invoke-direct {v0, p1}, Lrx/internal/operators/extends$goto;-><init>(Landroid/support/v4/y22;)V

    .line 7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    .line 9
    iget-object p1, p0, Lrx/internal/operators/extends;->do:Lrx/functions/Action1;

    invoke-interface {p1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    return-void
.end method
