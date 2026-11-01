.class public final Lrx/internal/operators/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/a3$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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

.field public final if:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Single$OnSubscribe;Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single$OnSubscribe<",
            "TT;>;",
            "Lrx/Observable<",
            "+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/a3;->do:Lrx/Single$OnSubscribe;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/a3;->if:Lrx/Observable;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/b02;

    invoke-virtual {p0, p1}, Lrx/internal/operators/a3;->do(Landroid/support/v4/b02;)V

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
    new-instance v0, Lrx/internal/operators/a3$do;

    invoke-direct {v0, p1}, Lrx/internal/operators/a3$do;-><init>(Landroid/support/v4/b02;)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    .line 3
    iget-object p1, p0, Lrx/internal/operators/a3;->if:Lrx/Observable;

    iget-object v1, v0, Lrx/internal/operators/a3$do;->new:Landroid/support/v4/y22;

    invoke-virtual {p1, v1}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 4
    iget-object p1, p0, Lrx/internal/operators/a3;->do:Lrx/Single$OnSubscribe;

    invoke-interface {p1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    return-void
.end method
