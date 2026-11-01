.class public final Lrx/internal/operators/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/m$do;,
        Lrx/internal/operators/m$if;
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
.field public final do:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/m;->do:Lrx/Observable;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/m;->if:Lrx/Observable;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/m;->do(Landroid/support/v4/y22;)V

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
    new-instance v0, Landroid/support/v4/ww1;

    invoke-direct {v0}, Landroid/support/v4/ww1;-><init>()V

    .line 2
    new-instance v1, Lrx/internal/producers/do;

    invoke-direct {v1}, Lrx/internal/producers/do;-><init>()V

    .line 3
    new-instance v2, Lrx/internal/operators/m$if;

    iget-object v3, p0, Lrx/internal/operators/m;->if:Lrx/Observable;

    invoke-direct {v2, p1, v0, v1, v3}, Lrx/internal/operators/m$if;-><init>(Landroid/support/v4/y22;Landroid/support/v4/ww1;Lrx/internal/producers/do;Lrx/Observable;)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    .line 7
    iget-object p1, p0, Lrx/internal/operators/m;->do:Lrx/Observable;

    invoke-virtual {v2, p1}, Lrx/internal/operators/m$if;->do(Lrx/Observable;)V

    return-void
.end method
