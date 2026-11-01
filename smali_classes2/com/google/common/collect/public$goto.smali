.class Lcom/google/common/collect/public$goto;
.super Lcom/google/common/collect/public$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/public;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "goto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/public$new<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/public;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/public;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/public$goto;->if:Lcom/google/common/collect/public;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/public;->access$300(Lcom/google/common/collect/public;)Lcom/google/common/collect/x0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/public$new;-><init>(Lcom/google/common/collect/x0;Lcom/google/common/collect/public$do;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/public;Lcom/google/common/collect/public$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/public$goto;-><init>(Lcom/google/common/collect/public;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic case(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/public$goto;->this(ILjava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public else(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/public$else;

    iget-object v1, p0, Lcom/google/common/collect/public$goto;->if:Lcom/google/common/collect/public;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/public$else;-><init>(Lcom/google/common/collect/public;I)V

    return-object v0
.end method

.method public goto(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/util/Map<",
            "TC;TV;>;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public new()Ljava/lang/String;
    .locals 1

    const-string v0, "Row"

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/public$goto;->goto(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public this(ILjava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "TC;TV;>;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic try(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/public$goto;->else(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
