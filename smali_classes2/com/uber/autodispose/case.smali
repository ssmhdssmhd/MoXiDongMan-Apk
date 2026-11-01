.class final Lcom/uber/autodispose/case;
.super Landroid/support/v4/np;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/CompletableSubscribeProxy;


# instance fields
.field private final do:Landroid/support/v4/np;

.field private final if:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Landroid/support/v4/np;Lio/reactivex/CompletableSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/uber/autodispose/case;->do:Landroid/support/v4/np;

    .line 3
    iput-object p2, p0, Lcom/uber/autodispose/case;->if:Lio/reactivex/CompletableSource;

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/case;->do:Landroid/support/v4/np;

    new-instance v1, Lcom/uber/autodispose/final;

    iget-object v2, p0, Lcom/uber/autodispose/case;->if:Lio/reactivex/CompletableSource;

    invoke-direct {v1, v2, p1}, Lcom/uber/autodispose/final;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/CompletableObserver;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
