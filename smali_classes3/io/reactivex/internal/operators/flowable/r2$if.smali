.class final Lio/reactivex/internal/operators/flowable/r2$if;
.super Landroid/support/v4/p10;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
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
.field public final if:Lio/reactivex/internal/operators/flowable/r2$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/r2$for<",
            "TT;TB;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/flowable/r2$for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/r2$for<",
            "TT;TB;*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/p10;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/r2$if;->if:Lio/reactivex/internal/operators/flowable/r2$for;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/r2$if;->if:Lio/reactivex/internal/operators/flowable/r2$for;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/r2$for;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/r2$if;->if:Lio/reactivex/internal/operators/flowable/r2$for;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/r2$for;->else(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/r2$if;->if:Lio/reactivex/internal/operators/flowable/r2$for;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/r2$for;->goto(Ljava/lang/Object;)V

    return-void
.end method
