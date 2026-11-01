.class Lrx/internal/operators/x$if;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/x;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TTClosing;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/x$for;

.field public final synthetic if:Lrx/internal/operators/x;


# direct methods
.method public constructor <init>(Lrx/internal/operators/x;Lrx/internal/operators/x$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/x$if;->if:Lrx/internal/operators/x;

    iput-object p2, p0, Lrx/internal/operators/x$if;->do:Lrx/internal/operators/x$for;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/x$if;->do:Lrx/internal/operators/x$for;

    invoke-virtual {v0}, Lrx/internal/operators/x$for;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/x$if;->do:Lrx/internal/operators/x$for;

    invoke-virtual {v0, p1}, Lrx/internal/operators/x$for;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTClosing;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lrx/internal/operators/x$if;->do:Lrx/internal/operators/x$for;

    invoke-virtual {p1}, Lrx/internal/operators/x$for;->do()V

    return-void
.end method
