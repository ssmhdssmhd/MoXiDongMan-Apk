.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay$try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field private final do:Landroid/support/v4/c32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/c32<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic if:Lio/reactivex/internal/operators/flowable/FlowableReplay$try;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableReplay$try;Landroid/support/v4/c32;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/c32<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$try$do;->if:Lio/reactivex/internal/operators/flowable/FlowableReplay$try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$try$do;->do:Landroid/support/v4/c32;

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$try$do;->do(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public do(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$try$do;->do:Landroid/support/v4/c32;

    invoke-virtual {v0, p1}, Landroid/support/v4/c32;->setResource(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
