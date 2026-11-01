.class Lcom/google/common/collect/finally$case;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/finally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/finally;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/finally;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/finally$case;->do:Lcom/google/common/collect/finally;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$case;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$case;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/finally;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$case;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->keySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$case;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/finally$case;->do:Lcom/google/common/collect/finally;

    .line 3
    invoke-static {v0, p1}, Lcom/google/common/collect/finally;->access$100(Lcom/google/common/collect/finally;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lcom/google/common/collect/finally;->access$200()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$case;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->size()I

    move-result v0

    return v0
.end method
