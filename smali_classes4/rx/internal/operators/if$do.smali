.class final Lrx/internal/operators/if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/if;->do(Lrx/Observable;Ljava/lang/Object;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Object;

.field public final synthetic if:Lrx/Observable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/Observable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/if$do;->do:Ljava/lang/Object;

    iput-object p2, p0, Lrx/internal/operators/if$do;->if:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/if$if;

    iget-object v1, p0, Lrx/internal/operators/if$do;->do:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lrx/internal/operators/if$if;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lrx/internal/operators/if$do;->if:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 3
    invoke-virtual {v0}, Lrx/internal/operators/if$if;->do()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
