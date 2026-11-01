.class Lrx/internal/operators/static$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/static;->break(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/static$new;

.field public final synthetic if:Lrx/internal/operators/static;


# direct methods
.method public constructor <init>(Lrx/internal/operators/static;Lrx/internal/operators/static$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/static$do;->if:Lrx/internal/operators/static;

    iput-object p2, p0, Lrx/internal/operators/static$do;->do:Lrx/internal/operators/static$new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/static$do;->do:Lrx/internal/operators/static$new;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/static$for;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/static$do;->do:Lrx/internal/operators/static$new;

    iget-object v0, v0, Lrx/internal/operators/static$new;->ambSubscribers:Ljava/util/Collection;

    invoke-static {v0}, Lrx/internal/operators/static;->catch(Ljava/util/Collection;)V

    return-void
.end method
