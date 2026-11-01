.class public Landroid/support/v4/gs;
.super Landroid/support/v4/es;
.source "SourceFile"


# instance fields
.field private case:Ljava/math/BigInteger;

.field private else:Ljava/math/BigInteger;

.field private for:Ljava/math/BigInteger;

.field private goto:Landroid/support/v4/hs;

.field private new:Ljava/math/BigInteger;

.field private try:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Landroid/support/v4/fs;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/support/v4/es;-><init>(ZLandroid/support/v4/fs;)V

    iput-object p2, p0, Landroid/support/v4/gs;->for:Ljava/math/BigInteger;

    iput-object p3, p0, Landroid/support/v4/gs;->new:Ljava/math/BigInteger;

    iput-object p4, p0, Landroid/support/v4/gs;->try:Ljava/math/BigInteger;

    iput-object p5, p0, Landroid/support/v4/gs;->case:Ljava/math/BigInteger;

    iput-object p6, p0, Landroid/support/v4/gs;->else:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public case()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gs;->try:Ljava/math/BigInteger;

    return-object v0
.end method

.method public else()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gs;->case:Ljava/math/BigInteger;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/support/v4/gs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/gs;

    invoke-virtual {v0}, Landroid/support/v4/gs;->new()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/gs;->for:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/gs;->try()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/gs;->new:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/gs;->case()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/gs;->try:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/gs;->else()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/gs;->case:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/gs;->goto()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/gs;->else:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v4/es;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public for()Landroid/support/v4/hs;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gs;->goto:Landroid/support/v4/hs;

    return-object v0
.end method

.method public goto()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gs;->else:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/gs;->for:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/gs;->new:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/gs;->try:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/gs;->case:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/gs;->else:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-super {p0}, Landroid/support/v4/es;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public new()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gs;->for:Ljava/math/BigInteger;

    return-object v0
.end method

.method public this(Landroid/support/v4/hs;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/gs;->goto:Landroid/support/v4/hs;

    return-void
.end method

.method public try()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gs;->new:Ljava/math/BigInteger;

    return-object v0
.end method
