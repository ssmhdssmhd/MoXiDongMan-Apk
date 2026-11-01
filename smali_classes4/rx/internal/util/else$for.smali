.class Lrx/internal/util/else$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/else;->h6(Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/functions/Func1;

.field public final synthetic if:Lrx/internal/util/else;


# direct methods
.method public constructor <init>(Lrx/internal/util/else;Lrx/functions/Func1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/util/else$for;->if:Lrx/internal/util/else;

    iput-object p2, p0, Lrx/internal/util/else$for;->do:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/util/else$for;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/util/else$for;->do:Lrx/functions/Func1;

    iget-object v1, p0, Lrx/internal/util/else$for;->if:Lrx/internal/util/else;

    iget-object v1, v1, Lrx/internal/util/else;->if:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    .line 2
    instance-of v1, v0, Lrx/internal/util/else;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lrx/internal/util/else;

    iget-object v0, v0, Lrx/internal/util/else;->if:Ljava/lang/Object;

    invoke-static {p1, v0}, Lrx/internal/util/else;->f6(Landroid/support/v4/y22;Ljava/lang/Object;)Lrx/Producer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lrx/observers/new;->case(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    :goto_0
    return-void
.end method
