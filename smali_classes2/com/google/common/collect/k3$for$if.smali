.class Lcom/google/common/collect/k3$for$if;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k3$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/for<",
        "Ljava/util/Map$Entry<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field public final for:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;>;"
        }
    .end annotation
.end field

.field public final synthetic new:Lcom/google/common/collect/k3$for;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/k3$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/k3$for$if;->new:Lcom/google/common/collect/k3$for;

    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/k3$for;->try:Lcom/google/common/collect/k3;

    iget-object p1, p1, Lcom/google/common/collect/k3;->backingMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/k3$for$if;->for:Ljava/util/Iterator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/k3$for;Lcom/google/common/collect/k3$do;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/k3$for$if;-><init>(Lcom/google/common/collect/k3$for;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic do()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/k3$for$if;->new()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public new()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TR;TV;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/k3$for$if;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/k3$for$if;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/k3$for$if;->new:Lcom/google/common/collect/k3$for;

    iget-object v2, v2, Lcom/google/common/collect/k3$for;->new:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/google/common/collect/k3$for$if$do;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/k3$for$if$do;-><init>(Lcom/google/common/collect/k3$for$if;Ljava/util/Map$Entry;)V

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
