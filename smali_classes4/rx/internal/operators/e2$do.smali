.class final Lrx/internal/operators/e2$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/internal/operators/e2$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/e2$if<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field public if:Z


# direct methods
.method public constructor <init>(Lrx/internal/operators/e2$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/e2$if<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/e2$do;->do:Lrx/internal/operators/e2$if;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/e2$do;->if:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/e2$do;->if:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/e2$do;->do:Lrx/internal/operators/e2$if;

    invoke-virtual {v0}, Lrx/internal/operators/e2$if;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/e2$do;->do:Lrx/internal/operators/e2$if;

    invoke-virtual {v0, p1}, Lrx/internal/operators/e2$if;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lrx/internal/operators/e2$do;->if:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lrx/internal/operators/e2$do;->if:Z

    .line 3
    iget-object p1, p0, Lrx/internal/operators/e2$do;->do:Lrx/internal/operators/e2$if;

    invoke-virtual {p1}, Lrx/internal/operators/e2$if;->else()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method
