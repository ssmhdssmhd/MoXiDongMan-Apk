.class public Landroid/support/v4/v3;
.super Landroid/support/v4/y22;
.source "SourceFile"

# interfaces
.implements Lrx/observers/AssertableSubscriber;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TT;>;",
        "Lrx/observers/AssertableSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final do:Lrx/observers/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/case<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/observers/case;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observers/case<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    return-void
.end method

.method public static do(J)Landroid/support/v4/v3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)",
            "Landroid/support/v4/v3<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observers/case;

    invoke-direct {v0, p0, p1}, Lrx/observers/case;-><init>(J)V

    .line 2
    new-instance p0, Landroid/support/v4/v3;

    invoke-direct {p0, v0}, Landroid/support/v4/v3;-><init>(Lrx/observers/case;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    return-object p0
.end method


# virtual methods
.method public assertCompleted()Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->do()V

    return-object p0
.end method

.method public assertError(Ljava/lang/Class;)Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1}, Lrx/observers/case;->if(Ljava/lang/Class;)V

    return-object p0
.end method

.method public assertError(Ljava/lang/Throwable;)Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1}, Lrx/observers/case;->for(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public final varargs assertFailure(Ljava/lang/Class;[Ljava/lang/Object;)Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;[TT;)",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p2}, Lrx/observers/case;->final([Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {p2, p1}, Lrx/observers/case;->if(Ljava/lang/Class;)V

    .line 3
    iget-object p1, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {p1}, Lrx/observers/case;->goto()V

    return-object p0
.end method

.method public final varargs assertFailureAndMessage(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lrx/observers/AssertableSubscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            "[TT;)",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p3}, Lrx/observers/case;->final([Ljava/lang/Object;)V

    .line 2
    iget-object p3, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {p3, p1}, Lrx/observers/case;->if(Ljava/lang/Class;)V

    .line 3
    iget-object p1, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {p1}, Lrx/observers/case;->goto()V

    .line 4
    iget-object p1, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {p1}, Lrx/observers/case;->getOnErrorEvents()Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eq p1, p2, :cond_1

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p3, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error message differs. Expected: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', Received: \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p3

    :cond_1
    :goto_0
    return-object p0
.end method

.method public assertNoErrors()Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->try()V

    return-object p0
.end method

.method public assertNoTerminalEvent()Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->case()V

    return-object p0
.end method

.method public assertNoValues()Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->else()V

    return-object p0
.end method

.method public assertNotCompleted()Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->goto()V

    return-object p0
.end method

.method public assertReceivedOnNext(Ljava/util/List;)Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1}, Lrx/observers/case;->this(Ljava/util/List;)V

    return-object p0
.end method

.method public final varargs assertResult([Ljava/lang/Object;)Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1}, Lrx/observers/case;->final([Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {p1}, Lrx/observers/case;->try()V

    .line 3
    iget-object p1, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {p1}, Lrx/observers/case;->do()V

    return-object p0
.end method

.method public assertTerminalEvent()Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->break()V

    return-object p0
.end method

.method public assertUnsubscribed()Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->catch()V

    return-object p0
.end method

.method public assertValue(Ljava/lang/Object;)Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1}, Lrx/observers/case;->class(Ljava/lang/Object;)V

    return-object p0
.end method

.method public assertValueCount(I)Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1}, Lrx/observers/case;->const(I)V

    return-object p0
.end method

.method public varargs assertValues([Ljava/lang/Object;)Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1}, Lrx/observers/case;->final([Ljava/lang/Object;)V

    return-object p0
.end method

.method public final varargs assertValuesAndClear(Ljava/lang/Object;[Ljava/lang/Object;)Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1, p2}, Lrx/observers/case;->super(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public awaitTerminalEvent()Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->while()V

    return-object p0
.end method

.method public awaitTerminalEvent(JLjava/util/concurrent/TimeUnit;)Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1, p2, p3}, Lrx/observers/case;->import(JLjava/util/concurrent/TimeUnit;)V

    return-object p0
.end method

.method public awaitTerminalEventAndUnsubscribeOnTimeout(JLjava/util/concurrent/TimeUnit;)Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1, p2, p3}, Lrx/observers/case;->native(JLjava/util/concurrent/TimeUnit;)V

    return-object p0
.end method

.method public final awaitValueCount(IJLjava/util/concurrent/TimeUnit;)Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrx/observers/case;->public(IJLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Did not receive enough values in time. Expected: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Actual: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {p1}, Lrx/observers/case;->getValueCount()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public final getCompletions()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->getCompletions()I

    move-result v0

    return v0
.end method

.method public getLastSeenThread()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->getLastSeenThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public getOnErrorEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->getOnErrorEvents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnNextEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->getOnNextEvents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getValueCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->getValueCount()I

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Lrx/observers/case;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1}, Lrx/observers/case;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1}, Lrx/observers/case;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Landroid/support/v4/y22;->onStart()V

    return-void
.end method

.method public final perform(Lrx/functions/Action0;)Lrx/observers/AssertableSubscriber;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lrx/functions/Action0;->call()V

    return-object p0
.end method

.method public requestMore(J)Lrx/observers/AssertableSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1, p2}, Lrx/observers/case;->finally(J)V

    return-object p0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0, p1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/v3;->do:Lrx/observers/case;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
