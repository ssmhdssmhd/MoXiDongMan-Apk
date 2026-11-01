.class final Lrx/internal/operators/z0$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/z0;->l6(Lrx/Observable;Lrx/functions/Func1;Z)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Lrx/Observable;

.field public final synthetic if:Lrx/functions/Func1;


# direct methods
.method public constructor <init>(ZLrx/functions/Func1;Lrx/Observable;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lrx/internal/operators/z0$if;->do:Z

    iput-object p2, p0, Lrx/internal/operators/z0$if;->if:Lrx/functions/Func1;

    iput-object p3, p0, Lrx/internal/operators/z0$if;->for:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/z0$if;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/e;

    sget v1, Lrx/internal/util/try;->new:I

    iget-boolean v2, p0, Lrx/internal/operators/z0$if;->do:Z

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/e;-><init>(IZ)V

    .line 2
    new-instance v1, Lrx/internal/operators/z0$if$do;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/z0$if$do;-><init>(Lrx/internal/operators/z0$if;Landroid/support/v4/y22;Lrx/internal/operators/e;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 5
    iget-object p1, p0, Lrx/internal/operators/z0$if;->if:Lrx/functions/Func1;

    invoke-static {v0}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v2

    invoke-interface {p1, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Observable;

    invoke-virtual {p1, v1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 6
    iget-object p1, p0, Lrx/internal/operators/z0$if;->for:Lrx/Observable;

    invoke-virtual {v0}, Lrx/internal/operators/e;->subscriber()Landroid/support/v4/y22;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-void
.end method
