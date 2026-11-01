.class final Lio/reactivex/internal/schedulers/super$for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/super$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public final do:Lio/reactivex/internal/schedulers/super$if;

.field public final synthetic if:Lio/reactivex/internal/schedulers/super$for;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/schedulers/super$for;Lio/reactivex/internal/schedulers/super$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/schedulers/super$for$do;->if:Lio/reactivex/internal/schedulers/super$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/schedulers/super$for$do;->do:Lio/reactivex/internal/schedulers/super$if;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/super$for$do;->do:Lio/reactivex/internal/schedulers/super$if;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/schedulers/super$if;->new:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/schedulers/super$for$do;->if:Lio/reactivex/internal/schedulers/super$for;

    iget-object v0, v0, Lio/reactivex/internal/schedulers/super$for;->do:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/super$for$do;->do:Lio/reactivex/internal/schedulers/super$if;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
