.class final Lrx/internal/operators/case$if;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x271aaa367272024eL


# instance fields
.field public final state:Lrx/internal/operators/case$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/case$do<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/case$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/case$do<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/case$if;->state:Lrx/internal/operators/case$do;

    return-void
.end method


# virtual methods
.method public call(Landroid/support/v4/y22;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lrx/internal/operators/case$for;

    iget-object v1, p0, Lrx/internal/operators/case$if;->state:Lrx/internal/operators/case$do;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/case$for;-><init>(Landroid/support/v4/y22;Lrx/internal/operators/case$do;)V

    .line 3
    iget-object v1, p0, Lrx/internal/operators/case$if;->state:Lrx/internal/operators/case$do;

    invoke-virtual {v1, v0}, Lrx/internal/operators/case$do;->goto(Lrx/internal/operators/case$for;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lrx/internal/operators/case$if;->state:Lrx/internal/operators/case$do;

    invoke-virtual {p1}, Lrx/internal/operators/case$do;->this()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/case$if;->call(Landroid/support/v4/y22;)V

    return-void
.end method
