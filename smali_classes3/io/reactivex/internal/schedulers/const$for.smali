.class Lio/reactivex/internal/schedulers/const$for;
.super Lio/reactivex/internal/schedulers/const$case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field private final action:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/schedulers/const$case;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/const$for;->action:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public callActual(Lio/reactivex/try$for;Lio/reactivex/CompletableObserver;)Lio/reactivex/disposables/Disposable;
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/const$new;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/const$for;->action:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2}, Lio/reactivex/internal/schedulers/const$new;-><init>(Ljava/lang/Runnable;Lio/reactivex/CompletableObserver;)V

    invoke-virtual {p1, v0}, Lio/reactivex/try$for;->if(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method
