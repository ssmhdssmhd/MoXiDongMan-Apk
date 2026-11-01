.class Lio/reactivex/internal/schedulers/const$if;
.super Lio/reactivex/internal/schedulers/const$case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final action:Ljava/lang/Runnable;

.field private final delayTime:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/schedulers/const$case;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/const$if;->action:Ljava/lang/Runnable;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/schedulers/const$if;->delayTime:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/schedulers/const$if;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public callActual(Lio/reactivex/try$for;Lio/reactivex/CompletableObserver;)Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/const$new;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/const$if;->action:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2}, Lio/reactivex/internal/schedulers/const$new;-><init>(Ljava/lang/Runnable;Lio/reactivex/CompletableObserver;)V

    iget-wide v1, p0, Lio/reactivex/internal/schedulers/const$if;->delayTime:J

    iget-object p2, p0, Lio/reactivex/internal/schedulers/const$if;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, p2}, Lio/reactivex/try$for;->for(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method
