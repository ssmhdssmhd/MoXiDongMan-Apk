.class final Lio/reactivex/internal/operators/observable/e2$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/e2$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public final synthetic do:Lio/reactivex/internal/operators/observable/e2$do;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/e2$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e2$do$do;->do:Lio/reactivex/internal/operators/observable/e2$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e2$do$do;->do:Lio/reactivex/internal/operators/observable/e2$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/e2$do;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method
