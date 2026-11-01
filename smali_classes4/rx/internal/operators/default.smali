.class public final Lrx/internal/operators/default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/default$if;,
        Lrx/internal/operators/default$for;,
        Lrx/internal/operators/default$new;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final case:I = 0x1

.field public static final else:I = 0x2

.field public static final try:I


# instance fields
.field public final do:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final for:I

.field public final if:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final new:I


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "+TR;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/default;->do:Lrx/Observable;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/default;->if:Lrx/functions/Func1;

    .line 4
    iput p3, p0, Lrx/internal/operators/default;->for:I

    .line 5
    iput p4, p0, Lrx/internal/operators/default;->new:I

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/default;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lrx/internal/operators/default;->new:I

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/ax1;

    invoke-direct {v0, p1}, Landroid/support/v4/ax1;-><init>(Landroid/support/v4/y22;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 3
    :goto_0
    new-instance v1, Lrx/internal/operators/default$new;

    iget-object v2, p0, Lrx/internal/operators/default;->if:Lrx/functions/Func1;

    iget v3, p0, Lrx/internal/operators/default;->for:I

    iget v4, p0, Lrx/internal/operators/default;->new:I

    invoke-direct {v1, v0, v2, v3, v4}, Lrx/internal/operators/default$new;-><init>(Landroid/support/v4/y22;Lrx/functions/Func1;II)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 5
    iget-object v0, v1, Lrx/internal/operators/default$new;->goto:Landroid/support/v4/ww1;

    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 6
    new-instance v0, Lrx/internal/operators/default$do;

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/default$do;-><init>(Lrx/internal/operators/default;Lrx/internal/operators/default$new;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    .line 7
    invoke-virtual {p1}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lrx/internal/operators/default;->do:Lrx/Observable;

    invoke-virtual {p1, v1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    :cond_1
    return-void
.end method
