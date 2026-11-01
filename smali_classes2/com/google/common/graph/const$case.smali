.class Lcom/google/common/graph/const$case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/const;->incidentEdgeIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/google/common/graph/const$this<",
        "TN;>;",
        "Lcom/google/common/graph/import<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Object;

.field public final synthetic if:Lcom/google/common/graph/const;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/const;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/const$case;->if:Lcom/google/common/graph/const;

    iput-object p2, p0, Lcom/google/common/graph/const$case;->do:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/graph/const$this;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/const$case;->do(Lcom/google/common/graph/const$this;)Lcom/google/common/graph/import;

    move-result-object p1

    return-object p1
.end method

.method public do(Lcom/google/common/graph/const$this;)Lcom/google/common/graph/import;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/const$this<",
            "TN;>;)",
            "Lcom/google/common/graph/import<",
            "TN;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/common/graph/const$this$if;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/const$case;->do:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/common/graph/const$this;->do:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/graph/import;->goto(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/import;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/google/common/graph/const$this;->do:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/graph/const$case;->do:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/common/graph/import;->goto(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/import;

    move-result-object p1

    return-object p1
.end method
