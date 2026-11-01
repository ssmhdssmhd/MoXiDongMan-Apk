.class Lrx/observables/do$case;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/do;->do(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/y22;

.field public final synthetic for:Lrx/observables/do;

.field public final synthetic if:Lrx/observables/do$this;


# direct methods
.method public constructor <init>(Lrx/observables/do;Landroid/support/v4/y22;Lrx/observables/do$this;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/observables/do$case;->for:Lrx/observables/do;

    iput-object p2, p0, Lrx/observables/do$case;->do:Landroid/support/v4/y22;

    iput-object p3, p0, Lrx/observables/do$case;->if:Lrx/observables/do$this;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/observables/do$case;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/observables/do$case;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/do$case;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/observables/do$case;->if:Lrx/observables/do$this;

    invoke-virtual {v0, p1}, Lrx/observables/do$this;->case(Lrx/Producer;)V

    return-void
.end method
