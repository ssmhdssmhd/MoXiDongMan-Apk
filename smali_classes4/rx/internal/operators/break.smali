.class public final Lrx/internal/operators/break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/break$do;
    }
.end annotation


# instance fields
.field public final do:[Lrx/Completable;


# direct methods
.method public constructor <init>([Lrx/Completable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/break;->do:[Lrx/Completable;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/break;->do(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public do(Lrx/CompletableSubscriber;)V
    .locals 2

    .line 1
    new-instance v0, Lrx/internal/operators/break$do;

    iget-object v1, p0, Lrx/internal/operators/break;->do:[Lrx/Completable;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/break$do;-><init>(Lrx/CompletableSubscriber;[Lrx/Completable;)V

    .line 2
    iget-object v1, v0, Lrx/internal/operators/break$do;->sd:Landroid/support/v4/ww1;

    invoke-interface {p1, v1}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 3
    invoke-virtual {v0}, Lrx/internal/operators/break$do;->next()V

    return-void
.end method
