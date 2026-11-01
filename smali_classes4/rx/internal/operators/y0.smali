.class public final Lrx/internal/operators/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/y0;->do:Lrx/functions/Func1;

    return-void
.end method

.method public static for(Lrx/Observable;)Lrx/internal/operators/y0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;)",
            "Lrx/internal/operators/y0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/y0;

    new-instance v1, Lrx/internal/operators/y0$if;

    invoke-direct {v1, p0}, Lrx/internal/operators/y0$if;-><init>(Lrx/Observable;)V

    invoke-direct {v0, v1}, Lrx/internal/operators/y0;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static if(Lrx/Observable;)Lrx/internal/operators/y0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;)",
            "Lrx/internal/operators/y0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/y0;

    new-instance v1, Lrx/internal/operators/y0$for;

    invoke-direct {v1, p0}, Lrx/internal/operators/y0$for;-><init>(Lrx/Observable;)V

    invoke-direct {v0, v1}, Lrx/internal/operators/y0;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static new(Lrx/functions/Func1;)Lrx/internal/operators/y0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/internal/operators/y0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/y0;

    new-instance v1, Lrx/internal/operators/y0$do;

    invoke-direct {v1, p0}, Lrx/internal/operators/y0$do;-><init>(Lrx/functions/Func1;)V

    invoke-direct {v0, v1}, Lrx/internal/operators/y0;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/y0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)",
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/producers/do;

    invoke-direct {v0}, Lrx/internal/producers/do;-><init>()V

    .line 2
    new-instance v1, Landroid/support/v4/ww1;

    invoke-direct {v1}, Landroid/support/v4/ww1;-><init>()V

    .line 3
    new-instance v2, Lrx/internal/operators/y0$new;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/internal/operators/y0$new;-><init>(Lrx/internal/operators/y0;Landroid/support/v4/y22;Lrx/internal/producers/do;Landroid/support/v4/ww1;)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-object v2
.end method
