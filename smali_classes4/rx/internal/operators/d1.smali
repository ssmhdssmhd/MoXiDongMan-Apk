.class public final Lrx/internal/operators/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/d1$new;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TR;TT;>;"
    }
.end annotation


# static fields
.field private static final for:Ljava/lang/Object;


# instance fields
.field private final do:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/d1;->for:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lrx/functions/Func2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/functions/Func2<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/d1$do;

    invoke-direct {v0, p1}, Lrx/internal/operators/d1$do;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lrx/internal/operators/d1;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;)V

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0<",
            "TR;>;",
            "Lrx/functions/Func2<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lrx/internal/operators/d1;->do:Lrx/functions/Func0;

    .line 4
    iput-object p2, p0, Lrx/internal/operators/d1;->if:Lrx/functions/Func2;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 5
    sget-object v0, Lrx/internal/operators/d1;->for:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lrx/internal/operators/d1;-><init>(Ljava/lang/Object;Lrx/functions/Func2;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/d1;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

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
            "-TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d1;->do:Lrx/functions/Func0;

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lrx/internal/operators/d1;->for:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lrx/internal/operators/d1$if;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/d1$if;-><init>(Lrx/internal/operators/d1;Landroid/support/v4/y22;Landroid/support/v4/y22;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Lrx/internal/operators/d1$new;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/d1$new;-><init>(Ljava/lang/Object;Landroid/support/v4/y22;)V

    .line 5
    new-instance v2, Lrx/internal/operators/d1$for;

    invoke-direct {v2, p0, v0, v1}, Lrx/internal/operators/d1$for;-><init>(Lrx/internal/operators/d1;Ljava/lang/Object;Lrx/internal/operators/d1$new;)V

    .line 6
    invoke-virtual {p1, v2}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-object v2
.end method
