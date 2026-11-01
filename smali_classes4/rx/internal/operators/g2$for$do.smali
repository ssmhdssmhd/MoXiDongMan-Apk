.class Lrx/internal/operators/g2$for$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/g2$for;->do(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public do:Z

.field public final synthetic for:Lrx/internal/operators/g2$for;

.field public final synthetic if:Lrx/internal/operators/g2$if;


# direct methods
.method public constructor <init>(Lrx/internal/operators/g2$for;Lrx/internal/operators/g2$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/g2$for$do;->for:Lrx/internal/operators/g2$for;

    iput-object p2, p0, Lrx/internal/operators/g2$for$do;->if:Lrx/internal/operators/g2$if;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lrx/internal/operators/g2$for$do;->do:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/g2$for$do;->do:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/g2$for$do;->do:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/g2$for$do;->for:Lrx/internal/operators/g2$for;

    iget-object v1, p0, Lrx/internal/operators/g2$for$do;->if:Lrx/internal/operators/g2$if;

    invoke-virtual {v0, v1}, Lrx/internal/operators/g2$for;->for(Lrx/internal/operators/g2$if;)V

    .line 4
    iget-object v0, p0, Lrx/internal/operators/g2$for$do;->for:Lrx/internal/operators/g2$for;

    iget-object v0, v0, Lrx/internal/operators/g2$for;->if:Landroid/support/v4/dq;

    invoke-virtual {v0, p0}, Landroid/support/v4/dq;->try(Lrx/Subscription;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/g2$for$do;->for:Lrx/internal/operators/g2$for;

    invoke-virtual {v0, p1}, Lrx/internal/operators/g2$for;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/g2$for$do;->onCompleted()V

    return-void
.end method
