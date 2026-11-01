.class public final Lrx/observers/new;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static case(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/y22<",
            "-TT;>;)",
            "Landroid/support/v4/y22<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observers/new$try;

    invoke-direct {v0, p0, p0}, Lrx/observers/new$try;-><init>(Landroid/support/v4/y22;Landroid/support/v4/y22;)V

    return-object v0
.end method

.method public static do(Lrx/functions/Action1;)Landroid/support/v4/y22;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "-TT;>;)",
            "Landroid/support/v4/y22<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lrx/observers/new$if;

    invoke-direct {v0, p0}, Lrx/observers/new$if;-><init>(Lrx/functions/Action1;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "onNext can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static for(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Landroid/support/v4/y22;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "-TT;>;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")",
            "Landroid/support/v4/y22<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lrx/observers/new$new;

    invoke-direct {v0, p2, p1, p0}, Lrx/observers/new$new;-><init>(Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "onComplete can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "onError can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "onNext can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static if(Lrx/functions/Action1;Lrx/functions/Action1;)Landroid/support/v4/y22;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "-TT;>;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/support/v4/y22<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lrx/observers/new$for;

    invoke-direct {v0, p1, p0}, Lrx/observers/new$for;-><init>(Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "onError can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "onNext can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static new()Landroid/support/v4/y22;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/support/v4/y22<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrx/observers/if;->new()Lrx/Observer;

    move-result-object v0

    invoke-static {v0}, Lrx/observers/new;->try(Lrx/Observer;)Landroid/support/v4/y22;

    move-result-object v0

    return-object v0
.end method

.method public static try(Lrx/Observer;)Landroid/support/v4/y22;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observer<",
            "-TT;>;)",
            "Landroid/support/v4/y22<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observers/new$do;

    invoke-direct {v0, p0}, Lrx/observers/new$do;-><init>(Lrx/Observer;)V

    return-object v0
.end method
