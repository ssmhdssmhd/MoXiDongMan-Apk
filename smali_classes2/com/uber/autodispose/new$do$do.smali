.class Lcom/uber/autodispose/new$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/CompletableSubscribeProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uber/autodispose/new$do;->if(Landroid/support/v4/np;)Lcom/uber/autodispose/CompletableSubscribeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/np;

.field public final synthetic if:Lcom/uber/autodispose/new$do;


# direct methods
.method public constructor <init>(Lcom/uber/autodispose/new$do;Landroid/support/v4/np;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uber/autodispose/new$do$do;->if:Lcom/uber/autodispose/new$do;

    iput-object p2, p0, Lcom/uber/autodispose/new$do$do;->do:Landroid/support/v4/np;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 1
    new-instance v0, Lcom/uber/autodispose/case;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$do;->do:Landroid/support/v4/np;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$do;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/case;-><init>(Landroid/support/v4/np;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0}, Landroid/support/v4/np;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 2
    new-instance v0, Lcom/uber/autodispose/case;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$do;->do:Landroid/support/v4/np;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$do;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/case;-><init>(Landroid/support/v4/np;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/np;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/uber/autodispose/case;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$do;->do:Landroid/support/v4/np;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$do;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/case;-><init>(Landroid/support/v4/np;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/np;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Lio/reactivex/CompletableObserver;)V
    .locals 3

    .line 4
    new-instance v0, Lcom/uber/autodispose/case;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$do;->do:Landroid/support/v4/np;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$do;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/case;-><init>(Landroid/support/v4/np;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method

.method public subscribeWith(Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/CompletableObserver;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/uber/autodispose/case;

    iget-object v1, p0, Lcom/uber/autodispose/new$do$do;->do:Landroid/support/v4/np;

    iget-object v2, p0, Lcom/uber/autodispose/new$do$do;->if:Lcom/uber/autodispose/new$do;

    iget-object v2, v2, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/case;-><init>(Landroid/support/v4/np;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/np;->subscribeWith(Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;

    move-result-object p1

    return-object p1
.end method

.method public test()Lio/reactivex/observers/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/if<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/if;

    invoke-direct {v0}, Lio/reactivex/observers/if;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/uber/autodispose/new$do$do;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-object v0
.end method

.method public test(Z)Lio/reactivex/observers/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/observers/if<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lio/reactivex/observers/if;

    invoke-direct {v0}, Lio/reactivex/observers/if;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/reactivex/observers/if;->cancel()V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/uber/autodispose/new$do$do;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-object v0
.end method
