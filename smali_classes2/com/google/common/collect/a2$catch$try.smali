.class Lcom/google/common/collect/a2$catch$try;
.super Lcom/google/common/collect/a2$const;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/a2$catch;->catch(Ljava/util/Comparator;)Lcom/google/common/collect/a2$const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/a2$const<",
        "TK0;TV0;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/collect/a2$catch;

.field public final synthetic if:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a2$catch;Ljava/util/Comparator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/a2$catch$try;->for:Lcom/google/common/collect/a2$catch;

    iput-object p2, p0, Lcom/google/common/collect/a2$catch$try;->if:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/a2$const;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic break()Lcom/google/common/collect/SetMultimap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/a2$catch$try;->class()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public class()Lcom/google/common/collect/SortedSetMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/a2$catch$try;->for:Lcom/google/common/collect/a2$catch;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/a2$catch;->for()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/a2$final;

    iget-object v2, p0, Lcom/google/common/collect/a2$catch$try;->if:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Lcom/google/common/collect/a2$final;-><init>(Ljava/util/Comparator;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/b2;->throws(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic do()Lcom/google/common/collect/Multimap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/a2$catch$try;->class()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method
