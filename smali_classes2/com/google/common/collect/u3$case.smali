.class final Lcom/google/common/collect/u3$case;
.super Lcom/google/common/collect/u3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/u3<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final restriction:Lcom/google/common/collect/n2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/google/common/collect/u3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/u3;Lcom/google/common/collect/n2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/u3$case;->this$0:Lcom/google/common/collect/u3;

    .line 2
    new-instance v0, Lcom/google/common/collect/u3$else;

    .line 3
    invoke-static {}, Lcom/google/common/collect/n2;->all()Lcom/google/common/collect/n2;

    move-result-object v1

    iget-object p1, p1, Lcom/google/common/collect/u3;->rangesByLowerBound:Ljava/util/NavigableMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/google/common/collect/u3$else;-><init>(Lcom/google/common/collect/n2;Lcom/google/common/collect/n2;Ljava/util/NavigableMap;Lcom/google/common/collect/u3$do;)V

    .line 4
    invoke-direct {p0, v0, v2}, Lcom/google/common/collect/u3;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/u3$do;)V

    .line 5
    iput-object p2, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/collect/n2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->encloses(Lcom/google/common/collect/n2;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    const-string v2, "Cannot add range %s to subRangeSet(%s)"

    .line 3
    invoke-static {v0, v2, p1, v1}, Landroid/support/v4/af1;->default(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-super {p0, p1}, Lcom/google/common/collect/u3;->add(Lcom/google/common/collect/n2;)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$case;->this$0:Lcom/google/common/collect/u3;

    iget-object v1, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/u3;->remove(Lcom/google/common/collect/n2;)V

    return-void
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/u3$case;->this$0:Lcom/google/common/collect/u3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u3;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public encloses(Lcom/google/common/collect/n2;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    invoke-virtual {v0}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->encloses(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/u3$case;->this$0:Lcom/google/common/collect/u3;

    invoke-static {v0, p1}, Lcom/google/common/collect/u3;->access$600(Lcom/google/common/collect/u3;Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;
    .locals 2
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/u3$case;->this$0:Lcom/google/common/collect/u3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u3;->rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public remove(Lcom/google/common/collect/n2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->isConnected(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/u3$case;->this$0:Lcom/google/common/collect/u3;

    iget-object v1, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u3;->remove(Lcom/google/common/collect/n2;)V

    :cond_0
    return-void
.end method

.method public subRangeSet(Lcom/google/common/collect/n2;)Lcom/google/common/collect/RangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->encloses(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->isConnected(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/google/common/collect/u3$case;

    iget-object v1, p0, Lcom/google/common/collect/u3$case;->restriction:Lcom/google/common/collect/n2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/u3$case;-><init>(Lcom/google/common/collect/u3;Lcom/google/common/collect/n2;)V

    return-object v0

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/common/collect/f1;->of()Lcom/google/common/collect/f1;

    move-result-object p1

    return-object p1
.end method
