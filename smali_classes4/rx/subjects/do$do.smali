.class final Lrx/subjects/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/do;->g6()Lrx/subjects/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lrx/subjects/try$for<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/subjects/try;


# direct methods
.method public constructor <init>(Lrx/subjects/try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/subjects/do$do;->do:Lrx/subjects/try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/subjects/try$for;

    invoke-virtual {p0, p1}, Lrx/subjects/do$do;->do(Lrx/subjects/try$for;)V

    return-void
.end method

.method public do(Lrx/subjects/try$for;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/try$for<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/do$do;->do:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Lrx/internal/operators/return;->case(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lrx/internal/operators/return;->else(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Lrx/internal/operators/return;->new(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/subjects/try$for;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p1, Lrx/subjects/try$for;->do:Landroid/support/v4/y22;

    new-instance v2, Landroid/support/v4/yz1;

    iget-object p1, p1, Lrx/subjects/try$for;->do:Landroid/support/v4/y22;

    invoke-static {v0}, Lrx/internal/operators/return;->try(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroid/support/v4/yz1;-><init>(Landroid/support/v4/y22;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lrx/subjects/try$for;->onCompleted()V

    :goto_1
    return-void
.end method
