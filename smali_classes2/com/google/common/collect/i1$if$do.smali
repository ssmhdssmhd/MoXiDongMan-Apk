.class Lcom/google/common/collect/i1$if$do;
.super Lcom/google/common/collect/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i1$if;->createAsList()Lcom/google/common/collect/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v0<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/google/common/collect/i1$if;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i1$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/i1$if$do;->this$1:Lcom/google/common/collect/i1$if;

    invoke-direct {p0}, Lcom/google/common/collect/v0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/i1$if$do;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Lcom/google/common/collect/i1$if$do;->this$1:Lcom/google/common/collect/i1$if;

    iget-object v1, v1, Lcom/google/common/collect/i1$if;->this$0:Lcom/google/common/collect/i1;

    .line 3
    invoke-static {v1}, Lcom/google/common/collect/i1;->access$100(Lcom/google/common/collect/i1;)Lcom/google/common/collect/x2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/x2;->asList()Lcom/google/common/collect/v0;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/i1$if$do;->this$1:Lcom/google/common/collect/i1$if;

    iget-object v2, v2, Lcom/google/common/collect/i1$if;->this$0:Lcom/google/common/collect/i1;

    invoke-static {v2}, Lcom/google/common/collect/i1;->access$200(Lcom/google/common/collect/i1;)Lcom/google/common/collect/v0;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/i1$if$do;->this$1:Lcom/google/common/collect/i1$if;

    iget-object v0, v0, Lcom/google/common/collect/i1$if;->this$0:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->size()I

    move-result v0

    return v0
.end method
