.class public Landroid/support/v4/ds0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private case:[[S

.field private do:I

.field private else:[S

.field private for:I

.field private if:I

.field private new:[[[S

.field private try:[[[S


# direct methods
.method public constructor <init>(BB[[[S[[[S[[S[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Landroid/support/v4/ds0;->do:I

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Landroid/support/v4/ds0;->if:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/support/v4/ds0;->for:I

    iput-object p3, p0, Landroid/support/v4/ds0;->new:[[[S

    iput-object p4, p0, Landroid/support/v4/ds0;->try:[[[S

    iput-object p5, p0, Landroid/support/v4/ds0;->case:[[S

    iput-object p6, p0, Landroid/support/v4/ds0;->else:[S

    return-void
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .locals 5

    const-class v0, S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/ds0;->do:I

    iput p2, p0, Landroid/support/v4/ds0;->if:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/support/v4/ds0;->for:I

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/4 v3, 0x2

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    const/4 v4, 0x0

    aput p2, v2, v4

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[[S

    iput-object p2, p0, Landroid/support/v4/ds0;->new:[[[S

    iget p2, p0, Landroid/support/v4/ds0;->for:I

    iget v2, p0, Landroid/support/v4/ds0;->do:I

    new-array v1, v1, [I

    aput v2, v1, v3

    aput v2, v1, p1

    aput p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[[S

    iput-object p2, p0, Landroid/support/v4/ds0;->try:[[[S

    iget p2, p0, Landroid/support/v4/ds0;->for:I

    iget v1, p0, Landroid/support/v4/ds0;->if:I

    new-array v2, v3, [I

    aput v1, v2, p1

    aput p2, v2, v4

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    iput-object p1, p0, Landroid/support/v4/ds0;->case:[[S

    iget p1, p0, Landroid/support/v4/ds0;->for:I

    new-array p2, p1, [S

    iput-object p2, p0, Landroid/support/v4/ds0;->else:[S

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/support/v4/ds0;->for:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Landroid/support/v4/ds0;->do:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/ds0;->new:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_3
    if-ge p2, p1, :cond_5

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Landroid/support/v4/ds0;->do:I

    if-ge v0, v1, :cond_4

    const/4 v1, 0x0

    :goto_5
    iget v2, p0, Landroid/support/v4/ds0;->do:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroid/support/v4/ds0;->try:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_6
    if-ge p2, p1, :cond_7

    const/4 v0, 0x0

    :goto_7
    iget v1, p0, Landroid/support/v4/ds0;->if:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Landroid/support/v4/ds0;->case:[[S

    aget-object v1, v1, p2

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_7
    :goto_8
    if-ge v4, p1, :cond_8

    iget-object p2, p0, Landroid/support/v4/ds0;->else:[S

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    aput-short v0, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_8
    return-void
.end method


# virtual methods
.method public case()I
    .locals 1

    iget v0, p0, Landroid/support/v4/ds0;->do:I

    return v0
.end method

.method public do()[[[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ds0;->new:[[[S

    return-object v0
.end method

.method public else()I
    .locals 1

    iget v0, p0, Landroid/support/v4/ds0;->if:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Landroid/support/v4/ds0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/support/v4/ds0;

    iget v1, p0, Landroid/support/v4/ds0;->do:I

    invoke-virtual {p1}, Landroid/support/v4/ds0;->case()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/support/v4/ds0;->if:I

    invoke-virtual {p1}, Landroid/support/v4/ds0;->else()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/support/v4/ds0;->for:I

    invoke-virtual {p1}, Landroid/support/v4/ds0;->try()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/support/v4/ds0;->new:[[[S

    invoke-virtual {p1}, Landroid/support/v4/ds0;->do()[[[S

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/cl1;->catch([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/ds0;->try:[[[S

    invoke-virtual {p1}, Landroid/support/v4/ds0;->if()[[[S

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/cl1;->catch([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/ds0;->case:[[S

    invoke-virtual {p1}, Landroid/support/v4/ds0;->new()[[S

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/cl1;->break([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/ds0;->else:[S

    invoke-virtual {p1}, Landroid/support/v4/ds0;->for()[S

    move-result-object p1

    invoke-static {v1, p1}, Landroid/support/v4/cl1;->this([S[S)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public for()[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ds0;->else:[S

    return-object v0
.end method

.method public goto([S)[[S
    .locals 9

    iget v0, p0, Landroid/support/v4/ds0;->for:I

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, S

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iget v2, p0, Landroid/support/v4/ds0;->for:I

    new-array v2, v2, [S

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Landroid/support/v4/ds0;->for:I

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Landroid/support/v4/ds0;->do:I

    if-ge v4, v5, :cond_1

    const/4 v5, 0x0

    :goto_2
    iget v6, p0, Landroid/support/v4/ds0;->do:I

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Landroid/support/v4/ds0;->try:[[[S

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    aget-short v6, v6, v5

    aget-short v7, p1, v4

    invoke-static {v6, v7}, Landroid/support/v4/pe0;->try(SS)S

    move-result v6

    aget-short v7, p1, v5

    invoke-static {v6, v7}, Landroid/support/v4/pe0;->try(SS)S

    move-result v6

    aget-short v7, v2, v3

    invoke-static {v7, v6}, Landroid/support/v4/pe0;->do(SS)S

    move-result v6

    aput-short v6, v2, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_3
    iget v4, p0, Landroid/support/v4/ds0;->for:I

    if-ge v3, v4, :cond_5

    const/4 v4, 0x0

    :goto_4
    iget v5, p0, Landroid/support/v4/ds0;->for:I

    if-ge v4, v5, :cond_4

    const/4 v5, 0x0

    :goto_5
    iget v6, p0, Landroid/support/v4/ds0;->do:I

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Landroid/support/v4/ds0;->new:[[[S

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    aget-short v6, v6, v5

    aget-short v7, p1, v5

    invoke-static {v6, v7}, Landroid/support/v4/pe0;->try(SS)S

    move-result v6

    aget-object v7, v0, v3

    aget-object v8, v0, v3

    aget-short v8, v8, v4

    invoke-static {v8, v6}, Landroid/support/v4/pe0;->do(SS)S

    move-result v6

    aput-short v6, v7, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_6
    iget v4, p0, Landroid/support/v4/ds0;->for:I

    if-ge v3, v4, :cond_7

    const/4 v4, 0x0

    :goto_7
    iget v5, p0, Landroid/support/v4/ds0;->do:I

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Landroid/support/v4/ds0;->case:[[S

    aget-object v5, v5, v3

    aget-short v5, v5, v4

    aget-short v6, p1, v4

    invoke-static {v5, v6}, Landroid/support/v4/pe0;->try(SS)S

    move-result v5

    aget-short v6, v2, v3

    invoke-static {v6, v5}, Landroid/support/v4/pe0;->do(SS)S

    move-result v5

    aput-short v5, v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iget v3, p0, Landroid/support/v4/ds0;->for:I

    if-ge p1, v3, :cond_9

    iget v3, p0, Landroid/support/v4/ds0;->do:I

    :goto_9
    iget v4, p0, Landroid/support/v4/ds0;->if:I

    if-ge v3, v4, :cond_8

    aget-object v4, v0, p1

    iget v5, p0, Landroid/support/v4/ds0;->do:I

    sub-int v6, v3, v5

    iget-object v7, p0, Landroid/support/v4/ds0;->case:[[S

    aget-object v7, v7, p1

    aget-short v7, v7, v3

    aget-object v8, v0, p1

    sub-int v5, v3, v5

    aget-short v5, v8, v5

    invoke-static {v7, v5}, Landroid/support/v4/pe0;->do(SS)S

    move-result v5

    aput-short v5, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iget v3, p0, Landroid/support/v4/ds0;->for:I

    if-ge p1, v3, :cond_a

    aget-short v3, v2, p1

    iget-object v4, p0, Landroid/support/v4/ds0;->else:[S

    aget-short v4, v4, p1

    invoke-static {v3, v4}, Landroid/support/v4/pe0;->do(SS)S

    move-result v3

    aput-short v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_a
    :goto_b
    iget p1, p0, Landroid/support/v4/ds0;->for:I

    if-ge v1, p1, :cond_b

    aget-object v3, v0, v1

    aget-short v4, v2, v1

    aput-short v4, v3, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_b
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/support/v4/ds0;->do:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/support/v4/ds0;->if:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/support/v4/ds0;->for:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/ds0;->new:[[[S

    invoke-static {v1}, Landroid/support/v4/q3;->y([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/ds0;->try:[[[S

    invoke-static {v1}, Landroid/support/v4/q3;->y([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/ds0;->case:[[S

    invoke-static {v1}, Landroid/support/v4/q3;->x([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/ds0;->else:[S

    invoke-static {v1}, Landroid/support/v4/q3;->v([S)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public if()[[[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ds0;->try:[[[S

    return-object v0
.end method

.method public new()[[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ds0;->case:[[S

    return-object v0
.end method

.method public try()I
    .locals 1

    iget v0, p0, Landroid/support/v4/ds0;->for:I

    return v0
.end method
