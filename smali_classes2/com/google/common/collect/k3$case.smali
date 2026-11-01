.class Lcom/google/common/collect/k3$case;
.super Lcom/google/common/collect/Maps$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/k3$case$if;,
        Lcom/google/common/collect/k3$case$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$d<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic new:Lcom/google/common/collect/k3;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/k3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/k3$case;->new:Lcom/google/common/collect/k3;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$d;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/k3;Lcom/google/common/collect/k3$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/k3$case;-><init>(Lcom/google/common/collect/k3;)V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3$case;->new:Lcom/google/common/collect/k3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/k3;->containsColumn(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public do()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/k3$case$do;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k3$case$do;-><init>(Lcom/google/common/collect/k3$case;)V

    return-object v0
.end method

.method public for()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/k3$case$if;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k3$case$if;-><init>(Lcom/google/common/collect/k3$case;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k3$case;->new(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3$case;->new:Lcom/google/common/collect/k3;

    invoke-virtual {v0}, Lcom/google/common/collect/k3;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public new(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3$case;->new:Lcom/google/common/collect/k3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/k3;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/k3$case;->new:Lcom/google/common/collect/k3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/k3;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k3$case;->try(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public try(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3$case;->new:Lcom/google/common/collect/k3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/k3;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/k3$case;->new:Lcom/google/common/collect/k3;

    invoke-static {v0, p1}, Lcom/google/common/collect/k3;->access$900(Lcom/google/common/collect/k3;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
