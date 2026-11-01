.class Lcom/google/common/graph/const$for;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/const;->successors()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/graph/const;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/const;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/const$for;->do:Lcom/google/common/graph/const;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/const$for;->do:Lcom/google/common/graph/const;

    invoke-static {v0}, Lcom/google/common/graph/const;->if(Lcom/google/common/graph/const;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/graph/const;->try(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public do()Landroid/support/v4/ac2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/const$for;->do:Lcom/google/common/graph/const;

    invoke-static {v0}, Lcom/google/common/graph/const;->do(Lcom/google/common/graph/const;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/const$for;->do:Lcom/google/common/graph/const;

    invoke-static {v0}, Lcom/google/common/graph/const;->if(Lcom/google/common/graph/const;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/common/graph/const$for$do;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/const$for$do;-><init>(Lcom/google/common/graph/const$for;Ljava/util/Iterator;)V

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/const$for;->do:Lcom/google/common/graph/const;

    invoke-static {v0}, Lcom/google/common/graph/const;->do(Lcom/google/common/graph/const;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/common/graph/const$for$if;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/const$for$if;-><init>(Lcom/google/common/graph/const$for;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/graph/const$for;->do()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/const$for;->do:Lcom/google/common/graph/const;

    invoke-static {v0}, Lcom/google/common/graph/const;->case(Lcom/google/common/graph/const;)I

    move-result v0

    return v0
.end method
