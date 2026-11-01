.class public abstract Lrx/observables/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation build Landroid/support/v4/n8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observables/do$break;,
        Lrx/observables/do$this;,
        Lrx/observables/do$goto;
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

.method public static case(Lrx/functions/Action2;)Lrx/observables/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2<",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer<",
            "Lrx/Observable<",
            "+TT;>;>;>;)",
            "Lrx/observables/do<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/do$for;

    invoke-direct {v0, p0}, Lrx/observables/do$for;-><init>(Lrx/functions/Action2;)V

    .line 2
    new-instance p0, Lrx/observables/do$goto;

    invoke-direct {p0, v0}, Lrx/observables/do$goto;-><init>(Lrx/functions/Func3;)V

    return-object p0
.end method

.method public static else(Lrx/functions/Action2;Lrx/functions/Action0;)Lrx/observables/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2<",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer<",
            "Lrx/Observable<",
            "+TT;>;>;>;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/observables/do<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/do$new;

    invoke-direct {v0, p0}, Lrx/observables/do$new;-><init>(Lrx/functions/Action2;)V

    .line 2
    new-instance p0, Lrx/observables/do$try;

    invoke-direct {p0, p1}, Lrx/observables/do$try;-><init>(Lrx/functions/Action0;)V

    .line 3
    new-instance p1, Lrx/observables/do$goto;

    invoke-direct {p1, v0, p0}, Lrx/observables/do$goto;-><init>(Lrx/functions/Func3;Lrx/functions/Action1;)V

    return-object p1
.end method

.method public static for(Lrx/functions/Func0;Lrx/functions/Action3;Lrx/functions/Action1;)Lrx/observables/do;
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
            "Lrx/functions/Action3<",
            "-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer<",
            "Lrx/Observable<",
            "+TT;>;>;>;",
            "Lrx/functions/Action1<",
            "-TS;>;)",
            "Lrx/observables/do<",
            "TS;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/do$if;

    invoke-direct {v0, p1}, Lrx/observables/do$if;-><init>(Lrx/functions/Action3;)V

    .line 2
    new-instance p1, Lrx/observables/do$goto;

    invoke-direct {p1, p0, v0, p2}, Lrx/observables/do$goto;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;Lrx/functions/Action1;)V

    return-object p1
.end method

.method public static if(Lrx/functions/Func0;Lrx/functions/Action3;)Lrx/observables/do;
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
            "Lrx/functions/Action3<",
            "-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer<",
            "Lrx/Observable<",
            "+TT;>;>;>;)",
            "Lrx/observables/do<",
            "TS;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/do$do;

    invoke-direct {v0, p1}, Lrx/observables/do$do;-><init>(Lrx/functions/Action3;)V

    .line 2
    new-instance p1, Lrx/observables/do$goto;

    invoke-direct {p1, p0, v0}, Lrx/observables/do$goto;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;)V

    return-object p1
.end method

.method public static new(Lrx/functions/Func0;Lrx/functions/Func3;)Lrx/observables/do;
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
            "Lrx/functions/Func3<",
            "-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer<",
            "Lrx/Observable<",
            "+TT;>;>;+TS;>;)",
            "Lrx/observables/do<",
            "TS;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/do$goto;

    invoke-direct {v0, p0, p1}, Lrx/observables/do$goto;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;)V

    return-object v0
.end method

.method public static try(Lrx/functions/Func0;Lrx/functions/Func3;Lrx/functions/Action1;)Lrx/observables/do;
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
            "Lrx/functions/Func3<",
            "-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer<",
            "Lrx/Observable<",
            "+TT;>;>;+TS;>;",
            "Lrx/functions/Action1<",
            "-TS;>;)",
            "Lrx/observables/do<",
            "TS;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/do$goto;

    invoke-direct {v0, p0, p1, p2}, Lrx/observables/do$goto;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;Lrx/functions/Action1;)V

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

    invoke-virtual {p0, p1}, Lrx/observables/do;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public final do(Landroid/support/v4/y22;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lrx/observables/do;->goto()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-static {}, Lrx/observables/do$break;->e6()Lrx/observables/do$break;

    move-result-object v1

    .line 3
    new-instance v2, Lrx/observables/do$this;

    invoke-direct {v2, p0, v0, v1}, Lrx/observables/do$this;-><init>(Lrx/observables/do;Ljava/lang/Object;Lrx/observables/do$break;)V

    .line 4
    new-instance v0, Lrx/observables/do$case;

    invoke-direct {v0, p0, p1, v2}, Lrx/observables/do$case;-><init>(Lrx/observables/do;Landroid/support/v4/y22;Lrx/observables/do$this;)V

    .line 5
    invoke-virtual {v1}, Lrx/Observable;->v2()Lrx/Observable;

    move-result-object v1

    new-instance v3, Lrx/observables/do$else;

    invoke-direct {v3, p0}, Lrx/observables/do$else;-><init>(Lrx/observables/do;)V

    invoke-virtual {v1, v3}, Lrx/Observable;->I(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 6
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 7
    invoke-virtual {p1, v2}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 8
    invoke-virtual {p1, v2}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-void

    :catchall_0
    move-exception v0

    .line 9
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

.method public abstract this(Ljava/lang/Object;JLrx/Observer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J",
            "Lrx/Observer<",
            "Lrx/Observable<",
            "+TT;>;>;)TS;"
        }
    .end annotation
.end method
