.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$if;
.super Landroid/support/v4/oq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
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
        "Landroid/support/v4/oq<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final for:Lio/reactivex/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final if:Landroid/support/v4/oq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/oq<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/oq;Lio/reactivex/for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/oq<",
            "TT;>;",
            "Lio/reactivex/for<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/oq;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$if;->if:Landroid/support/v4/oq;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$if;->for:Lio/reactivex/for;

    return-void
.end method


# virtual methods
.method public P7(Lio/reactivex/functions/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$if;->if:Landroid/support/v4/oq;

    invoke-virtual {v0, p1}, Landroid/support/v4/oq;->P7(Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$if;->for:Lio/reactivex/for;

    invoke-virtual {v0, p1}, Lio/reactivex/for;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
