.class Lcom/google/common/collect/b$new$do;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/b$new;->entryIterator()Landroid/support/v4/ac2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/for<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private for:I

.field private final new:I

.field public final synthetic try:Lcom/google/common/collect/b$new;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b$new;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b$new$do;->try:Lcom/google/common/collect/b$new;

    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/common/collect/b$new$do;->for:I

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/b$new;->keyToIndex()Lcom/google/common/collect/x0;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/b$new$do;->new:I

    return-void
.end method


# virtual methods
.method public bridge synthetic do()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/b$new$do;->new()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public new()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/b$new$do;->for:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/b$new$do;->for:I

    iget v0, p0, Lcom/google/common/collect/b$new$do;->for:I

    iget v1, p0, Lcom/google/common/collect/b$new$do;->new:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/b$new$do;->try:Lcom/google/common/collect/b$new;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/b$new;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/b$new$do;->try:Lcom/google/common/collect/b$new;

    iget v2, p0, Lcom/google/common/collect/b$new$do;->for:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/b$new;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget v0, p0, Lcom/google/common/collect/b$new$do;->for:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
