.class Lcom/google/common/collect/j0$goto$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/j0$goto;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private do:I

.field private for:I

.field private if:I

.field private new:I

.field public final synthetic try:Lcom/google/common/collect/j0$goto;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j0$goto;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/j0$goto$do;->try:Lcom/google/common/collect/j0$goto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/common/collect/j0$goto;->do:Lcom/google/common/collect/j0;

    invoke-static {v0}, Lcom/google/common/collect/j0;->access$000(Lcom/google/common/collect/j0;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/j0$goto$do;->do:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/common/collect/j0$goto$do;->if:I

    .line 4
    iget-object p1, p1, Lcom/google/common/collect/j0$goto;->do:Lcom/google/common/collect/j0;

    iget v0, p1, Lcom/google/common/collect/j0;->modCount:I

    iput v0, p0, Lcom/google/common/collect/j0$goto$do;->for:I

    .line 5
    iget p1, p1, Lcom/google/common/collect/j0;->size:I

    iput p1, p0, Lcom/google/common/collect/j0$goto$do;->new:I

    return-void
.end method

.method private do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j0$goto$do;->try:Lcom/google/common/collect/j0$goto;

    iget-object v0, v0, Lcom/google/common/collect/j0$goto;->do:Lcom/google/common/collect/j0;

    iget v0, v0, Lcom/google/common/collect/j0;->modCount:I

    iget v1, p0, Lcom/google/common/collect/j0$goto$do;->for:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/j0$goto$do;->do()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/j0$goto$do;->do:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/common/collect/j0$goto$do;->new:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/j0$goto$do;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/j0$goto$do;->try:Lcom/google/common/collect/j0$goto;

    iget v1, p0, Lcom/google/common/collect/j0$goto$do;->do:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/j0$goto;->do(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/google/common/collect/j0$goto$do;->do:I

    iput v1, p0, Lcom/google/common/collect/j0$goto$do;->if:I

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/j0$goto$do;->try:Lcom/google/common/collect/j0$goto;

    iget-object v1, v1, Lcom/google/common/collect/j0$goto;->do:Lcom/google/common/collect/j0;

    invoke-static {v1}, Lcom/google/common/collect/j0;->access$100(Lcom/google/common/collect/j0;)[I

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/j0$goto$do;->do:I

    aget v1, v1, v2

    iput v1, p0, Lcom/google/common/collect/j0$goto$do;->do:I

    .line 5
    iget v1, p0, Lcom/google/common/collect/j0$goto$do;->new:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/j0$goto$do;->new:I

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/j0$goto$do;->do()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/j0$goto$do;->if:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/default;->try(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/j0$goto$do;->try:Lcom/google/common/collect/j0$goto;

    iget-object v0, v0, Lcom/google/common/collect/j0$goto;->do:Lcom/google/common/collect/j0;

    iget v2, p0, Lcom/google/common/collect/j0$goto$do;->if:I

    invoke-virtual {v0, v2}, Lcom/google/common/collect/j0;->removeEntry(I)V

    .line 4
    iget v0, p0, Lcom/google/common/collect/j0$goto$do;->do:I

    iget-object v2, p0, Lcom/google/common/collect/j0$goto$do;->try:Lcom/google/common/collect/j0$goto;

    iget-object v2, v2, Lcom/google/common/collect/j0$goto;->do:Lcom/google/common/collect/j0;

    iget v3, v2, Lcom/google/common/collect/j0;->size:I

    if-ne v0, v3, :cond_1

    .line 5
    iget v0, p0, Lcom/google/common/collect/j0$goto$do;->if:I

    iput v0, p0, Lcom/google/common/collect/j0$goto$do;->do:I

    .line 6
    :cond_1
    iput v1, p0, Lcom/google/common/collect/j0$goto$do;->if:I

    .line 7
    iget v0, v2, Lcom/google/common/collect/j0;->modCount:I

    iput v0, p0, Lcom/google/common/collect/j0$goto$do;->for:I

    return-void
.end method
