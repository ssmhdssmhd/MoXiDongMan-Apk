.class final Lio/reactivex/internal/operators/observable/k2$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/k2$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field public final do:J

.field public final if:Lio/reactivex/internal/operators/observable/k2$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/k2$do<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLio/reactivex/internal/operators/observable/k2$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/reactivex/internal/operators/observable/k2$do<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/k2$do$do;->do:J

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/k2$do$do;->if:Lio/reactivex/internal/operators/observable/k2$do;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k2$do$do;->if:Lio/reactivex/internal/operators/observable/k2$do;

    .line 2
    invoke-static {v0}, Lio/reactivex/internal/operators/observable/k2$do;->new(Lio/reactivex/internal/operators/observable/k2$do;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lio/reactivex/internal/operators/observable/k2$do;->try(Lio/reactivex/internal/operators/observable/k2$do;)Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lio/reactivex/internal/operators/observable/k2$do;->i:Z

    .line 5
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/observers/try;->enter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/k2$do;->else()V

    :cond_1
    return-void
.end method
