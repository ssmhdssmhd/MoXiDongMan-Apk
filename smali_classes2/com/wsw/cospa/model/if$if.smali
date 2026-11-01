.class Lcom/wsw/cospa/model/if$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/if;->else()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/SearchComicBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/if;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/model/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/if$if;->do:Lcom/wsw/cospa/model/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/model/if$if;->do:Lcom/wsw/cospa/model/if;

    invoke-static {p1}, Lcom/wsw/cospa/model/if;->case(Lcom/wsw/cospa/model/if;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/model/if$if;->do:Lcom/wsw/cospa/model/if;

    invoke-static {p1}, Lcom/wsw/cospa/model/if;->try(Lcom/wsw/cospa/model/if;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/model/if$if;->do:Lcom/wsw/cospa/model/if;

    invoke-static {p1}, Lcom/wsw/cospa/model/if;->case(Lcom/wsw/cospa/model/if;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/model/if$if;->do(Ljava/util/List;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/if$if;->do:Lcom/wsw/cospa/model/if;

    invoke-static {v0}, Lcom/wsw/cospa/model/if;->for(Lcom/wsw/cospa/model/if;)Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;->compositeDisposableAdd(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
