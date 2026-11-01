.class public final Lcom/uber/autodispose/new;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static do(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uber/autodispose/ScopeProvider;",
            ")",
            "Lcom/uber/autodispose/AutoDisposeConverter<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "provider == null"

    .line 1
    invoke-static {p0, v0}, Lcom/uber/autodispose/const;->do(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/uber/autodispose/throws;->if(Lcom/uber/autodispose/ScopeProvider;)Landroid/support/v4/np;

    move-result-object p0

    invoke-static {p0}, Lcom/uber/autodispose/new;->if(Lio/reactivex/CompletableSource;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object p0

    return-object p0
.end method

.method public static if(Lio/reactivex/CompletableSource;)Lcom/uber/autodispose/AutoDisposeConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/CompletableSource;",
            ")",
            "Lcom/uber/autodispose/AutoDisposeConverter<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scope == null"

    .line 1
    invoke-static {p0, v0}, Lcom/uber/autodispose/const;->do(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/uber/autodispose/new$do;

    invoke-direct {v0, p0}, Lcom/uber/autodispose/new$do;-><init>(Lio/reactivex/CompletableSource;)V

    return-object v0
.end method
