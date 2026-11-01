.class public final Lrx/internal/operators/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
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
.field public final do:Lrx/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Single;Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Observable<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/u2;->do:Lrx/Single;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/u2;->if:Lrx/Observable;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/b02;

    invoke-virtual {p0, p1}, Lrx/internal/operators/u2;->do(Landroid/support/v4/b02;)V

    return-void
.end method

.method public do(Landroid/support/v4/b02;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/u2$do;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/u2$do;-><init>(Lrx/internal/operators/u2;Landroid/support/v4/b02;)V

    .line 2
    new-instance v1, Landroid/support/v4/ww1;

    invoke-direct {v1}, Landroid/support/v4/ww1;-><init>()V

    .line 3
    invoke-virtual {p1, v1}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    .line 4
    new-instance p1, Lrx/internal/operators/u2$if;

    invoke-direct {p1, p0, v0, v1}, Lrx/internal/operators/u2$if;-><init>(Lrx/internal/operators/u2;Landroid/support/v4/b02;Landroid/support/v4/ww1;)V

    .line 5
    invoke-virtual {v1, p1}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    .line 6
    iget-object v0, p0, Lrx/internal/operators/u2;->if:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    return-void
.end method
