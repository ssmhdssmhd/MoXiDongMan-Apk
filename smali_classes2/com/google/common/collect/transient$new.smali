.class Lcom/google/common/collect/transient$new;
.super Lcom/google/common/collect/this$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/transient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/this<",
        "TE;>.if;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/transient;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/transient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/transient$new;->if:Lcom/google/common/collect/transient;

    invoke-direct {p0, p1}, Lcom/google/common/collect/this$if;-><init>(Lcom/google/common/collect/this;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/transient;Lcom/google/common/collect/transient$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/transient$new;-><init>(Lcom/google/common/collect/transient;)V

    return-void
.end method

.method private for()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/this$if;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/x1;->static(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/this$if;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/s1;->do(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method


# virtual methods
.method public bridge synthetic do()Lcom/google/common/collect/Multiset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/transient$new;->if()Lcom/google/common/collect/transient;

    move-result-object v0

    return-object v0
.end method

.method public if()Lcom/google/common/collect/transient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/transient<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/transient$new;->if:Lcom/google/common/collect/transient;

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/transient$new;->for()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/transient$new;->for()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
