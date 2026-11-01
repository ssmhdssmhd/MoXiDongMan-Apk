.class Lcom/google/common/collect/e1$if;
.super Lcom/google/common/collect/e1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/e1;->subRangeMap(Lcom/google/common/collect/n2;)Lcom/google/common/collect/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e1<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/collect/e1;

.field public final synthetic val$outer:Lcom/google/common/collect/e1;

.field public final synthetic val$range:Lcom/google/common/collect/n2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/e1;Lcom/google/common/collect/v0;Lcom/google/common/collect/v0;Lcom/google/common/collect/n2;Lcom/google/common/collect/e1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/e1$if;->this$0:Lcom/google/common/collect/e1;

    iput-object p4, p0, Lcom/google/common/collect/e1$if;->val$range:Lcom/google/common/collect/n2;

    iput-object p5, p0, Lcom/google/common/collect/e1$if;->val$outer:Lcom/google/common/collect/e1;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/e1;-><init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/v0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asDescendingMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/e1;->asDescendingMapOfRanges()Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/e1;->asMapOfRanges()Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subRangeMap(Lcom/google/common/collect/n2;)Lcom/google/common/collect/RangeMap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e1$if;->subRangeMap(Lcom/google/common/collect/n2;)Lcom/google/common/collect/e1;

    move-result-object p1

    return-object p1
.end method

.method public subRangeMap(Lcom/google/common/collect/n2;)Lcom/google/common/collect/e1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;)",
            "Lcom/google/common/collect/e1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/e1$if;->val$range:Lcom/google/common/collect/n2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->isConnected(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/e1$if;->val$outer:Lcom/google/common/collect/e1;

    iget-object v1, p0, Lcom/google/common/collect/e1$if;->val$range:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/e1;->subRangeMap(Lcom/google/common/collect/n2;)Lcom/google/common/collect/e1;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/common/collect/e1;->of()Lcom/google/common/collect/e1;

    move-result-object p1

    return-object p1
.end method
