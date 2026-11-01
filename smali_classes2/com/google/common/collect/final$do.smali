.class Lcom/google/common/collect/final$do;
.super Lcom/google/common/collect/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/final;->createDescendingMultiset()Lcom/google/common/collect/SortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic new:Lcom/google/common/collect/final;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/final;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/final$do;->new:Lcom/google/common/collect/final;

    invoke-direct {p0}, Lcom/google/common/collect/e;-><init>()V

    return-void
.end method


# virtual methods
.method public for()Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/final$do;->new:Lcom/google/common/collect/final;

    return-object v0
.end method

.method public if()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/final$do;->new:Lcom/google/common/collect/final;

    invoke-virtual {v0}, Lcom/google/common/collect/final;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/final$do;->new:Lcom/google/common/collect/final;

    invoke-virtual {v0}, Lcom/google/common/collect/final;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
