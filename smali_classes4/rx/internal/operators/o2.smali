.class public final Lrx/internal/operators/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/o2$do;
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
.field public final do:Lrx/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final for:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Single;Lrx/functions/Action1;Lrx/functions/Action1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single<",
            "TT;>;",
            "Lrx/functions/Action1<",
            "-TT;>;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/o2;->do:Lrx/Single;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/o2;->if:Lrx/functions/Action1;

    .line 4
    iput-object p3, p0, Lrx/internal/operators/o2;->for:Lrx/functions/Action1;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/b02;

    invoke-virtual {p0, p1}, Lrx/internal/operators/o2;->do(Landroid/support/v4/b02;)V

    return-void
.end method

.method public do(Landroid/support/v4/b02;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/o2$do;

    iget-object v1, p0, Lrx/internal/operators/o2;->if:Lrx/functions/Action1;

    iget-object v2, p0, Lrx/internal/operators/o2;->for:Lrx/functions/Action1;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/o2$do;-><init>(Landroid/support/v4/b02;Lrx/functions/Action1;Lrx/functions/Action1;)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    .line 3
    iget-object p1, p0, Lrx/internal/operators/o2;->do:Lrx/Single;

    invoke-virtual {p1, v0}, Lrx/Single;->u(Landroid/support/v4/b02;)Lrx/Subscription;

    return-void
.end method
