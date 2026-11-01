.class Lcom/google/common/collect/this$if;
.super Lcom/google/common/collect/c2$this;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c2$this<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/this;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/this;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/this$if;->do:Lcom/google/common/collect/this;

    invoke-direct {p0}, Lcom/google/common/collect/c2$this;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/this$if;->do:Lcom/google/common/collect/this;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
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
    iget-object v0, p0, Lcom/google/common/collect/this$if;->do:Lcom/google/common/collect/this;

    invoke-virtual {v0}, Lcom/google/common/collect/this;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/this$if;->do:Lcom/google/common/collect/this;

    invoke-virtual {v0}, Lcom/google/common/collect/this;->distinctElements()I

    move-result v0

    return v0
.end method
