.class Lrx/internal/operators/z0$new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/z0$new;->new()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/z0$new;


# direct methods
.method public constructor <init>(Lrx/internal/operators/z0$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/z0$new$do;->do:Lrx/internal/operators/z0$new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/z0$new$do;->do:Lrx/internal/operators/z0$new;

    iget-object v0, v0, Lrx/internal/operators/z0$new;->new:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/z0$new;->this:[Lrx/internal/operators/z0$for;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lrx/internal/operators/z0$new$do;->do:Lrx/internal/operators/z0$new;

    iget-object v1, v0, Lrx/internal/operators/z0$new;->if:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
