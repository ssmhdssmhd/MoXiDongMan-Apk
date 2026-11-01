.class final Lcom/google/common/collect/finally$else;
.super Lcom/google/common/collect/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/finally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "else"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/else<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final do:Ljava/lang/Object;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final synthetic for:Lcom/google/common/collect/finally;

.field private if:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/finally;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/finally$else;->for:Lcom/google/common/collect/finally;

    invoke-direct {p0}, Lcom/google/common/collect/else;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/finally;->keys:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/finally$else;->do:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/common/collect/finally$else;->if:I

    return-void
.end method

.method private do()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/finally$else;->if:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/finally$else;->for:Lcom/google/common/collect/finally;

    .line 2
    invoke-virtual {v1}, Lcom/google/common/collect/finally;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/finally$else;->do:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/finally$else;->for:Lcom/google/common/collect/finally;

    iget-object v1, v1, Lcom/google/common/collect/finally;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/finally$else;->if:I

    aget-object v1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/finally$else;->for:Lcom/google/common/collect/finally;

    iget-object v1, p0, Lcom/google/common/collect/finally$else;->do:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/finally;->access$400(Lcom/google/common/collect/finally;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/finally$else;->if:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$else;->do:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$else;->for:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/finally$else;->do:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/finally$else;->do()V

    .line 4
    iget v0, p0, Lcom/google/common/collect/finally$else;->if:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/finally$else;->for:Lcom/google/common/collect/finally;

    iget-object v1, v1, Lcom/google/common/collect/finally;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    :goto_0
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$else;->for:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/finally$else;->do:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/finally$else;->do()V

    .line 4
    iget v0, p0, Lcom/google/common/collect/finally$else;->if:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/finally$else;->for:Lcom/google/common/collect/finally;

    iget-object v1, p0, Lcom/google/common/collect/finally$else;->do:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/finally;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/finally$else;->for:Lcom/google/common/collect/finally;

    iget-object v1, v1, Lcom/google/common/collect/finally;->values:[Ljava/lang/Object;

    aget-object v2, v1, v0

    .line 7
    aput-object p1, v1, v0

    return-object v2
.end method
