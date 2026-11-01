.class public final Lcom/uber/autodispose/lifecycle/do;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final do:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ct0;->do:Landroid/support/v4/ct0;

    sput-object v0, Lcom/uber/autodispose/lifecycle/do;->do:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/InstantiationError;

    invoke-direct {v0}, Ljava/lang/InstantiationError;-><init>()V

    throw v0
.end method

.method public static case(Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;Z)Lio/reactivex/CompletableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider<",
            "TE;>;Z)",
            "Lio/reactivex/CompletableSource;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/g91;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;->peekLifecycle()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;->correspondingEvents()Lcom/uber/autodispose/lifecycle/CorrespondingEventsFunction;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    invoke-interface {v1, v0}, Lcom/uber/autodispose/lifecycle/CorrespondingEventsFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-interface {p0}, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;->lifecycle()Lio/reactivex/new;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/uber/autodispose/lifecycle/do;->else(Lio/reactivex/new;Ljava/lang/Object;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_1

    .line 5
    instance-of p1, p0, Landroid/support/v4/xs0;

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Landroid/support/v4/i5;->for()Lio/reactivex/functions/Consumer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    :try_start_1
    check-cast p0, Landroid/support/v4/xs0;

    invoke-interface {p1, p0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Landroid/support/v4/np;->super()Landroid/support/v4/np;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 9
    invoke-static {p0}, Landroid/support/v4/np;->instanceof(Ljava/lang/Throwable;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    throw p0

    .line 11
    :cond_1
    invoke-static {p0}, Landroid/support/v4/np;->instanceof(Ljava/lang/Throwable;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0

    .line 12
    :cond_2
    new-instance p0, Landroid/support/v4/ys0;

    invoke-direct {p0}, Landroid/support/v4/ys0;-><init>()V

    throw p0
.end method

.method public static synthetic do(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uber/autodispose/lifecycle/do;->for(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static else(Lio/reactivex/new;Ljava/lang/Object;)Lio/reactivex/CompletableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/new<",
            "TE;>;TE;)",
            "Lio/reactivex/CompletableSource;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/uber/autodispose/lifecycle/do;->do:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/uber/autodispose/lifecycle/do;->goto(Lio/reactivex/new;Ljava/lang/Object;Ljava/util/Comparator;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic for(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static goto(Lio/reactivex/new;Ljava/lang/Object;Ljava/util/Comparator;)Lio/reactivex/CompletableSource;
    .locals 1
    .param p2    # Ljava/util/Comparator;
        .annotation build Landroid/support/v4/a51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/new<",
            "TE;>;TE;",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Lio/reactivex/CompletableSource;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Landroid/support/v4/bt0;

    invoke-direct {v0, p2, p1}, Landroid/support/v4/bt0;-><init>(Ljava/util/Comparator;Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/at0;

    invoke-direct {v0, p1}, Landroid/support/v4/at0;-><init>(Ljava/lang/Object;)V

    :goto_0
    const-wide/16 p1, 0x1

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/reactivex/new;->skip(J)Lio/reactivex/new;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/reactivex/new;->takeUntil(Lio/reactivex/functions/Predicate;)Lio/reactivex/new;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/new;->ignoreElements()Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/uber/autodispose/lifecycle/do;->new(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic new(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static try(Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;)Lio/reactivex/CompletableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider<",
            "TE;>;)",
            "Lio/reactivex/CompletableSource;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/g91;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/uber/autodispose/lifecycle/do;->case(Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;Z)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method
