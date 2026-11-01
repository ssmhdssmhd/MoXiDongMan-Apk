.class Lrx/internal/operators/g$else$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/g$else;->do(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2<",
        "Lrx/do<",
        "Ljava/lang/Integer;",
        ">;",
        "Lrx/do<",
        "*>;",
        "Lrx/do<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/g$else;


# direct methods
.method public constructor <init>(Lrx/internal/operators/g$else;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/g$else$do;->do:Lrx/internal/operators/g$else;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrx/do;

    check-cast p2, Lrx/do;

    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/g$else$do;->do(Lrx/do;Lrx/do;)Lrx/do;

    move-result-object p1

    return-object p1
.end method

.method public do(Lrx/do;Lrx/do;)Lrx/do;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/do<",
            "Ljava/lang/Integer;",
            ">;",
            "Lrx/do<",
            "*>;)",
            "Lrx/do<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lrx/do;->goto()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lrx/internal/operators/g$else$do;->do:Lrx/internal/operators/g$else;

    iget-object v0, v0, Lrx/internal/operators/g$else;->do:Lrx/functions/Func2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lrx/do;->else()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lrx/do;->try(Ljava/lang/Object;)Lrx/do;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method
