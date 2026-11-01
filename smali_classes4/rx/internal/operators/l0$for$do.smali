.class Lrx/internal/operators/l0$for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/l0$for;->for()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/l0$for;


# direct methods
.method public constructor <init>(Lrx/internal/operators/l0$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/l0$for$do;->do:Lrx/internal/operators/l0$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/l0$for$do;->do:Lrx/internal/operators/l0$for;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/internal/operators/l0$for;->else:Z

    .line 2
    iget-object v0, p0, Lrx/internal/operators/l0$for$do;->do:Lrx/internal/operators/l0$for;

    iget-object v0, v0, Lrx/internal/operators/l0$for;->goto:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lrx/internal/operators/l0$for$do;->do:Lrx/internal/operators/l0$for;

    invoke-virtual {v0}, Lrx/internal/operators/l0$for;->do()V

    :cond_0
    return-void
.end method
