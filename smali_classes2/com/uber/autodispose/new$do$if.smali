.class Lcom/uber/autodispose/new$do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/FlowableSubscribeProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uber/autodispose/new$do;->for(Lio/reactivex/for;)Lcom/uber/autodispose/FlowableSubscribeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uber/autodispose/FlowableSubscribeProxy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lio/reactivex/for;

.field public final synthetic if:Lcom/uber/autodispose/new$do;


# direct methods
.method public constructor <init>(Lcom/uber/autodispose/new$do;Lio/reactivex/for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uber/autodispose/new$do$if;->if:Lcom/uber/autodispose/new$do;

    iput-object p2, p0, Lcom/uber/autodispose/new$do$if;->do:Lio/reactivex/for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 1
    new-instance v0, Lcom/uber/autodispose/goto;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$if;->do:Lio/reactivex/for;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$if;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/goto;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0}, Lio/reactivex/for;->subscribe()Lio/reactivex/disposables/Disposable;

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
    new-instance v0, Lcom/uber/autodispose/goto;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$if;->do:Lio/reactivex/for;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$if;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/goto;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Lio/reactivex/for;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

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
    new-instance v0, Lcom/uber/autodispose/goto;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$if;->do:Lio/reactivex/for;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$if;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/goto;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1, p2}, Lio/reactivex/for;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

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
    new-instance v0, Lcom/uber/autodispose/goto;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$if;->do:Lio/reactivex/for;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$if;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/goto;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/CompletableSource;)V

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/for;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

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
            "Lorg/reactivestreams/Subscription;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/uber/autodispose/goto;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$if;->do:Lio/reactivex/for;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$if;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/goto;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/CompletableSource;)V

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/reactivex/for;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/uber/autodispose/goto;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$if;->do:Lio/reactivex/for;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$if;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/goto;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Lio/reactivex/for;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method

.method public subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/uber/autodispose/goto;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$if;->do:Lio/reactivex/for;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$if;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/goto;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Lio/reactivex/for;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p1

    return-object p1
.end method

.method public test()Lio/reactivex/subscribers/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subscribers/do<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/subscribers/do;

    invoke-direct {v0}, Lio/reactivex/subscribers/do;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/uber/autodispose/new$do$if;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-object v0
.end method

.method public test(J)Lio/reactivex/subscribers/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/subscribers/do<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lio/reactivex/subscribers/do;

    invoke-direct {v0, p1, p2}, Lio/reactivex/subscribers/do;-><init>(J)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/uber/autodispose/new$do$if;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-object v0
.end method

.method public test(JZ)Lio/reactivex/subscribers/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Lio/reactivex/subscribers/do<",
            "TT;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lio/reactivex/subscribers/do;

    invoke-direct {v0, p1, p2}, Lio/reactivex/subscribers/do;-><init>(J)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {v0}, Lio/reactivex/subscribers/do;->cancel()V

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lcom/uber/autodispose/new$do$if;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-object v0
.end method
