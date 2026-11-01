.class Lcom/google/common/collect/j3$if;
.super Lcom/google/common/collect/k3$goto;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k3<",
        "TR;TC;TV;>.goto;",
        "Ljava/util/SortedMap<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic try:Lcom/google/common/collect/j3;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/j3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/j3$if;->try:Lcom/google/common/collect/j3;

    invoke-direct {p0, p1}, Lcom/google/common/collect/k3$goto;-><init>(Lcom/google/common/collect/k3;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/j3;Lcom/google/common/collect/j3$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/j3$if;-><init>(Lcom/google/common/collect/j3;)V

    return-void
.end method


# virtual methods
.method public case()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/Maps$strictfp;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$strictfp;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j3$if;->try:Lcom/google/common/collect/j3;

    invoke-static {v0}, Lcom/google/common/collect/j3;->access$100(Lcom/google/common/collect/j3;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public else()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/Maps$d;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j3$if;->try:Lcom/google/common/collect/j3;

    invoke-static {v0}, Lcom/google/common/collect/j3;->access$100(Lcom/google/common/collect/j3;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/j3;

    iget-object v1, p0, Lcom/google/common/collect/j3$if;->try:Lcom/google/common/collect/j3;

    invoke-static {v1}, Lcom/google/common/collect/j3;->access$100(Lcom/google/common/collect/j3;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/j3$if;->try:Lcom/google/common/collect/j3;

    iget-object v1, v1, Lcom/google/common/collect/k3;->factory:Lcom/google/common/base/Supplier;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/j3;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/j3;->rowMap()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic if()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/j3$if;->case()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/j3$if;->else()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j3$if;->try:Lcom/google/common/collect/j3;

    invoke-static {v0}, Lcom/google/common/collect/j3;->access$100(Lcom/google/common/collect/j3;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/collect/j3;

    iget-object v1, p0, Lcom/google/common/collect/j3$if;->try:Lcom/google/common/collect/j3;

    invoke-static {v1}, Lcom/google/common/collect/j3;->access$100(Lcom/google/common/collect/j3;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/j3$if;->try:Lcom/google/common/collect/j3;

    iget-object p2, p2, Lcom/google/common/collect/k3;->factory:Lcom/google/common/base/Supplier;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/j3;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/common/collect/j3;->rowMap()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/j3;

    iget-object v1, p0, Lcom/google/common/collect/j3$if;->try:Lcom/google/common/collect/j3;

    invoke-static {v1}, Lcom/google/common/collect/j3;->access$100(Lcom/google/common/collect/j3;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/j3$if;->try:Lcom/google/common/collect/j3;

    iget-object v1, v1, Lcom/google/common/collect/k3;->factory:Lcom/google/common/base/Supplier;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/j3;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/j3;->rowMap()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method
