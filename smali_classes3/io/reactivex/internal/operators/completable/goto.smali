.class public final Lio/reactivex/internal/operators/completable/goto;
.super Landroid/support/v4/np;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/goto$do;
    }
.end annotation


# instance fields
.field public final do:Lio/reactivex/CompletableSource;

.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:J

.field public final new:Lio/reactivex/try;

.field public final try:Z


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/goto;->do:Lio/reactivex/CompletableSource;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/completable/goto;->if:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/completable/goto;->for:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/completable/goto;->new:Lio/reactivex/try;

    .line 6
    iput-boolean p6, p0, Lio/reactivex/internal/operators/completable/goto;->try:Z

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/goto;->do:Lio/reactivex/CompletableSource;

    new-instance v8, Lio/reactivex/internal/operators/completable/goto$do;

    iget-wide v3, p0, Lio/reactivex/internal/operators/completable/goto;->if:J

    iget-object v5, p0, Lio/reactivex/internal/operators/completable/goto;->for:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/operators/completable/goto;->new:Lio/reactivex/try;

    iget-boolean v7, p0, Lio/reactivex/internal/operators/completable/goto;->try:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/completable/goto$do;-><init>(Lio/reactivex/CompletableObserver;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)V

    invoke-interface {v0, v8}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
