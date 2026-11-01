.class Lcom/google/common/collect/finally$goto;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/finally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "goto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/finally;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/finally;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/finally$goto;->do:Lcom/google/common/collect/finally;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$goto;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->clear()V

    return-void
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
    iget-object v0, p0, Lcom/google/common/collect/finally$goto;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->valuesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$goto;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->size()I

    move-result v0

    return v0
.end method
