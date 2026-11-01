.class public abstract Lrx/observables/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observables/try$case;,
        Lrx/observables/try$else;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Lrx/functions/Action1;)Lrx/observables/try;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "-",
            "Lrx/Observer<",
            "-TT;>;>;)",
            "Lrx/observables/try<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/try$for;

    invoke-direct {v0, p0}, Lrx/observables/try$for;-><init>(Lrx/functions/Action1;)V

    .line 2
    new-instance p0, Lrx/observables/try$else;

    invoke-direct {p0, v0}, Lrx/observables/try$else;-><init>(Lrx/functions/Func2;)V

    return-object p0
.end method

.method public static else(Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/observables/try;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "-",
            "Lrx/Observer<",
            "-TT;>;>;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/observables/try<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/try$new;

    invoke-direct {v0, p0}, Lrx/observables/try$new;-><init>(Lrx/functions/Action1;)V

    .line 2
    new-instance p0, Lrx/observables/try$try;

    invoke-direct {p0, p1}, Lrx/observables/try$try;-><init>(Lrx/functions/Action0;)V

    .line 3
    new-instance p1, Lrx/observables/try$else;

    invoke-direct {p1, v0, p0}, Lrx/observables/try$else;-><init>(Lrx/functions/Func2;Lrx/functions/Action1;)V

    return-object p1
.end method

.method public static for(Lrx/functions/Func0;Lrx/functions/Action2;Lrx/functions/Action1;)Lrx/observables/try;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0<",
            "+TS;>;",
            "Lrx/functions/Action2<",
            "-TS;-",
            "Lrx/Observer<",
            "-TT;>;>;",
            "Lrx/functions/Action1<",
            "-TS;>;)",
            "Lrx/observables/try<",
            "TS;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/try$if;

    invoke-direct {v0, p1}, Lrx/observables/try$if;-><init>(Lrx/functions/Action2;)V

    .line 2
    new-instance p1, Lrx/observables/try$else;

    invoke-direct {p1, p0, v0, p2}, Lrx/observables/try$else;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)V

    return-object p1
.end method

.method public static if(Lrx/functions/Func0;Lrx/functions/Action2;)Lrx/observables/try;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0<",
            "+TS;>;",
            "Lrx/functions/Action2<",
            "-TS;-",
            "Lrx/Observer<",
            "-TT;>;>;)",
            "Lrx/observables/try<",
            "TS;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/try$do;

    invoke-direct {v0, p1}, Lrx/observables/try$do;-><init>(Lrx/functions/Action2;)V

    .line 2
    new-instance p1, Lrx/observables/try$else;

    invoke-direct {p1, p0, v0}, Lrx/observables/try$else;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;)V

    return-object p1
.end method

.method public static new(Lrx/functions/Func0;Lrx/functions/Func2;)Lrx/observables/try;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0<",
            "+TS;>;",
            "Lrx/functions/Func2<",
            "-TS;-",
            "Lrx/Observer<",
            "-TT;>;+TS;>;)",
            "Lrx/observables/try<",
            "TS;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/try$else;

    invoke-direct {v0, p0, p1}, Lrx/observables/try$else;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;)V

    return-object v0
.end method

.method public static try(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)Lrx/observables/try;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0<",
            "+TS;>;",
            "Lrx/functions/Func2<",
            "-TS;-",
            "Lrx/Observer<",
            "-TT;>;+TS;>;",
            "Lrx/functions/Action1<",
            "-TS;>;)",
            "Lrx/observables/try<",
            "TS;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/try$else;

    invoke-direct {v0, p0, p1, p2}, Lrx/observables/try$else;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)V

    return-object v0
.end method


# virtual methods
.method public break(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/observables/try;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public final do(Landroid/support/v4/y22;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lrx/observables/try;->goto()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v1, Lrx/observables/try$case;

    invoke-direct {v1, p1, p0, v0}, Lrx/observables/try$case;-><init>(Landroid/support/v4/y22;Lrx/observables/try;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 6
    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract goto()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract this(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lrx/Observer<",
            "-TT;>;)TS;"
        }
    .end annotation
.end method
