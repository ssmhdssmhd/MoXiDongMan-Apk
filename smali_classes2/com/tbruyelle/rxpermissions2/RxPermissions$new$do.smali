.class Lcom/tbruyelle/rxpermissions2/RxPermissions$new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/RxPermissions$new;->apply(Lio/reactivex/new;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/util/List<",
        "Lcom/tbruyelle/rxpermissions2/do;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/tbruyelle/rxpermissions2/do;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/tbruyelle/rxpermissions2/RxPermissions$new;


# direct methods
.method public constructor <init>(Lcom/tbruyelle/rxpermissions2/RxPermissions$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions$new$do;->do:Lcom/tbruyelle/rxpermissions2/RxPermissions$new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions$new$do;->do(Ljava/util/List;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

.method public do(Ljava/util/List;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tbruyelle/rxpermissions2/do;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/tbruyelle/rxpermissions2/do;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/new;->empty()Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/tbruyelle/rxpermissions2/do;

    invoke-direct {v0, p1}, Lcom/tbruyelle/rxpermissions2/do;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/new;->just(Ljava/lang/Object;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method
