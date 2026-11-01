.class final Lio/reactivex/internal/operators/single/try$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/try$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field private final do:Ljava/lang/Throwable;

.field public final synthetic if:Lio/reactivex/internal/operators/single/try$do;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/single/try$do;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/single/try$do$do;->if:Lio/reactivex/internal/operators/single/try$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/single/try$do$do;->do:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/try$do$do;->if:Lio/reactivex/internal/operators/single/try$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/try$do;->if:Lio/reactivex/SingleObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/try$do$do;->do:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
