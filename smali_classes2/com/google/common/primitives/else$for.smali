.class public final Lcom/google/common/primitives/else$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/lf;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# instance fields
.field private do:[I

.field private if:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/common/primitives/else$for;->if:I

    .line 3
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/primitives/else$for;->do:[I

    return-void
.end method

.method private else(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/primitives/else$for;->if:I

    add-int/2addr v0, p1

    .line 2
    iget-object p1, p0, Lcom/google/common/primitives/else$for;->do:[I

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 3
    array-length p1, p1

    invoke-static {p1, v0}, Lcom/google/common/primitives/else$for;->goto(II)I

    move-result p1

    new-array p1, p1, [I

    .line 4
    iget-object v0, p0, Lcom/google/common/primitives/else$for;->do:[I

    iget v1, p0, Lcom/google/common/primitives/else$for;->if:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object p1, p0, Lcom/google/common/primitives/else$for;->do:[I

    :cond_0
    return-void
.end method

.method private static goto(II)I
    .locals 1

    if-ltz p1, :cond_2

    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    if-ge p0, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    :cond_0
    if-gez p0, :cond_1

    const p0, 0x7fffffff

    :cond_1
    return p0

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "cannot store more than MAX_VALUE elements"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public case()Lcom/google/common/primitives/else;
    .locals 5
    .annotation runtime Landroid/support/v4/il;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/primitives/else$for;->if:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/primitives/else;->access$200()Lcom/google/common/primitives/else;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/else;

    iget-object v1, p0, Lcom/google/common/primitives/else$for;->do:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/primitives/else$for;->if:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/else;-><init>([IIILcom/google/common/primitives/else$do;)V

    :goto_0
    return-object v0
.end method

.method public do(I)Lcom/google/common/primitives/else$for;
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/primitives/else$for;->else(I)V

    .line 2
    iget-object v1, p0, Lcom/google/common/primitives/else$for;->do:[I

    iget v2, p0, Lcom/google/common/primitives/else$for;->if:I

    aput p1, v1, v2

    add-int/2addr v2, v0

    .line 3
    iput v2, p0, Lcom/google/common/primitives/else$for;->if:I

    return-object p0
.end method

.method public for(Ljava/lang/Iterable;)Lcom/google/common/primitives/else$for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/else$for;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/else$for;->new(Ljava/util/Collection;)Lcom/google/common/primitives/else$for;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/else$for;->do(I)Lcom/google/common/primitives/else$for;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public if(Lcom/google/common/primitives/else;)Lcom/google/common/primitives/else$for;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/common/primitives/else;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/else$for;->else(I)V

    .line 2
    invoke-static {p1}, Lcom/google/common/primitives/else;->access$000(Lcom/google/common/primitives/else;)[I

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/primitives/else;->access$100(Lcom/google/common/primitives/else;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/primitives/else$for;->do:[I

    iget v3, p0, Lcom/google/common/primitives/else$for;->if:I

    invoke-virtual {p1}, Lcom/google/common/primitives/else;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget v0, p0, Lcom/google/common/primitives/else$for;->if:I

    invoke-virtual {p1}, Lcom/google/common/primitives/else;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/primitives/else$for;->if:I

    return-object p0
.end method

.method public new(Ljava/util/Collection;)Lcom/google/common/primitives/else$for;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/else$for;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/else$for;->else(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, Lcom/google/common/primitives/else$for;->do:[I

    iget v2, p0, Lcom/google/common/primitives/else$for;->if:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/primitives/else$for;->if:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public try([I)Lcom/google/common/primitives/else$for;
    .locals 4

    .line 1
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/common/primitives/else$for;->else(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/primitives/else$for;->do:[I

    iget v1, p0, Lcom/google/common/primitives/else$for;->if:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget v0, p0, Lcom/google/common/primitives/else$for;->if:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/primitives/else$for;->if:I

    return-object p0
.end method
