.class final Lrx/internal/operators/OperatorReplay$case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->n6(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/if;I)Lrx/observables/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0<",
        "Lrx/internal/operators/OperatorReplay$ReplayBuffer<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic for:Lrx/if;

.field public final synthetic if:J


# direct methods
.method public constructor <init>(IJLrx/if;)V
    .locals 0

    .line 1
    iput p1, p0, Lrx/internal/operators/OperatorReplay$case;->do:I

    iput-wide p2, p0, Lrx/internal/operators/OperatorReplay$case;->if:J

    iput-object p4, p0, Lrx/internal/operators/OperatorReplay$case;->for:Lrx/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$case;->do()Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public do()Lrx/internal/operators/OperatorReplay$ReplayBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/OperatorReplay$class;

    iget v1, p0, Lrx/internal/operators/OperatorReplay$case;->do:I

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$case;->if:J

    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$case;->for:Lrx/if;

    invoke-direct {v0, v1, v2, v3, v4}, Lrx/internal/operators/OperatorReplay$class;-><init>(IJLrx/if;)V

    return-object v0
.end method
