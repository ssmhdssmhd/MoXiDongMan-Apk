.class Lcom/google/common/collect/throw$for;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/throw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/throw;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/throw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/throw$for;->do:Lcom/google/common/collect/throw;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/throw$for;->do:Lcom/google/common/collect/throw;

    invoke-virtual {v0}, Lcom/google/common/collect/throw;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/throw$for;->do:Lcom/google/common/collect/throw;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/throw;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/throw$for;->do:Lcom/google/common/collect/throw;

    invoke-virtual {v0}, Lcom/google/common/collect/throw;->valuesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/throw$for;->do:Lcom/google/common/collect/throw;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->size()I

    move-result v0

    return v0
.end method
