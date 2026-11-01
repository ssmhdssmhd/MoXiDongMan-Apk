.class Lcom/google/common/collect/u3$new$if;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/u3$new;->if()Ljava/util/Iterator;
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
.field public final synthetic case:Lcom/google/common/collect/u3$new;

.field public for:Lcom/google/common/collect/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final synthetic new:Lcom/google/common/collect/a;

.field public final synthetic try:Lcom/google/common/collect/PeekingIterator;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/u3$new;Lcom/google/common/collect/a;Lcom/google/common/collect/PeekingIterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/u3$new$if;->case:Lcom/google/common/collect/u3$new;

    iput-object p2, p0, Lcom/google/common/collect/u3$new$if;->new:Lcom/google/common/collect/a;

    iput-object p3, p0, Lcom/google/common/collect/u3$new$if;->try:Lcom/google/common/collect/PeekingIterator;

    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/common/collect/u3$new$if;->for:Lcom/google/common/collect/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic do()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/u3$new$if;->new()Ljava/util/Map$Entry;

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
    iget-object v0, p0, Lcom/google/common/collect/u3$new$if;->for:Lcom/google/common/collect/a;

    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/u3$new$if;->try:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/u3$new$if;->try:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n2;

    .line 5
    iget-object v1, v0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    iget-object v2, p0, Lcom/google/common/collect/u3$new$if;->for:Lcom/google/common/collect/a;

    .line 6
    invoke-static {v1, v2}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object v1

    .line 7
    iget-object v0, v0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iput-object v0, p0, Lcom/google/common/collect/u3$new$if;->for:Lcom/google/common/collect/a;

    .line 8
    iget-object v0, p0, Lcom/google/common/collect/u3$new$if;->case:Lcom/google/common/collect/u3$new;

    invoke-static {v0}, Lcom/google/common/collect/u3$new;->for(Lcom/google/common/collect/u3$new;)Lcom/google/common/collect/n2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v2, v1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/a;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, v1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/u3$new$if;->case:Lcom/google/common/collect/u3$new;

    invoke-static {v0}, Lcom/google/common/collect/u3$new;->for(Lcom/google/common/collect/u3$new;)Lcom/google/common/collect/n2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/a;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/u3$new$if;->for:Lcom/google/common/collect/a;

    invoke-static {v0, v1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/u3$new$if;->for:Lcom/google/common/collect/a;

    .line 13
    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
