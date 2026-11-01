.class Lcom/uber/autodispose/new$do$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/SingleSubscribeProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uber/autodispose/new$do;->else(Landroid/support/v4/jz1;)Lcom/uber/autodispose/SingleSubscribeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uber/autodispose/SingleSubscribeProxy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/jz1;

.field public final synthetic if:Lcom/uber/autodispose/new$do;


# direct methods
.method public constructor <init>(Lcom/uber/autodispose/new$do;Landroid/support/v4/jz1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uber/autodispose/new$do$try;->if:Lcom/uber/autodispose/new$do;

    iput-object p2, p0, Lcom/uber/autodispose/new$do$try;->do:Landroid/support/v4/jz1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 1
    new-instance v0, Lcom/uber/autodispose/class;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$try;->do:Landroid/support/v4/jz1;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$try;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/class;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0}, Landroid/support/v4/jz1;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/uber/autodispose/class;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$try;->do:Landroid/support/v4/jz1;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$try;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/class;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/jz1;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/uber/autodispose/class;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$try;->do:Landroid/support/v4/jz1;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$try;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/class;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/jz1;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/uber/autodispose/class;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$try;->do:Landroid/support/v4/jz1;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$try;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/class;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/jz1;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Lio/reactivex/SingleObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/uber/autodispose/class;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$try;->do:Landroid/support/v4/jz1;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$try;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/class;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/jz1;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method public subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/uber/autodispose/class;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$try;->do:Landroid/support/v4/jz1;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$try;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/class;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/jz1;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object p1

    return-object p1
.end method

.method public test()Lio/reactivex/observers/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/if<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/if;

    invoke-direct {v0}, Lio/reactivex/observers/if;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/uber/autodispose/new$do$try;->subscribe(Lio/reactivex/SingleObserver;)V

    return-object v0
.end method

.method public test(Z)Lio/reactivex/observers/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/observers/if<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lio/reactivex/observers/if;

    invoke-direct {v0}, Lio/reactivex/observers/if;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/reactivex/observers/if;->dispose()V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/uber/autodispose/new$do$try;->subscribe(Lio/reactivex/SingleObserver;)V

    return-object v0
.end method
