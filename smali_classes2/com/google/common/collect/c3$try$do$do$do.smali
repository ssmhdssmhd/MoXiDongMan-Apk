.class Lcom/google/common/collect/c3$try$do$do$do;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c3$try$do$do;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/for<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public for:I

.field public final synthetic new:Lcom/google/common/collect/c3$try$do$do;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c3$try$do$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c3$try$do$do$do;->new:Lcom/google/common/collect/c3$try$do$do;

    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/google/common/collect/c3$try$do$do$do;->for:I

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c3$try$do$do$do;->new:Lcom/google/common/collect/c3$try$do$do;

    iget-object v0, v0, Lcom/google/common/collect/c3$try$do$do;->do:Ljava/util/BitSet;

    iget v1, p0, Lcom/google/common/collect/c3$try$do$do$do;->for:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/c3$try$do$do$do;->for:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c3$try$do$do$do;->new:Lcom/google/common/collect/c3$try$do$do;

    iget-object v0, v0, Lcom/google/common/collect/c3$try$do$do;->if:Lcom/google/common/collect/c3$try$do;

    iget-object v0, v0, Lcom/google/common/collect/c3$try$do;->new:Lcom/google/common/collect/c3$try;

    iget-object v0, v0, Lcom/google/common/collect/c3$try;->if:Lcom/google/common/collect/x0;

    invoke-virtual {v0}, Lcom/google/common/collect/x0;->keySet()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->asList()Lcom/google/common/collect/v0;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/c3$try$do$do$do;->for:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
