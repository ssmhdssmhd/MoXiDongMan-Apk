.class final Lcom/google/common/collect/j0$if;
.super Lcom/google/common/collect/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/else<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field public final do:Lcom/google/common/collect/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j0<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public for:I

.field public final if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j0<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/else;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/j0$if;->do:Lcom/google/common/collect/j0;

    .line 3
    iget-object p1, p1, Lcom/google/common/collect/j0;->values:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/j0$if;->if:Ljava/lang/Object;

    .line 4
    iput p2, p0, Lcom/google/common/collect/j0$if;->for:I

    return-void
.end method

.method private do()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/j0$if;->for:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/j0$if;->do:Lcom/google/common/collect/j0;

    iget v2, v1, Lcom/google/common/collect/j0;->size:I

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/j0$if;->if:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/common/collect/j0;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-static {v2, v0}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/j0$if;->do:Lcom/google/common/collect/j0;

    iget-object v1, p0, Lcom/google/common/collect/j0$if;->if:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/j0;->findEntryByValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/j0$if;->for:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j0$if;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/j0$if;->do()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/j0$if;->for:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/j0$if;->do:Lcom/google/common/collect/j0;

    iget-object v1, v1, Lcom/google/common/collect/j0;->keys:[Ljava/lang/Object;

    aget-object v0, v1, v0

    :goto_0
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/j0$if;->do()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/j0$if;->for:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/j0$if;->do:Lcom/google/common/collect/j0;

    iget-object v2, p0, Lcom/google/common/collect/j0$if;->if:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/common/collect/j0;->putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/j0$if;->do:Lcom/google/common/collect/j0;

    iget-object v2, v2, Lcom/google/common/collect/j0;->keys:[Ljava/lang/Object;

    aget-object v0, v2, v0

    .line 5
    invoke-static {v0, p1}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/j0$if;->do:Lcom/google/common/collect/j0;

    iget v3, p0, Lcom/google/common/collect/j0$if;->for:I

    invoke-static {v2, v3, p1, v1}, Lcom/google/common/collect/j0;->access$400(Lcom/google/common/collect/j0;ILjava/lang/Object;Z)V

    return-object v0
.end method
