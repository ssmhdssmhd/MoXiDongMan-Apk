.class Lcom/google/common/collect/c3$try$do$do;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c3$try$do;->new()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/BitSet;

.field public final synthetic if:Lcom/google/common/collect/c3$try$do;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c3$try$do;Ljava/util/BitSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c3$try$do$do;->if:Lcom/google/common/collect/c3$try$do;

    iput-object p2, p0, Lcom/google/common/collect/c3$try$do$do;->do:Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c3$try$do$do;->if:Lcom/google/common/collect/c3$try$do;

    iget-object v0, v0, Lcom/google/common/collect/c3$try$do;->new:Lcom/google/common/collect/c3$try;

    iget-object v0, v0, Lcom/google/common/collect/c3$try;->if:Lcom/google/common/collect/x0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c3$try$do$do;->do:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/c3$try$do$do$do;

    invoke-direct {v0, p0}, Lcom/google/common/collect/c3$try$do$do$do;-><init>(Lcom/google/common/collect/c3$try$do$do;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c3$try$do$do;->if:Lcom/google/common/collect/c3$try$do;

    iget-object v0, v0, Lcom/google/common/collect/c3$try$do;->new:Lcom/google/common/collect/c3$try;

    iget v0, v0, Lcom/google/common/collect/c3$try;->do:I

    return v0
.end method
