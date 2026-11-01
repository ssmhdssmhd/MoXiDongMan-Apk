.class final Lio/reactivex/internal/schedulers/const$do$do;
.super Landroid/support/v4/np;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/const$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public final do:Lio/reactivex/internal/schedulers/const$case;

.field public final synthetic if:Lio/reactivex/internal/schedulers/const$do;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/schedulers/const$do;Lio/reactivex/internal/schedulers/const$case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/schedulers/const$do$do;->if:Lio/reactivex/internal/schedulers/const$do;

    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/schedulers/const$do$do;->do:Lio/reactivex/internal/schedulers/const$case;

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/const$do$do;->do:Lio/reactivex/internal/schedulers/const$case;

    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/schedulers/const$do$do;->do:Lio/reactivex/internal/schedulers/const$case;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/const$do$do;->if:Lio/reactivex/internal/schedulers/const$do;

    iget-object v1, v1, Lio/reactivex/internal/schedulers/const$do;->do:Lio/reactivex/try$for;

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/schedulers/const$case;->call(Lio/reactivex/try$for;Lio/reactivex/CompletableObserver;)V

    return-void
.end method
