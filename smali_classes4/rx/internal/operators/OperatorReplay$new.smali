.class final Lrx/internal/operators/OperatorReplay$new;
.super Lrx/observables/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->q6(Lrx/observables/for;Lrx/if;)Lrx/observables/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/observables/for<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lrx/observables/for;


# direct methods
.method public constructor <init>(Lrx/Observable$OnSubscribe;Lrx/observables/for;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$new;->if:Lrx/observables/for;

    invoke-direct {p0, p1}, Lrx/observables/for;-><init>(Lrx/Observable$OnSubscribe;)V

    return-void
.end method


# virtual methods
.method public i6(Lrx/functions/Action1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$new;->if:Lrx/observables/for;

    invoke-virtual {v0, p1}, Lrx/observables/for;->i6(Lrx/functions/Action1;)V

    return-void
.end method
