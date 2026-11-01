.class final Lrx/subjects/try;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/try$for;,
        Lrx/subjects/try$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lrx/subjects/try$if<",
        "TT;>;>;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x53c184d753c8b010L


# instance fields
.field public active:Z

.field public volatile latest:Ljava/lang/Object;

.field public onAdded:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Lrx/subjects/try$for<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public onStart:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Lrx/subjects/try$for<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public onTerminated:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Lrx/subjects/try$for<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lrx/subjects/try$if;->try:Lrx/subjects/try$if;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/subjects/try;->active:Z

    .line 3
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/try;->onStart:Lrx/functions/Action1;

    .line 4
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/try;->onAdded:Lrx/functions/Action1;

    .line 5
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/try;->onTerminated:Lrx/functions/Action1;

    return-void
.end method


# virtual methods
.method public add(Lrx/subjects/try$for;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/try$for<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/try$if;

    .line 2
    iget-boolean v1, v0, Lrx/subjects/try$if;->do:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Lrx/subjects/try;->onTerminated:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-virtual {v0, p1}, Lrx/subjects/try$if;->do(Lrx/subjects/try$for;)Lrx/subjects/try$if;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lrx/subjects/try;->onAdded:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addUnsubscriber(Landroid/support/v4/y22;Lrx/subjects/try$for;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;",
            "Lrx/subjects/try$for<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/try$do;

    invoke-direct {v0, p0, p2}, Lrx/subjects/try$do;-><init>(Lrx/subjects/try;Lrx/subjects/try$for;)V

    invoke-static {v0}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    return-void
.end method

.method public call(Landroid/support/v4/y22;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lrx/subjects/try$for;

    invoke-direct {v0, p1}, Lrx/subjects/try$for;-><init>(Landroid/support/v4/y22;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lrx/subjects/try;->addUnsubscriber(Landroid/support/v4/y22;Lrx/subjects/try$for;)V

    .line 4
    iget-object v1, p0, Lrx/subjects/try;->onStart:Lrx/functions/Action1;

    invoke-interface {v1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lrx/subjects/try;->add(Lrx/subjects/try$for;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lrx/subjects/try;->remove(Lrx/subjects/try$for;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/subjects/try;->call(Landroid/support/v4/y22;)V

    return-void
.end method

.method public getLatest()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/try;->latest:Ljava/lang/Object;

    return-object v0
.end method

.method public next(Ljava/lang/Object;)[Lrx/subjects/try$for;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/subjects/try$for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lrx/subjects/try;->setLatest(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/subjects/try$if;

    iget-object p1, p1, Lrx/subjects/try$if;->if:[Lrx/subjects/try$for;

    return-object p1
.end method

.method public observers()[Lrx/subjects/try$for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/subjects/try$for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/try$if;

    iget-object v0, v0, Lrx/subjects/try$if;->if:[Lrx/subjects/try$for;

    return-object v0
.end method

.method public remove(Lrx/subjects/try$for;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/try$for<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/try$if;

    .line 2
    iget-boolean v1, v0, Lrx/subjects/try$if;->do:Z

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0, p1}, Lrx/subjects/try$if;->if(Lrx/subjects/try$for;)Lrx/subjects/try$if;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method public setLatest(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/subjects/try;->latest:Ljava/lang/Object;

    return-void
.end method

.method public terminate(Ljava/lang/Object;)[Lrx/subjects/try$for;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/subjects/try$for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lrx/subjects/try;->setLatest(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lrx/subjects/try;->active:Z

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/subjects/try$if;

    .line 4
    iget-boolean p1, p1, Lrx/subjects/try$if;->do:Z

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lrx/subjects/try$if;->for:[Lrx/subjects/try$for;

    return-object p1

    .line 6
    :cond_0
    sget-object p1, Lrx/subjects/try$if;->new:Lrx/subjects/try$if;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/subjects/try$if;

    iget-object p1, p1, Lrx/subjects/try$if;->if:[Lrx/subjects/try$for;

    return-object p1
.end method
