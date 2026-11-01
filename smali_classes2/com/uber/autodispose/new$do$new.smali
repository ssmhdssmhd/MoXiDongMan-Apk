.class Lcom/uber/autodispose/new$do$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/ObservableSubscribeProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uber/autodispose/new$do;->try(Lio/reactivex/new;)Lcom/uber/autodispose/ObservableSubscribeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uber/autodispose/ObservableSubscribeProxy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lio/reactivex/new;

.field public final synthetic if:Lcom/uber/autodispose/new$do;


# direct methods
.method public constructor <init>(Lcom/uber/autodispose/new$do;Lio/reactivex/new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uber/autodispose/new$do$new;->if:Lcom/uber/autodispose/new$do;

    iput-object p2, p0, Lcom/uber/autodispose/new$do$new;->do:Lio/reactivex/new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 1
    new-instance v0, Lcom/uber/autodispose/break;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$new;->do:Lio/reactivex/new;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$new;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/break;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0}, Lio/reactivex/new;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
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
    new-instance v0, Lcom/uber/autodispose/break;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$new;->do:Lio/reactivex/new;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$new;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/break;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Lio/reactivex/new;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

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

    .line 3
    new-instance v0, Lcom/uber/autodispose/break;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$new;->do:Lio/reactivex/new;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$new;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/break;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1, p2}, Lio/reactivex/new;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/uber/autodispose/break;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$new;->do:Lio/reactivex/new;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$new;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/break;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/CompletableSource;)V

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/new;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/uber/autodispose/break;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$new;->do:Lio/reactivex/new;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$new;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/break;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/CompletableSource;)V

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/reactivex/new;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/uber/autodispose/break;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$new;->do:Lio/reactivex/new;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$new;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/break;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/Observer<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/uber/autodispose/break;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$new;->do:Lio/reactivex/new;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$new;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/break;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Lio/reactivex/new;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

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
    invoke-virtual {p0, v0}, Lcom/uber/autodispose/new$do$new;->subscribe(Lio/reactivex/Observer;)V

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
    invoke-virtual {p0, v0}, Lcom/uber/autodispose/new$do$new;->subscribe(Lio/reactivex/Observer;)V

    return-object v0
.end method
