.class Lrx/Completable$private$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$private;->do(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/CompletableSubscriber;

.field public final synthetic if:Lrx/Completable$private;


# direct methods
.method public constructor <init>(Lrx/Completable$private;Lrx/CompletableSubscriber;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$private$do;->if:Lrx/Completable$private;

    iput-object p2, p0, Lrx/Completable$private$do;->do:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Completable$private$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Completable$private$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/Completable$private$do;->do:Lrx/CompletableSubscriber;

    new-instance v1, Lrx/Completable$private$do$do;

    invoke-direct {v1, p0, p1}, Lrx/Completable$private$do$do;-><init>(Lrx/Completable$private$do;Lrx/Subscription;)V

    invoke-static {v1}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    return-void
.end method
