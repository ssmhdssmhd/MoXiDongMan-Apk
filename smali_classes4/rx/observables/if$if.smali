.class Lrx/observables/if$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/if;->finally()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field public final synthetic do:Lrx/observables/if;


# direct methods
.method public constructor <init>(Lrx/observables/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/observables/if$if;->do:Lrx/observables/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if$if;->do:Lrx/observables/if;

    invoke-virtual {v0}, Lrx/observables/if;->goto()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
