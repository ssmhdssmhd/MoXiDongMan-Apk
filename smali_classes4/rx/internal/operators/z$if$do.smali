.class Lrx/internal/operators/z$if$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/z$if;->if(Ljava/lang/Object;)V
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
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lrx/internal/operators/z$if;


# direct methods
.method public constructor <init>(Lrx/internal/operators/z$if;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/z$if$do;->if:Lrx/internal/operators/z$if;

    iput-object p2, p0, Lrx/internal/operators/z$if$do;->do:Ljava/util/List;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/z$if$do;->if:Lrx/internal/operators/z$if;

    iget-object v0, v0, Lrx/internal/operators/z$if;->new:Landroid/support/v4/dq;

    invoke-virtual {v0, p0}, Landroid/support/v4/dq;->try(Lrx/Subscription;)V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/z$if$do;->if:Lrx/internal/operators/z$if;

    iget-object v1, p0, Lrx/internal/operators/z$if$do;->do:Ljava/util/List;

    invoke-virtual {v0, v1}, Lrx/internal/operators/z$if;->do(Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/z$if$do;->if:Lrx/internal/operators/z$if;

    invoke-virtual {v0, p1}, Lrx/internal/operators/z$if;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTClosing;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lrx/internal/operators/z$if$do;->if:Lrx/internal/operators/z$if;

    iget-object p1, p1, Lrx/internal/operators/z$if;->new:Landroid/support/v4/dq;

    invoke-virtual {p1, p0}, Landroid/support/v4/dq;->try(Lrx/Subscription;)V

    .line 2
    iget-object p1, p0, Lrx/internal/operators/z$if$do;->if:Lrx/internal/operators/z$if;

    iget-object v0, p0, Lrx/internal/operators/z$if$do;->do:Ljava/util/List;

    invoke-virtual {p1, v0}, Lrx/internal/operators/z$if;->do(Ljava/util/List;)V

    return-void
.end method
