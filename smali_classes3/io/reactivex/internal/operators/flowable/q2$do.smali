.class final Lio/reactivex/internal/operators/flowable/q2$do;
.super Landroid/support/v4/p10;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/p10<",
        "TB;>;"
    }
.end annotation


# instance fields
.field public for:Z

.field public final if:Lio/reactivex/internal/operators/flowable/q2$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/q2$if<",
            "TT;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/flowable/q2$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/q2$if<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/p10;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q2$do;->if:Lio/reactivex/internal/operators/flowable/q2$if;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q2$do;->for:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q2$do;->for:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$do;->if:Lio/reactivex/internal/operators/flowable/q2$if;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/q2$if;->innerComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q2$do;->for:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q2$do;->for:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$do;->if:Lio/reactivex/internal/operators/flowable/q2$if;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/q2$if;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/q2$do;->for:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/q2$do;->if:Lio/reactivex/internal/operators/flowable/q2$if;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/q2$if;->innerNext()V

    return-void
.end method
