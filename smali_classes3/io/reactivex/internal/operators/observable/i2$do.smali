.class final Lio/reactivex/internal/operators/observable/i2$do;
.super Landroid/support/v4/n10;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/n10<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final for:Lio/reactivex/subjects/this;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/this<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final if:Lio/reactivex/internal/operators/observable/i2$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/i2$for<",
            "TT;*TV;>;"
        }
    .end annotation
.end field

.field public new:Z


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/i2$for;Lio/reactivex/subjects/this;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/i2$for<",
            "TT;*TV;>;",
            "Lio/reactivex/subjects/this<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/n10;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/i2$do;->if:Lio/reactivex/internal/operators/observable/i2$for;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/i2$do;->for:Lio/reactivex/subjects/this;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i2$do;->new:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/i2$do;->new:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i2$do;->if:Lio/reactivex/internal/operators/observable/i2$for;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/i2$for;->new(Lio/reactivex/internal/operators/observable/i2$do;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i2$do;->new:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/i2$do;->new:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i2$do;->if:Lio/reactivex/internal/operators/observable/i2$for;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/i2$for;->else(Ljava/lang/Throwable;)V

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
    invoke-virtual {p0}, Landroid/support/v4/n10;->dispose()V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/i2$do;->onComplete()V

    return-void
.end method
