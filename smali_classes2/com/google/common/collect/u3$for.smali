.class final Lcom/google/common/collect/u3$for;
.super Lcom/google/common/collect/u3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/u3<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/collect/u3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/u3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/u3$for;->this$0:Lcom/google/common/collect/u3;

    .line 2
    new-instance v0, Lcom/google/common/collect/u3$new;

    iget-object p1, p1, Lcom/google/common/collect/u3;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-direct {v0, p1}, Lcom/google/common/collect/u3$new;-><init>(Ljava/util/NavigableMap;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/u3;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/u3$do;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/collect/n2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$for;->this$0:Lcom/google/common/collect/u3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u3;->remove(Lcom/google/common/collect/n2;)V

    return-void
.end method

.method public complement()Lcom/google/common/collect/RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$for;->this$0:Lcom/google/common/collect/u3;

    return-object v0
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$for;->this$0:Lcom/google/common/collect/u3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u3;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public remove(Lcom/google/common/collect/n2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$for;->this$0:Lcom/google/common/collect/u3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u3;->add(Lcom/google/common/collect/n2;)V

    return-void
.end method
