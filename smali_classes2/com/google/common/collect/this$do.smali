.class Lcom/google/common/collect/this$do;
.super Lcom/google/common/collect/c2$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c2$goto<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/this;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/this;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/this$do;->do:Lcom/google/common/collect/this;

    invoke-direct {p0}, Lcom/google/common/collect/c2$goto;-><init>()V

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
    iget-object v0, p0, Lcom/google/common/collect/this$do;->do:Lcom/google/common/collect/this;

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
    iget-object v0, p0, Lcom/google/common/collect/this$do;->do:Lcom/google/common/collect/this;

    invoke-virtual {v0}, Lcom/google/common/collect/this;->elementIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
