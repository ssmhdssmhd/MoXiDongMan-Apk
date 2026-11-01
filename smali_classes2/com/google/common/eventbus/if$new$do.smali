.class Lcom/google/common/eventbus/if$new$do;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/if$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/Queue<",
        "Lcom/google/common/eventbus/if$new$for;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/eventbus/if$new;


# direct methods
.method public constructor <init>(Lcom/google/common/eventbus/if$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/eventbus/if$new$do;->do:Lcom/google/common/eventbus/if$new;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/google/common/eventbus/if$new$for;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/m2;->new()Ljava/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/eventbus/if$new$do;->do()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method
