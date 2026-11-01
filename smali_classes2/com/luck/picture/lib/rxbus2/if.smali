.class public Lcom/luck/picture/lib/rxbus2/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/rxbus2/if$new;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic break(Lcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/rxbus2/if$new;->do([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    :cond_0
    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static case(JLcom/luck/picture/lib/rxbus2/if$new;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lcom/luck/picture/lib/rxbus2/if$new;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/op1;

    invoke-direct {v0, p2}, Landroid/support/v4/op1;-><init>(Lcom/luck/picture/lib/rxbus2/if$new;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {v0, p0, p1, v1}, Lio/reactivex/new;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/new;

    move-result-object p0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/do;->new()Lio/reactivex/try;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p0

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p0

    .line 5
    new-instance p1, Lcom/luck/picture/lib/rxbus2/if$for;

    invoke-direct {p1, p2}, Lcom/luck/picture/lib/rxbus2/if$for;-><init>(Lcom/luck/picture/lib/rxbus2/if$new;)V

    invoke-virtual {p0, p1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static varargs catch(JLcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lcom/luck/picture/lib/rxbus2/if$new;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/qp1;

    invoke-direct {v0, p2, p3}, Landroid/support/v4/qp1;-><init>(Lcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {p3, p0, p1, v0}, Lio/reactivex/new;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/new;

    move-result-object p0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/do;->try()Lio/reactivex/try;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p0

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p0

    .line 5
    new-instance p1, Lcom/luck/picture/lib/rxbus2/if$if;

    invoke-direct {p1, p2}, Lcom/luck/picture/lib/rxbus2/if$if;-><init>(Lcom/luck/picture/lib/rxbus2/if$new;)V

    invoke-virtual {p0, p1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static varargs class(Lcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/luck/picture/lib/rxbus2/if$new;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/luck/picture/lib/rxbus2/if;->catch(JLcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic do(Lcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/luck/picture/lib/rxbus2/if;->goto(Lcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static else(Lcom/luck/picture/lib/rxbus2/if$new;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/luck/picture/lib/rxbus2/if$new;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1, p0}, Lcom/luck/picture/lib/rxbus2/if;->case(JLcom/luck/picture/lib/rxbus2/if$new;)V

    return-void
.end method

.method public static synthetic for(Lcom/luck/picture/lib/rxbus2/if$new;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/luck/picture/lib/rxbus2/if;->this(Lcom/luck/picture/lib/rxbus2/if$new;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private static synthetic goto(Lcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/rxbus2/if$new;->do([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    :cond_0
    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static synthetic if(Lcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/luck/picture/lib/rxbus2/if;->break(Lcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static varargs new(JLcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;)Landroid/support/v4/n10;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lcom/luck/picture/lib/rxbus2/if$new;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/support/v4/n10;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/pp1;

    invoke-direct {v0, p2, p3}, Landroid/support/v4/pp1;-><init>(Lcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {p3, p0, p1, v0}, Lio/reactivex/new;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/new;

    move-result-object p0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p0

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p0

    .line 5
    new-instance p1, Lcom/luck/picture/lib/rxbus2/if$do;

    invoke-direct {p1, p2}, Lcom/luck/picture/lib/rxbus2/if$do;-><init>(Lcom/luck/picture/lib/rxbus2/if$new;)V

    .line 6
    invoke-virtual {p0, p1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-object p1
.end method

.method private static synthetic this(Lcom/luck/picture/lib/rxbus2/if$new;Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/rxbus2/if$new;->do([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    :cond_0
    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static varargs try(Lcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;)Landroid/support/v4/n10;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/luck/picture/lib/rxbus2/if$new;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/support/v4/n10;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/luck/picture/lib/rxbus2/if;->new(JLcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;)Landroid/support/v4/n10;

    move-result-object p0

    return-object p0
.end method
