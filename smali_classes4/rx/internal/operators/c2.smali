.class public Lrx/internal/operators/c2;
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
.field public final do:Lrx/if;


# direct methods
.method public constructor <init>(Lrx/if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/c2;->do:Lrx/if;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/c2;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 2
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
    new-instance v0, Lrx/internal/operators/c2$do;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/c2$do;-><init>(Lrx/internal/operators/c2;Landroid/support/v4/y22;)V

    .line 2
    new-instance v1, Lrx/internal/operators/c2$if;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/c2$if;-><init>(Lrx/internal/operators/c2;Landroid/support/v4/y22;)V

    invoke-static {v1}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    return-object v0
.end method
