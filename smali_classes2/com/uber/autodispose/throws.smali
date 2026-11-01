.class public final Lcom/uber/autodispose/throws;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lcom/uber/autodispose/ScopeProvider;)Lio/reactivex/CompletableSource;
    .locals 0

    invoke-static {p0}, Lcom/uber/autodispose/throws;->for(Lcom/uber/autodispose/ScopeProvider;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic for(Lcom/uber/autodispose/ScopeProvider;)Lio/reactivex/CompletableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/uber/autodispose/ScopeProvider;->requestScope()Lio/reactivex/CompletableSource;

    move-result-object p0
    :try_end_0
    .catch Landroid/support/v4/g91; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {}, Landroid/support/v4/i5;->for()Lio/reactivex/functions/Consumer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Landroid/support/v4/np;->super()Landroid/support/v4/np;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Landroid/support/v4/np;->instanceof(Ljava/lang/Throwable;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static if(Lcom/uber/autodispose/ScopeProvider;)Landroid/support/v4/np;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/hs1;

    invoke-direct {v0, p0}, Landroid/support/v4/hs1;-><init>(Lcom/uber/autodispose/ScopeProvider;)V

    invoke-static {v0}, Landroid/support/v4/np;->switch(Ljava/util/concurrent/Callable;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method
