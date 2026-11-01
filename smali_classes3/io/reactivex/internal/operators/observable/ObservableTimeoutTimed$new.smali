.class final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation


# instance fields
.field public final do:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;

.field public final if:J


# direct methods
.method public constructor <init>(JLio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$new;->if:J

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$new;->do:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$new;->do:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$new;->if:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;->onTimeout(J)V

    return-void
.end method
