.class Lcom/google/common/collect/u2;
.super Lcom/google/common/collect/c1;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/u2$for;,
        Lcom/google/common/collect/u2$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c1<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/common/collect/u2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient contents:Lcom/google/common/collect/i2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i2<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient new:I

.field private transient try:Lcom/google/common/collect/g1;
    .annotation runtime Landroid/support/v4/fs0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/u2;

    .line 2
    invoke-static {}, Lcom/google/common/collect/i2;->for()Lcom/google/common/collect/i2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/u2;-><init>(Lcom/google/common/collect/i2;)V

    sput-object v0, Lcom/google/common/collect/u2;->EMPTY:Lcom/google/common/collect/u2;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/i2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/i2<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/c1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/u2;->contents:Lcom/google/common/collect/i2;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/i2;->abstract()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lcom/google/common/collect/i2;->class(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/primitives/this;->throws(J)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/u2;->new:I

    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u2;->contents:Lcom/google/common/collect/i2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i2;->else(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public elementSet()Lcom/google/common/collect/g1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/u2;->try:Lcom/google/common/collect/g1;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/common/collect/u2$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/u2$if;-><init>(Lcom/google/common/collect/u2;Lcom/google/common/collect/u2$do;)V

    iput-object v0, p0, Lcom/google/common/collect/u2;->try:Lcom/google/common/collect/g1;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/u2;->elementSet()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u2;->contents:Lcom/google/common/collect/i2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i2;->goto(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/u2;->new:I

    return v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/u2$for;

    invoke-direct {v0, p0}, Lcom/google/common/collect/u2$for;-><init>(Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method
