.class Lcom/google/common/collect/s3$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/s3;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public do:Lcom/google/common/collect/s3$case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/s3$case<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic for:Lcom/google/common/collect/s3;

.field public if:Lcom/google/common/collect/Multiset$Entry;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/s3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/s3$if;->for:Lcom/google/common/collect/s3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/s3;->access$1200(Lcom/google/common/collect/s3;)Lcom/google/common/collect/s3$case;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/s3$if;->do:Lcom/google/common/collect/s3$case;

    return-void
.end method


# virtual methods
.method public do()Lcom/google/common/collect/Multiset$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/s3$if;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/s3$if;->for:Lcom/google/common/collect/s3;

    iget-object v1, p0, Lcom/google/common/collect/s3$if;->do:Lcom/google/common/collect/s3$case;

    invoke-static {v0, v1}, Lcom/google/common/collect/s3;->access$1400(Lcom/google/common/collect/s3;Lcom/google/common/collect/s3$case;)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/s3$if;->if:Lcom/google/common/collect/Multiset$Entry;

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/s3$if;->do:Lcom/google/common/collect/s3$case;

    invoke-static {v1}, Lcom/google/common/collect/s3$case;->class(Lcom/google/common/collect/s3$case;)Lcom/google/common/collect/s3$case;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/s3$if;->for:Lcom/google/common/collect/s3;

    invoke-static {v2}, Lcom/google/common/collect/s3;->access$1500(Lcom/google/common/collect/s3;)Lcom/google/common/collect/s3$case;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/google/common/collect/s3$if;->do:Lcom/google/common/collect/s3$case;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/s3$if;->do:Lcom/google/common/collect/s3$case;

    invoke-static {v1}, Lcom/google/common/collect/s3$case;->class(Lcom/google/common/collect/s3$case;)Lcom/google/common/collect/s3$case;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/s3$if;->do:Lcom/google/common/collect/s3$case;

    :goto_0
    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/s3$if;->do:Lcom/google/common/collect/s3$case;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/s3$if;->for:Lcom/google/common/collect/s3;

    invoke-static {v0}, Lcom/google/common/collect/s3;->access$1300(Lcom/google/common/collect/s3;)Lcom/google/common/collect/g0;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/s3$if;->do:Lcom/google/common/collect/s3$case;

    invoke-virtual {v2}, Lcom/google/common/collect/s3$case;->default()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/g0;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/s3$if;->do:Lcom/google/common/collect/s3$case;

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/s3$if;->do()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/s3$if;->if:Lcom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/default;->try(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/s3$if;->for:Lcom/google/common/collect/s3;

    iget-object v2, p0, Lcom/google/common/collect/s3$if;->if:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/s3;->setCount(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/s3$if;->if:Lcom/google/common/collect/Multiset$Entry;

    return-void
.end method
