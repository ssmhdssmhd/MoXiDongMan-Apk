.class public abstract Landroid/support/v4/cx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field public static final else:I = 0x10

.field public static final goto:I = 0x20

.field public static final this:I = -0x61c88647


# instance fields
.field public case:I

.field public do:Z

.field public for:I

.field public if:[I

.field public new:I

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final(II)I
    .locals 1

    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static super(II)I
    .locals 1

    ushr-int v0, p0, p1

    neg-int p1, p1

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final break(IIII)V
    .locals 3

    xor-int/lit8 v0, p1, -0x1

    xor-int/2addr p1, p2

    xor-int v1, p3, p1

    or-int/2addr p3, v0

    xor-int/2addr p3, p4

    xor-int v2, v1, p3

    iput v2, p0, Landroid/support/v4/cx1;->new:I

    and-int v2, v1, p3

    xor-int/2addr p1, v2

    or-int v2, p2, p1

    xor-int/2addr p3, v2

    iput p3, p0, Landroid/support/v4/cx1;->case:I

    or-int/2addr p2, p3

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->for:I

    and-int p1, p4, v0

    xor-int/2addr p2, v1

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->try:I

    return-void
.end method

.method public final case(IIII)V
    .locals 3

    xor-int v0, p2, p4

    xor-int/lit8 v1, v0, -0x1

    xor-int v2, p1, p3

    xor-int/2addr p3, v0

    and-int/2addr p2, p3

    xor-int/2addr p2, v2

    iput p2, p0, Landroid/support/v4/cx1;->for:I

    or-int/2addr p1, v1

    xor-int/2addr p1, p4

    or-int/2addr p1, v2

    xor-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/cx1;->case:I

    xor-int/lit8 p3, p3, -0x1

    or-int/2addr p1, p2

    xor-int p2, p3, p1

    iput p2, p0, Landroid/support/v4/cx1;->new:I

    and-int p2, p4, p3

    xor-int/2addr p1, v2

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->try:I

    return-void
.end method

.method public final catch(IIII)V
    .locals 4

    and-int v0, p1, p2

    or-int/2addr v0, p3

    or-int v1, p1, p2

    and-int/2addr v1, p4

    xor-int v2, v0, v1

    iput v2, p0, Landroid/support/v4/cx1;->case:I

    xor-int/lit8 v3, p4, -0x1

    xor-int/2addr p2, v1

    xor-int v1, v2, v3

    or-int/2addr v1, p2

    xor-int/2addr v1, p1

    iput v1, p0, Landroid/support/v4/cx1;->new:I

    xor-int/2addr p2, p3

    or-int p3, p4, v1

    xor-int/2addr p2, p3

    iput p2, p0, Landroid/support/v4/cx1;->for:I

    xor-int p3, v0, v1

    and-int/2addr p1, v2

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    iput p1, p0, Landroid/support/v4/cx1;->try:I

    return-void
.end method

.method public final class()V
    .locals 5

    iget v0, p0, Landroid/support/v4/cx1;->try:I

    const/16 v1, 0x16

    invoke-static {v0, v1}, Landroid/support/v4/cx1;->super(II)I

    move-result v0

    iget v1, p0, Landroid/support/v4/cx1;->case:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/cx1;->new:I

    const/4 v2, 0x7

    shl-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/cx1;->for:I

    const/4 v3, 0x5

    invoke-static {v1, v3}, Landroid/support/v4/cx1;->super(II)I

    move-result v1

    iget v3, p0, Landroid/support/v4/cx1;->new:I

    xor-int/2addr v1, v3

    iget v3, p0, Landroid/support/v4/cx1;->case:I

    xor-int/2addr v1, v3

    invoke-static {v3, v2}, Landroid/support/v4/cx1;->super(II)I

    move-result v2

    iget v3, p0, Landroid/support/v4/cx1;->new:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/v4/cx1;->super(II)I

    move-result v3

    xor-int/2addr v2, v0

    shl-int/lit8 v4, v1, 0x3

    xor-int/2addr v2, v4

    iput v2, p0, Landroid/support/v4/cx1;->case:I

    xor-int v2, v3, v1

    xor-int/2addr v2, v0

    iput v2, p0, Landroid/support/v4/cx1;->new:I

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/support/v4/cx1;->super(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/cx1;->try:I

    const/16 v0, 0xd

    invoke-static {v1, v0}, Landroid/support/v4/cx1;->super(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/cx1;->for:I

    return-void
.end method

.method public abstract const([B)[I
.end method

.method public final do()V
    .locals 5

    iget v0, p0, Landroid/support/v4/cx1;->for:I

    const/16 v1, 0xd

    invoke-static {v0, v1}, Landroid/support/v4/cx1;->final(II)I

    move-result v0

    iget v1, p0, Landroid/support/v4/cx1;->try:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/support/v4/cx1;->final(II)I

    move-result v1

    iget v2, p0, Landroid/support/v4/cx1;->new:I

    xor-int/2addr v2, v0

    xor-int/2addr v2, v1

    iget v3, p0, Landroid/support/v4/cx1;->case:I

    xor-int/2addr v3, v1

    shl-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/support/v4/cx1;->final(II)I

    move-result v2

    iput v2, p0, Landroid/support/v4/cx1;->new:I

    const/4 v2, 0x7

    invoke-static {v3, v2}, Landroid/support/v4/cx1;->final(II)I

    move-result v3

    iput v3, p0, Landroid/support/v4/cx1;->case:I

    iget v4, p0, Landroid/support/v4/cx1;->new:I

    xor-int/2addr v0, v4

    xor-int/2addr v0, v3

    const/4 v3, 0x5

    invoke-static {v0, v3}, Landroid/support/v4/cx1;->final(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/cx1;->for:I

    iget v0, p0, Landroid/support/v4/cx1;->case:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/cx1;->new:I

    shl-int/2addr v1, v2

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    invoke-static {v0, v1}, Landroid/support/v4/cx1;->final(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/cx1;->try:I

    return-void
.end method

.method public final else(IIII)V
    .locals 3

    or-int v0, p1, p2

    xor-int v1, p2, p3

    and-int/2addr p2, v1

    xor-int/2addr p1, p2

    xor-int p2, p3, p1

    or-int p3, p4, p1

    xor-int v2, v1, p3

    iput v2, p0, Landroid/support/v4/cx1;->for:I

    or-int/2addr p3, v1

    xor-int/2addr p3, p4

    xor-int/2addr p2, p3

    iput p2, p0, Landroid/support/v4/cx1;->try:I

    xor-int p2, v0, p3

    and-int p3, v2, p2

    xor-int/2addr p1, p3

    iput p1, p0, Landroid/support/v4/cx1;->case:I

    xor-int/2addr p2, v2

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->new:I

    return-void
.end method

.method public abstract for([BI[BI)V
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Serpent"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public final goto(IIII)V
    .locals 2

    or-int v0, p3, p4

    and-int/2addr v0, p1

    xor-int/2addr p2, v0

    and-int v0, p1, p2

    xor-int/2addr p3, v0

    xor-int v0, p4, p3

    iput v0, p0, Landroid/support/v4/cx1;->new:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p3, v0

    xor-int/2addr p3, p2

    iput p3, p0, Landroid/support/v4/cx1;->case:I

    or-int v1, v0, p1

    xor-int/2addr p4, v1

    xor-int/2addr p3, p4

    iput p3, p0, Landroid/support/v4/cx1;->for:I

    and-int/2addr p2, p4

    xor-int/2addr p1, v0

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->try:I

    return-void
.end method

.method public abstract if([BI[BI)V
.end method

.method public final import(IIII)V
    .locals 4

    xor-int/lit8 v0, p1, -0x1

    xor-int v1, p2, p4

    and-int v2, p3, v0

    xor-int/2addr v2, v1

    iput v2, p0, Landroid/support/v4/cx1;->for:I

    xor-int v3, p3, v0

    xor-int/2addr p3, v2

    and-int/2addr p2, p3

    xor-int p3, v3, p2

    iput p3, p0, Landroid/support/v4/cx1;->case:I

    or-int/2addr p2, p4

    or-int/2addr v2, v3

    and-int/2addr p2, v2

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->try:I

    xor-int p2, v1, p3

    or-int p3, p4, v0

    xor-int/2addr p1, p3

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->new:I

    return-void
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v0, p2, Landroid/support/v4/gr0;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/cx1;->do:Z

    check-cast p2, Landroid/support/v4/gr0;

    invoke-virtual {p2}, Landroid/support/v4/gr0;->do()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/cx1;->const([B)[I

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/cx1;->if:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/cx1;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final native(IIII)V
    .locals 3

    xor-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr p1, p4

    xor-int/2addr p3, p4

    and-int v2, v0, p1

    or-int/2addr v1, v2

    xor-int v2, p3, v1

    iput v2, p0, Landroid/support/v4/cx1;->try:I

    xor-int/2addr p1, p2

    xor-int/2addr p1, v1

    and-int v1, p3, p1

    xor-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/cx1;->for:I

    and-int/2addr v0, v2

    xor-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/cx1;->new:I

    or-int p1, p2, p4

    xor-int p2, p3, v0

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->case:I

    return-void
.end method

.method public final new(IIII)V
    .locals 3

    xor-int/lit8 v0, p1, -0x1

    xor-int/2addr p2, p1

    or-int v1, v0, p2

    xor-int/2addr v1, p4

    xor-int/2addr p3, v1

    xor-int v2, p2, p3

    iput v2, p0, Landroid/support/v4/cx1;->try:I

    and-int/2addr p2, p4

    xor-int/2addr p2, v0

    and-int p4, v2, p2

    xor-int/2addr p4, v1

    iput p4, p0, Landroid/support/v4/cx1;->new:I

    and-int/2addr p1, v1

    or-int/2addr p4, p3

    xor-int/2addr p1, p4

    iput p1, p0, Landroid/support/v4/cx1;->case:I

    xor-int/2addr p2, p3

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->for:I

    return-void
.end method

.method public final processBlock([BI[BI)I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/cx1;->if:[I

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/cx1;->do:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/cx1;->for([BI[BI)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/cx1;->if([BI[BI)V

    :goto_0
    const/16 p1, 0x10

    return p1

    :cond_1
    new-instance p1, Landroid/support/v4/f91;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Landroid/support/v4/f91;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Landroid/support/v4/tw;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/cx1;->getAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not initialised"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final public(IIII)V
    .locals 2

    xor-int v0, p1, p4

    and-int/2addr p4, v0

    xor-int/2addr p3, p4

    or-int p4, p2, p3

    xor-int v1, v0, p4

    iput v1, p0, Landroid/support/v4/cx1;->case:I

    xor-int/lit8 p2, p2, -0x1

    or-int v1, v0, p2

    xor-int/2addr v1, p3

    iput v1, p0, Landroid/support/v4/cx1;->for:I

    and-int/2addr v1, p1

    xor-int/2addr p2, v0

    and-int/2addr p4, p2

    xor-int/2addr p4, v1

    iput p4, p0, Landroid/support/v4/cx1;->try:I

    xor-int/2addr p1, p3

    and-int/2addr p2, p4

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->new:I

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public final return(IIII)V
    .locals 3

    xor-int/lit8 v0, p1, -0x1

    xor-int v1, p1, p2

    xor-int/2addr p1, p4

    xor-int/2addr p3, v0

    or-int v2, v1, p1

    xor-int/2addr p3, v2

    iput p3, p0, Landroid/support/v4/cx1;->for:I

    and-int/2addr p4, p3

    xor-int v2, v1, p3

    xor-int/2addr v2, p4

    iput v2, p0, Landroid/support/v4/cx1;->new:I

    or-int/2addr p3, v0

    or-int v0, v1, p4

    xor-int/2addr p1, p3

    xor-int p3, v0, p1

    iput p3, p0, Landroid/support/v4/cx1;->try:I

    xor-int/2addr p2, p4

    and-int/2addr p1, v2

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->case:I

    return-void
.end method

.method public final static(IIII)V
    .locals 2

    xor-int/lit8 v0, p1, -0x1

    xor-int/2addr p1, p4

    xor-int v1, p2, p1

    or-int/2addr v0, p1

    xor-int/2addr p3, v0

    xor-int/2addr p2, p3

    iput p2, p0, Landroid/support/v4/cx1;->new:I

    or-int/2addr p1, p2

    xor-int/2addr p1, p4

    and-int p2, p3, p1

    xor-int/2addr p2, v1

    iput p2, p0, Landroid/support/v4/cx1;->try:I

    xor-int/2addr p1, p3

    xor-int/2addr p2, p1

    iput p2, p0, Landroid/support/v4/cx1;->for:I

    xor-int/lit8 p2, p3, -0x1

    and-int/2addr p1, v1

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->case:I

    return-void
.end method

.method public final switch(IIII)V
    .locals 2

    xor-int v0, p2, p3

    and-int/2addr p3, v0

    xor-int/2addr p3, p4

    xor-int v1, p1, p3

    or-int/2addr p4, v0

    and-int/2addr p4, v1

    xor-int/2addr p2, p4

    iput p2, p0, Landroid/support/v4/cx1;->new:I

    or-int/2addr p2, p3

    and-int/2addr p1, v1

    xor-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/cx1;->case:I

    xor-int/2addr p2, v1

    and-int p4, p1, p2

    xor-int/2addr p3, p4

    iput p3, p0, Landroid/support/v4/cx1;->try:I

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p3

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->for:I

    return-void
.end method

.method public final this(IIII)V
    .locals 5

    xor-int/lit8 v0, p3, -0x1

    and-int v1, p2, v0

    xor-int/2addr v1, p4

    and-int v2, p1, v1

    xor-int v3, p2, v0

    xor-int/2addr v3, v2

    iput v3, p0, Landroid/support/v4/cx1;->case:I

    or-int/2addr v3, p2

    and-int v4, p1, v3

    xor-int/2addr v1, v4

    iput v1, p0, Landroid/support/v4/cx1;->new:I

    or-int/2addr p4, p1

    xor-int/2addr v0, v3

    xor-int/2addr v0, p4

    iput v0, p0, Landroid/support/v4/cx1;->for:I

    and-int/2addr p2, p4

    xor-int/2addr p1, p3

    or-int/2addr p1, v2

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->try:I

    return-void
.end method

.method public final throw(IIII)V
    .locals 3

    xor-int v0, p1, p4

    xor-int v1, p3, v0

    xor-int v2, p2, v1

    and-int/2addr p4, p1

    xor-int/2addr p4, v2

    iput p4, p0, Landroid/support/v4/cx1;->case:I

    and-int/2addr p2, v0

    xor-int/2addr p1, p2

    or-int p2, p3, p1

    xor-int/2addr p2, v2

    iput p2, p0, Landroid/support/v4/cx1;->try:I

    xor-int p2, v1, p1

    and-int/2addr p2, p4

    xor-int/lit8 p3, v1, -0x1

    xor-int/2addr p3, p2

    iput p3, p0, Landroid/support/v4/cx1;->new:I

    xor-int/lit8 p1, p1, -0x1

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->for:I

    return-void
.end method

.method public final try(IIII)V
    .locals 1

    xor-int/2addr p4, p2

    and-int v0, p2, p4

    xor-int/2addr p1, v0

    xor-int v0, p4, p1

    xor-int/2addr p3, v0

    iput p3, p0, Landroid/support/v4/cx1;->case:I

    and-int/2addr p4, p1

    xor-int/2addr p2, p4

    or-int p4, p3, p2

    xor-int/2addr p1, p4

    iput p1, p0, Landroid/support/v4/cx1;->new:I

    xor-int/lit8 p1, p1, -0x1

    xor-int/2addr p2, p3

    xor-int p3, p1, p2

    iput p3, p0, Landroid/support/v4/cx1;->for:I

    or-int/2addr p1, p2

    xor-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/cx1;->try:I

    return-void
.end method

.method public final while(IIII)V
    .locals 1

    xor-int/lit8 v0, p1, -0x1

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    xor-int/2addr p1, p3

    xor-int p3, p4, p1

    iput p3, p0, Landroid/support/v4/cx1;->try:I

    or-int/2addr p4, v0

    xor-int/2addr p2, p4

    xor-int/2addr p3, v0

    and-int p4, p1, p2

    xor-int/2addr p4, p3

    iput p4, p0, Landroid/support/v4/cx1;->case:I

    xor-int/2addr p2, p1

    xor-int/2addr p4, p2

    iput p4, p0, Landroid/support/v4/cx1;->new:I

    and-int/2addr p2, p3

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/cx1;->for:I

    return-void
.end method
