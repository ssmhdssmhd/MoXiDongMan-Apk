.class final Lrx/internal/operators/g$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/Observable<",
        "+",
        "Lrx/do<",
        "*>;>;",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/g$do;->do(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public do(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+",
            "Lrx/do<",
            "*>;>;)",
            "Lrx/Observable<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/g$do$do;

    invoke-direct {v0, p0}, Lrx/internal/operators/g$do$do;-><init>(Lrx/internal/operators/g$do;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->K1(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
