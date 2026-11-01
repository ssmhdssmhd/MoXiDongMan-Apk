.class Lcom/google/common/collect/u3$else$do;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/u3$else;->do()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/for<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/common/collect/a<",
        "TC;>;",
        "Lcom/google/common/collect/n2<",
        "TC;>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Ljava/util/Iterator;

.field public final synthetic new:Lcom/google/common/collect/a;

.field public final synthetic try:Lcom/google/common/collect/u3$else;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/u3$else;Ljava/util/Iterator;Lcom/google/common/collect/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/u3$else$do;->try:Lcom/google/common/collect/u3$else;

    iput-object p2, p0, Lcom/google/common/collect/u3$else$do;->for:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/u3$else$do;->new:Lcom/google/common/collect/a;

    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic do()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/u3$else$do;->new()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public new()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/a<",
            "TC;>;",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$else$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/u3$else$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n2;

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/u3$else$do;->new:Lcom/google/common/collect/a;

    iget-object v2, v0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/a;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/u3$else$do;->try:Lcom/google/common/collect/u3$else;

    invoke-static {v1}, Lcom/google/common/collect/u3$else;->for(Lcom/google/common/collect/u3$else;)Lcom/google/common/collect/n2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
