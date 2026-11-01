.class Lrx/internal/operators/z$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/z;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TTOpening;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/z$if;

.field public final synthetic if:Lrx/internal/operators/z;


# direct methods
.method public constructor <init>(Lrx/internal/operators/z;Lrx/internal/operators/z$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/z$do;->if:Lrx/internal/operators/z;

    iput-object p2, p0, Lrx/internal/operators/z$do;->do:Lrx/internal/operators/z$if;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/z$do;->do:Lrx/internal/operators/z$if;

    invoke-virtual {v0}, Lrx/internal/operators/z$if;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/z$do;->do:Lrx/internal/operators/z$if;

    invoke-virtual {v0, p1}, Lrx/internal/operators/z$if;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTOpening;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/z$do;->do:Lrx/internal/operators/z$if;

    invoke-virtual {v0, p1}, Lrx/internal/operators/z$if;->if(Ljava/lang/Object;)V

    return-void
.end method
