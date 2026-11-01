.class final Lio/reactivex/internal/operators/observable/const$do;
.super Landroid/support/v4/n10;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/n10<",
        "TB;>;"
    }
.end annotation


# instance fields
.field public for:Z

.field public final if:Lio/reactivex/internal/operators/observable/const$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/const$if<",
            "TT;TU;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/const$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/const$if<",
            "TT;TU;TB;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/n10;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/const$do;->if:Lio/reactivex/internal/operators/observable/const$if;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/const$do;->for:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/const$do;->for:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/const$do;->if:Lio/reactivex/internal/operators/observable/const$if;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/const$if;->case()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/const$do;->for:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/const$do;->for:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/const$do;->if:Lio/reactivex/internal/operators/observable/const$if;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/const$if;->onError(Ljava/lang/Throwable;)V

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
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/const$do;->for:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/const$do;->for:Z

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/n10;->dispose()V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/const$do;->if:Lio/reactivex/internal/operators/observable/const$if;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/const$if;->case()V

    return-void
.end method
