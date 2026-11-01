.class public final Lrx/internal/operators/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/a1$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;",
        "Lrx/Observable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/a1;->do:Lrx/functions/Func2;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/a1;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)",
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/support/v4/ds1;->const()Lrx/if;

    move-result-object v0

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v4

    .line 2
    invoke-virtual {p1, v4}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 3
    new-instance v5, Landroid/support/v4/ww1;

    invoke-direct {v5}, Landroid/support/v4/ww1;-><init>()V

    .line 4
    invoke-virtual {p1, v5}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 5
    new-instance v6, Lrx/internal/producers/do;

    invoke-direct {v6}, Lrx/internal/producers/do;-><init>()V

    .line 6
    invoke-virtual {p1, v6}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    .line 7
    new-instance v0, Lrx/internal/operators/a1$do;

    iget-object v3, p0, Lrx/internal/operators/a1;->do:Lrx/functions/Func2;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/a1$do;-><init>(Landroid/support/v4/y22;Lrx/functions/Func2;Lrx/if$do;Landroid/support/v4/ww1;Lrx/internal/producers/do;)V

    return-object v0
.end method
