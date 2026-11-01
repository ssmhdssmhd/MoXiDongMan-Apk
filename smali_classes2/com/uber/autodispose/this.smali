.class final Lcom/uber/autodispose/this;
.super Landroid/support/v4/fy0;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/MaybeSubscribeProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/fy0<",
        "TT;>;",
        "Lcom/uber/autodispose/MaybeSubscribeProxy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final do:Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeSource<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final if:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeSource;Lio/reactivex/CompletableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource<",
            "TT;>;",
            "Lio/reactivex/CompletableSource;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/fy0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/uber/autodispose/this;->do:Lio/reactivex/MaybeSource;

    .line 3
    iput-object p2, p0, Lcom/uber/autodispose/this;->if:Lio/reactivex/CompletableSource;

    return-void
.end method


# virtual methods
.method public w0(Lio/reactivex/MaybeObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/this;->do:Lio/reactivex/MaybeSource;

    new-instance v1, Lcom/uber/autodispose/super;

    iget-object v2, p0, Lcom/uber/autodispose/this;->if:Lio/reactivex/CompletableSource;

    invoke-direct {v1, v2, p1}, Lcom/uber/autodispose/super;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/MaybeObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
