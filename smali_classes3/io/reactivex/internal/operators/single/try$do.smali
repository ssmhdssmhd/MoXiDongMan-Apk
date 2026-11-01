.class final Lio/reactivex/internal/operators/single/try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/try$do$do;,
        Lio/reactivex/internal/operators/single/try$do$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final do:Landroid/support/v4/tw1;

.field public final synthetic for:Lio/reactivex/internal/operators/single/try;

.field public final if:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/single/try;Landroid/support/v4/tw1;Lio/reactivex/SingleObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/tw1;",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/single/try$do;->for:Lio/reactivex/internal/operators/single/try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/single/try$do;->do:Landroid/support/v4/tw1;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/single/try$do;->if:Lio/reactivex/SingleObserver;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/try$do;->do:Landroid/support/v4/tw1;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/try$do;->for:Lio/reactivex/internal/operators/single/try;

    iget-object v1, v1, Lio/reactivex/internal/operators/single/try;->new:Lio/reactivex/try;

    new-instance v2, Lio/reactivex/internal/operators/single/try$do$do;

    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/single/try$do$do;-><init>(Lio/reactivex/internal/operators/single/try$do;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/single/try$do;->for:Lio/reactivex/internal/operators/single/try;

    iget-boolean v3, p1, Lio/reactivex/internal/operators/single/try;->try:Z

    if-eqz v3, :cond_0

    iget-wide v3, p1, Lio/reactivex/internal/operators/single/try;->if:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    iget-object p1, p1, Lio/reactivex/internal/operators/single/try;->for:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lio/reactivex/try;->try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/try$do;->do:Landroid/support/v4/tw1;

    invoke-virtual {v0, p1}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/try$do;->do:Landroid/support/v4/tw1;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/try$do;->for:Lio/reactivex/internal/operators/single/try;

    iget-object v1, v1, Lio/reactivex/internal/operators/single/try;->new:Lio/reactivex/try;

    new-instance v2, Lio/reactivex/internal/operators/single/try$do$if;

    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/single/try$do$if;-><init>(Lio/reactivex/internal/operators/single/try$do;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/single/try$do;->for:Lio/reactivex/internal/operators/single/try;

    iget-wide v3, p1, Lio/reactivex/internal/operators/single/try;->if:J

    iget-object p1, p1, Lio/reactivex/internal/operators/single/try;->for:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lio/reactivex/try;->try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
