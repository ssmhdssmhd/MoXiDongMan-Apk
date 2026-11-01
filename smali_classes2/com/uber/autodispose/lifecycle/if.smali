.class public final Lcom/uber/autodispose/lifecycle/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uber/autodispose/lifecycle/if$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider<",
        "Lcom/uber/autodispose/lifecycle/if$if;",
        ">;"
    }
.end annotation


# instance fields
.field private final do:Lio/reactivex/subjects/if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/if<",
            "Lcom/uber/autodispose/lifecycle/if$if;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/uber/autodispose/lifecycle/if$if;)V
    .locals 0
    .param p1    # Lcom/uber/autodispose/lifecycle/if$if;
        .annotation build Landroid/support/v4/a51;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/subjects/if;->else()Lio/reactivex/subjects/if;

    move-result-object p1

    iput-object p1, p0, Lcom/uber/autodispose/lifecycle/if;->do:Lio/reactivex/subjects/if;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lio/reactivex/subjects/if;->goto(Ljava/lang/Object;)Lio/reactivex/subjects/if;

    move-result-object p1

    iput-object p1, p0, Lcom/uber/autodispose/lifecycle/if;->do:Lio/reactivex/subjects/if;

    :goto_0
    return-void
.end method

.method public static synthetic do(Lcom/uber/autodispose/lifecycle/if$if;)Lcom/uber/autodispose/lifecycle/if$if;
    .locals 0

    invoke-static {p0}, Lcom/uber/autodispose/lifecycle/if;->new(Lcom/uber/autodispose/lifecycle/if$if;)Lcom/uber/autodispose/lifecycle/if$if;

    move-result-object p0

    return-object p0
.end method

.method public static for(Lcom/uber/autodispose/lifecycle/if$if;)Lcom/uber/autodispose/lifecycle/if;
    .locals 1

    .line 1
    new-instance v0, Lcom/uber/autodispose/lifecycle/if;

    invoke-direct {v0, p0}, Lcom/uber/autodispose/lifecycle/if;-><init>(Lcom/uber/autodispose/lifecycle/if$if;)V

    return-object v0
.end method

.method public static if()Lcom/uber/autodispose/lifecycle/if;
    .locals 2

    .line 1
    new-instance v0, Lcom/uber/autodispose/lifecycle/if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uber/autodispose/lifecycle/if;-><init>(Lcom/uber/autodispose/lifecycle/if$if;)V

    return-object v0
.end method

.method private static synthetic new(Lcom/uber/autodispose/lifecycle/if$if;)Lcom/uber/autodispose/lifecycle/if$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/g91;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/uber/autodispose/lifecycle/if$do;->do:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown lifecycle event."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_0
    new-instance p0, Landroid/support/v4/xs0;

    invoke-direct {p0}, Landroid/support/v4/xs0;-><init>()V

    throw p0

    .line 4
    :cond_1
    sget-object p0, Lcom/uber/autodispose/lifecycle/if$if;->STOPPED:Lcom/uber/autodispose/lifecycle/if$if;

    return-object p0
.end method


# virtual methods
.method public case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/lifecycle/if;->do:Lio/reactivex/subjects/if;

    sget-object v1, Lcom/uber/autodispose/lifecycle/if$if;->STARTED:Lcom/uber/autodispose/lifecycle/if$if;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/if;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public correspondingEvents()Lcom/uber/autodispose/lifecycle/CorrespondingEventsFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uber/autodispose/lifecycle/CorrespondingEventsFunction<",
            "Lcom/uber/autodispose/lifecycle/if$if;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/v52;->do:Landroid/support/v4/v52;

    return-object v0
.end method

.method public else()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/lifecycle/if;->do:Lio/reactivex/subjects/if;

    invoke-virtual {v0}, Lio/reactivex/subjects/if;->this()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/uber/autodispose/lifecycle/if$if;->STARTED:Lcom/uber/autodispose/lifecycle/if$if;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/uber/autodispose/lifecycle/if;->do:Lio/reactivex/subjects/if;

    sget-object v1, Lcom/uber/autodispose/lifecycle/if$if;->STOPPED:Lcom/uber/autodispose/lifecycle/if$if;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/if;->onNext(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to stop lifecycle before starting it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lifecycle()Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/new<",
            "Lcom/uber/autodispose/lifecycle/if$if;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/lifecycle/if;->do:Lio/reactivex/subjects/if;

    invoke-virtual {v0}, Lio/reactivex/new;->hide()Lio/reactivex/new;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic peekLifecycle()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/uber/autodispose/lifecycle/if;->try()Lcom/uber/autodispose/lifecycle/if$if;

    move-result-object v0

    return-object v0
.end method

.method public requestScope()Lio/reactivex/CompletableSource;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/uber/autodispose/lifecycle/do;->try(Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;)Lio/reactivex/CompletableSource;

    move-result-object v0

    return-object v0
.end method

.method public try()Lcom/uber/autodispose/lifecycle/if$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/lifecycle/if;->do:Lio/reactivex/subjects/if;

    invoke-virtual {v0}, Lio/reactivex/subjects/if;->this()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/lifecycle/if$if;

    return-object v0
.end method
