.class Lcom/google/common/collect/t3$new$if$do;
.super Lcom/google/common/collect/Maps$finally;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/t3$new$if;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$finally<",
        "Lcom/google/common/collect/n2<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/t3$new$if;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/t3$new$if;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/t3$new$if$do;->if:Lcom/google/common/collect/t3$new$if;

    invoke-direct {p0, p2}, Lcom/google/common/collect/Maps$finally;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3$new$if$do;->if:Lcom/google/common/collect/t3$new$if;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/t3$new$if;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3$new$if$do;->if:Lcom/google/common/collect/t3$new$if;

    invoke-static {p1}, Lcom/google/common/base/public;->final(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/public;->while(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {}, Lcom/google/common/collect/Maps;->e()Lcom/google/common/base/Function;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/public;->goto(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/t3$new$if;->do(Lcom/google/common/collect/t3$new$if;Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method
