.class Lcom/google/common/collect/t3$new$if$for;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/t3$new$if;->if()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/for<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/common/collect/n2<",
        "TK;>;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Ljava/util/Iterator;

.field public final synthetic new:Lcom/google/common/collect/t3$new$if;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/t3$new$if;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/t3$new$if$for;->new:Lcom/google/common/collect/t3$new$if;

    iput-object p2, p0, Lcom/google/common/collect/t3$new$if$for;->for:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic do()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/t3$new$if$for;->new()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public new()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/t3$new$if$for;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/t3$new$if$for;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t3$for;

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/t3$for;->for()Lcom/google/common/collect/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/t3$new$if$for;->new:Lcom/google/common/collect/t3$new$if;

    iget-object v2, v2, Lcom/google/common/collect/t3$new$if;->do:Lcom/google/common/collect/t3$new;

    invoke-static {v2}, Lcom/google/common/collect/t3$new;->do(Lcom/google/common/collect/t3$new;)Lcom/google/common/collect/n2;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/t3$for;->new()Lcom/google/common/collect/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/t3$new$if$for;->new:Lcom/google/common/collect/t3$new$if;

    iget-object v2, v2, Lcom/google/common/collect/t3$new$if;->do:Lcom/google/common/collect/t3$new;

    invoke-static {v2}, Lcom/google/common/collect/t3$new;->do(Lcom/google/common/collect/t3$new;)Lcom/google/common/collect/n2;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v1

    if-lez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/t3$for;->if()Lcom/google/common/collect/n2;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/t3$new$if$for;->new:Lcom/google/common/collect/t3$new$if;

    iget-object v2, v2, Lcom/google/common/collect/t3$new$if;->do:Lcom/google/common/collect/t3$new;

    invoke-static {v2}, Lcom/google/common/collect/t3$new;->do(Lcom/google/common/collect/t3$new;)Lcom/google/common/collect/n2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/collect/t3$for;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
