.class final Lrx/internal/operators/c$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field public final do:Lrx/CompletableSubscriber;

.field public final if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx/CompletableSubscriber;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/c$do;->do:Lrx/CompletableSubscriber;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/c$do;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/c$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/u3;

    iget-object v1, p0, Lrx/internal/operators/c$do;->if:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/support/v4/u3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/u3;->attachTo(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/c$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/c$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    return-void
.end method
