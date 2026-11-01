.class public Landroid/support/v4/ue0;
.super Landroid/support/v4/he2;
.source "SourceFile"


# instance fields
.field private for:[I

.field private if:Landroid/support/v4/se0;


# direct methods
.method public constructor <init>(Landroid/support/v4/se0;[B)V
    .locals 9

    invoke-direct {p0}, Landroid/support/v4/he2;-><init>()V

    new-instance v0, Landroid/support/v4/se0;

    invoke-direct {v0, p1}, Landroid/support/v4/se0;-><init>(Landroid/support/v4/se0;)V

    iput-object v0, p0, Landroid/support/v4/ue0;->if:Landroid/support/v4/se0;

    const/16 v0, 0x8

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/se0;->new()I

    move-result v2

    if-le v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    array-length v2, p2

    rem-int/2addr v2, v1

    const-string v3, "Byte array is not an encoded vector over the given finite field."

    if-nez v2, :cond_4

    array-length v2, p2

    div-int/2addr v2, v1

    iput v2, p0, Landroid/support/v4/he2;->do:I

    new-array v1, v2, [I

    iput-object v1, p0, Landroid/support/v4/ue0;->for:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Landroid/support/v4/ue0;->for:[I

    array-length v5, v5

    if-ge v2, v5, :cond_3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_1

    iget-object v6, p0, Landroid/support/v4/ue0;->for:[I

    aget v7, v6, v2

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v5

    or-int/2addr v4, v7

    aput v4, v6, v2

    add-int/lit8 v5, v5, 0x8

    move v4, v8

    goto :goto_2

    :cond_1
    iget-object v5, p0, Landroid/support/v4/ue0;->for:[I

    aget v5, v5, v2

    invoke-virtual {p1, v5}, Landroid/support/v4/se0;->catch(I)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public constructor <init>(Landroid/support/v4/se0;[I)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/he2;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ue0;->if:Landroid/support/v4/se0;

    array-length v0, p2

    iput v0, p0, Landroid/support/v4/he2;->do:I

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget v1, p2, v0

    invoke-virtual {p1, v1}, Landroid/support/v4/se0;->catch(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Element array is not specified over the given finite field."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p2}, Landroid/support/v4/fn0;->do([I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ue0;->for:[I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/ue0;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/he2;-><init>()V

    new-instance v0, Landroid/support/v4/se0;

    iget-object v1, p1, Landroid/support/v4/ue0;->if:Landroid/support/v4/se0;

    invoke-direct {v0, v1}, Landroid/support/v4/se0;-><init>(Landroid/support/v4/se0;)V

    iput-object v0, p0, Landroid/support/v4/ue0;->if:Landroid/support/v4/se0;

    iget v0, p1, Landroid/support/v4/he2;->do:I

    iput v0, p0, Landroid/support/v4/he2;->do:I

    iget-object p1, p1, Landroid/support/v4/ue0;->for:[I

    invoke-static {p1}, Landroid/support/v4/fn0;->do([I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ue0;->for:[I

    return-void
.end method


# virtual methods
.method public case()Landroid/support/v4/se0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ue0;->if:Landroid/support/v4/se0;

    return-object v0
.end method

.method public do(Landroid/support/v4/he2;)Landroid/support/v4/he2;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public else()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ue0;->for:[I

    invoke-static {v0}, Landroid/support/v4/fn0;->do([I)[I

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/support/v4/ue0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/support/v4/ue0;

    iget-object v0, p0, Landroid/support/v4/ue0;->if:Landroid/support/v4/se0;

    iget-object v2, p1, Landroid/support/v4/ue0;->if:Landroid/support/v4/se0;

    invoke-virtual {v0, v2}, Landroid/support/v4/se0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/ue0;->for:[I

    iget-object p1, p1, Landroid/support/v4/ue0;->for:[I

    invoke-static {v0, p1}, Landroid/support/v4/fn0;->if([I[I)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ue0;->if:Landroid/support/v4/se0;

    invoke-virtual {v0}, Landroid/support/v4/se0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/support/v4/ue0;->for:[I

    invoke-static {v1}, Landroid/support/v4/q3;->q([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public if()[B
    .locals 8

    const/16 v0, 0x8

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Landroid/support/v4/ue0;->if:Landroid/support/v4/se0;

    invoke-virtual {v2}, Landroid/support/v4/se0;->new()I

    move-result v2

    if-le v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/support/v4/ue0;->for:[I

    array-length v2, v2

    mul-int v2, v2, v1

    new-array v1, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Landroid/support/v4/ue0;->for:[I

    array-length v5, v5

    if-ge v3, v5, :cond_2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_1

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Landroid/support/v4/ue0;->for:[I

    aget v7, v7, v3

    ushr-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    add-int/lit8 v5, v5, 0x8

    move v4, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public new()Z
    .locals 3

    iget-object v0, p0, Landroid/support/v4/ue0;->for:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/support/v4/ue0;->for:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/ue0;->for:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Landroid/support/v4/ue0;->if:Landroid/support/v4/se0;

    invoke-virtual {v4}, Landroid/support/v4/se0;->new()I

    move-result v4

    if-ge v3, v4, :cond_1

    and-int/lit8 v4, v3, 0x1f

    const/4 v5, 0x1

    shl-int v4, v5, v4

    iget-object v5, p0, Landroid/support/v4/ue0;->for:[I

    aget v5, v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/16 v4, 0x31

    goto :goto_2

    :cond_0
    const/16 v4, 0x30

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try(Landroid/support/v4/fd1;)Landroid/support/v4/he2;
    .locals 4

    invoke-virtual {p1}, Landroid/support/v4/fd1;->for()[I

    move-result-object p1

    iget v0, p0, Landroid/support/v4/he2;->do:I

    array-length v1, p1

    if-ne v0, v1, :cond_1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/ue0;->for:[I

    aget v3, p1, v1

    aget v2, v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/ue0;

    iget-object v1, p0, Landroid/support/v4/ue0;->if:Landroid/support/v4/se0;

    invoke-direct {p1, v1, v0}, Landroid/support/v4/ue0;-><init>(Landroid/support/v4/se0;[I)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "permutation size and vector size mismatch"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
