.class Lcom/google/common/graph/const$if$if;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/const$if;->do()Landroid/support/v4/ac2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/for<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Ljava/util/Iterator;

.field public final synthetic new:Lcom/google/common/graph/const$if;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/const$if;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/const$if$if;->new:Lcom/google/common/graph/const$if;

    iput-object p2, p0, Lcom/google/common/graph/const$if$if;->for:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/const$if$if;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/const$if$if;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/const$this;

    .line 3
    instance-of v1, v0, Lcom/google/common/graph/const$this$do;

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/common/graph/const$this;->do:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
