.class Lcom/google/common/collect/finally$if;
.super Lcom/google/common/collect/finally$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/finally;->entrySetIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/finally<",
        "TK;TV;>.try<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic try:Lcom/google/common/collect/finally;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/finally;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/finally$if;->try:Lcom/google/common/collect/finally;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/finally$try;-><init>(Lcom/google/common/collect/finally;Lcom/google/common/collect/finally$do;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic if(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/finally$if;->new(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public new(I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/finally$else;

    iget-object v1, p0, Lcom/google/common/collect/finally$if;->try:Lcom/google/common/collect/finally;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/finally$else;-><init>(Lcom/google/common/collect/finally;I)V

    return-object v0
.end method
