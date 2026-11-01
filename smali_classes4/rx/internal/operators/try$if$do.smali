.class Lrx/internal/operators/try$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/try$if;->do(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/try$if;


# direct methods
.method public constructor <init>(Lrx/internal/operators/try$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/try$if$do;->do:Lrx/internal/operators/try$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/try$if$do;->do:Lrx/internal/operators/try$if;

    iget-object v0, v0, Lrx/internal/operators/try$if;->do:Lrx/internal/operators/try$for;

    sget-object v1, Lrx/internal/operators/try;->new:Lrx/Observer;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
