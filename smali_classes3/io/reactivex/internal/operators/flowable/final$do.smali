.class final Lio/reactivex/internal/operators/flowable/final$do;
.super Landroid/support/v4/p10;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/final;
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
        "Landroid/support/v4/p10<",
        "TB;>;"
    }
.end annotation


# instance fields
.field public final if:Lio/reactivex/internal/operators/flowable/final$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/final$if<",
            "TT;TU;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/flowable/final$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/final$if<",
            "TT;TU;TB;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/p10;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/final$do;->if:Lio/reactivex/internal/operators/flowable/final$if;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/final$do;->if:Lio/reactivex/internal/operators/flowable/final$if;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/final$if;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/final$do;->if:Lio/reactivex/internal/operators/flowable/final$if;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/final$if;->onError(Ljava/lang/Throwable;)V

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
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/final$do;->if:Lio/reactivex/internal/operators/flowable/final$if;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/final$if;->case()V

    return-void
.end method
