.class final Lio/reactivex/internal/schedulers/else$for;
.super Lio/reactivex/internal/schedulers/goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# instance fields
.field private for:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/schedulers/goto;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/reactivex/internal/schedulers/else$for;->for:J

    return-void
.end method


# virtual methods
.method public break(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/reactivex/internal/schedulers/else$for;->for:J

    return-void
.end method

.method public this()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/schedulers/else$for;->for:J

    return-wide v0
.end method
