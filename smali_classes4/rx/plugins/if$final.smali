.class final Lrx/plugins/if$final;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/if;->throws()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2<",
        "Lrx/Single;",
        "Lrx/Single$OnSubscribe;",
        "Lrx/Single$OnSubscribe;",
        ">;"
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
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrx/Single;

    check-cast p2, Lrx/Single$OnSubscribe;

    invoke-virtual {p0, p1, p2}, Lrx/plugins/if$final;->do(Lrx/Single;Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object p1

    return-object p1
.end method

.method public do(Lrx/Single;Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;
    .locals 3

    .line 1
    invoke-static {}, Lrx/plugins/new;->for()Lrx/plugins/new;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/new;->else()Landroid/support/v4/lp1;

    move-result-object v0

    .line 2
    invoke-static {}, Lrx/plugins/try;->case()Landroid/support/v4/lp1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object p2

    .line 3
    :cond_0
    new-instance v1, Lrx/internal/operators/q2;

    new-instance v2, Lrx/internal/operators/d3;

    invoke-direct {v2, p2}, Lrx/internal/operators/d3;-><init>(Lrx/Single$OnSubscribe;)V

    invoke-virtual {v0, p1, v2}, Landroid/support/v4/lp1;->try(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object p1

    invoke-direct {v1, p1}, Lrx/internal/operators/q2;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v1
.end method
