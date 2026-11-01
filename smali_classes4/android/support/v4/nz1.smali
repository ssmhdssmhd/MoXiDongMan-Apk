.class public final Landroid/support/v4/nz1;
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
.field public final do:Lrx/Single$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single$OnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/Single$OnSubscribe;Lrx/functions/Action0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single$OnSubscribe<",
            "TT;>;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/nz1;->do:Lrx/Single$OnSubscribe;

    .line 3
    iput-object p2, p0, Landroid/support/v4/nz1;->if:Lrx/functions/Action0;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/b02;

    invoke-virtual {p0, p1}, Landroid/support/v4/nz1;->do(Landroid/support/v4/b02;)V

    return-void
.end method

.method public do(Landroid/support/v4/b02;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/nz1;->if:Lrx/functions/Action0;

    invoke-static {v0}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    .line 2
    iget-object v0, p0, Landroid/support/v4/nz1;->do:Lrx/Single$OnSubscribe;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    return-void
.end method
