.class Lcom/google/common/collect/a2$catch$for;
.super Lcom/google/common/collect/a2$class;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/a2$catch;->case(I)Lcom/google/common/collect/a2$class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/a2$class<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/collect/a2$catch;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a2$catch;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/a2$catch$for;->for:Lcom/google/common/collect/a2$catch;

    iput p2, p0, Lcom/google/common/collect/a2$catch$for;->if:I

    invoke-direct {p0}, Lcom/google/common/collect/a2$class;-><init>()V

    return-void
.end method


# virtual methods
.method public break()Lcom/google/common/collect/SetMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/a2$catch$for;->for:Lcom/google/common/collect/a2$catch;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/a2$catch;->for()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/a2$else;

    iget v2, p0, Lcom/google/common/collect/a2$catch$for;->if:I

    invoke-direct {v1, v2}, Lcom/google/common/collect/a2$else;-><init>(I)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/b2;->switch(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic do()Lcom/google/common/collect/Multimap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/a2$catch$for;->break()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method
