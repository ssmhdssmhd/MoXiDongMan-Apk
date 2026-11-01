.class Lcom/google/common/collect/public$if;
.super Lcom/google/common/collect/m3$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/public;->getCell(I)Lcom/google/common/collect/Table$Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/m3$if<",
        "TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field public final do:I

.field public final synthetic for:I

.field public final if:I

.field public final synthetic new:Lcom/google/common/collect/public;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/public;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/public$if;->new:Lcom/google/common/collect/public;

    iput p2, p0, Lcom/google/common/collect/public$if;->for:I

    invoke-direct {p0}, Lcom/google/common/collect/m3$if;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/public;->access$100(Lcom/google/common/collect/public;)Lcom/google/common/collect/v0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    div-int v0, p2, v0

    iput v0, p0, Lcom/google/common/collect/public$if;->do:I

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/public;->access$100(Lcom/google/common/collect/public;)Lcom/google/common/collect/v0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    rem-int/2addr p2, p1

    iput p2, p0, Lcom/google/common/collect/public$if;->if:I

    return-void
.end method


# virtual methods
.method public getColumnKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/public$if;->new:Lcom/google/common/collect/public;

    invoke-static {v0}, Lcom/google/common/collect/public;->access$100(Lcom/google/common/collect/public;)Lcom/google/common/collect/v0;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/public$if;->if:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRowKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/public$if;->new:Lcom/google/common/collect/public;

    invoke-static {v0}, Lcom/google/common/collect/public;->access$200(Lcom/google/common/collect/public;)Lcom/google/common/collect/v0;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/public$if;->do:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/public$if;->new:Lcom/google/common/collect/public;

    iget v1, p0, Lcom/google/common/collect/public$if;->do:I

    iget v2, p0, Lcom/google/common/collect/public$if;->if:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/public;->at(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
