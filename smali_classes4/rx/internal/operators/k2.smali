.class public final Lrx/internal/operators/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/k2$do;,
        Lrx/internal/operators/k2$if;,
        Lrx/internal/operators/k2$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TR;[",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lrx/functions/if;->else(Lrx/functions/Func2;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/k2;->do:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func3;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lrx/functions/if;->goto(Lrx/functions/Func3;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/k2;->do:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func4;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p1}, Lrx/functions/if;->this(Lrx/functions/Func4;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/k2;->do:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func5;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p1}, Lrx/functions/if;->break(Lrx/functions/Func5;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/k2;->do:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func6;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lrx/functions/if;->catch(Lrx/functions/Func6;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/k2;->do:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func7;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lrx/functions/if;->class(Lrx/functions/Func7;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/k2;->do:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func8;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lrx/functions/if;->const(Lrx/functions/Func8;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/k2;->do:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func9;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lrx/functions/if;->final(Lrx/functions/Func9;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/k2;->do:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/FuncN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/k2;->do:Lrx/functions/FuncN;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/k2;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)",
            "Landroid/support/v4/y22<",
            "-[",
            "Lrx/Observable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/k2$do;

    iget-object v1, p0, Lrx/internal/operators/k2;->do:Lrx/functions/FuncN;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/k2$do;-><init>(Landroid/support/v4/y22;Lrx/functions/FuncN;)V

    .line 2
    new-instance v1, Lrx/internal/operators/k2$if;

    invoke-direct {v1, v0}, Lrx/internal/operators/k2$if;-><init>(Lrx/internal/operators/k2$do;)V

    .line 3
    new-instance v2, Lrx/internal/operators/k2$for;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/internal/operators/k2$for;-><init>(Lrx/internal/operators/k2;Landroid/support/v4/y22;Lrx/internal/operators/k2$do;Lrx/internal/operators/k2$if;)V

    .line 4
    invoke-virtual {p1, v2}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-object v2
.end method
