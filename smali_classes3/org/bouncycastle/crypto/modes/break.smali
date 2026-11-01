.class public Lorg/bouncycastle/crypto/modes/break;
.super Lorg/bouncycastle/crypto/try;
.source "SourceFile"


# static fields
.field private static final case:[B


# instance fields
.field private for:Landroid/support/v4/gr0;

.field private final if:Lorg/bouncycastle/crypto/modes/for;

.field private new:J

.field private try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/modes/break;->case:[B

    return-void

    :array_0
    .array-data 1
        0x69t
        0x0t
        0x72t
        0x22t
        0x64t
        -0x37t
        0x4t
        0x23t
        -0x73t
        0x3at
        -0x25t
        -0x6at
        0x46t
        -0x17t
        0x2at
        -0x3ct
        0x18t
        -0x2t
        -0x54t
        -0x6ct
        0x0t
        -0x13t
        0x7t
        0x12t
        -0x40t
        -0x7at
        -0x24t
        -0x3et
        -0x11t
        0x4ct
        -0x57t
        0x2bt
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/try;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/break;->new:J

    new-instance v0, Lorg/bouncycastle/crypto/modes/for;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/modes/for;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/break;->if:Lorg/bouncycastle/crypto/modes/for;

    return-void
.end method


# virtual methods
.method public do(B)B
    .locals 6

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/break;->new:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v4, 0x400

    rem-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/break;->if:Lorg/bouncycastle/crypto/modes/for;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/try;->if()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/break;->for:Landroid/support/v4/gr0;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/16 v1, 0x20

    new-array v1, v1, [B

    sget-object v3, Lorg/bouncycastle/crypto/modes/break;->case:[B

    invoke-interface {v0, v3, v2, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/16 v4, 0x8

    invoke-interface {v0, v3, v4, v1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/16 v4, 0x10

    invoke-interface {v0, v3, v4, v1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/16 v4, 0x18

    invoke-interface {v0, v3, v4, v1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    new-instance v3, Landroid/support/v4/gr0;

    invoke-direct {v3, v1}, Landroid/support/v4/gr0;-><init>([B)V

    iput-object v3, p0, Lorg/bouncycastle/crypto/modes/break;->for:Landroid/support/v4/gr0;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/break;->if:Lorg/bouncycastle/crypto/modes/for;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/for;->else()[B

    move-result-object v1

    invoke-interface {v0, v1, v2, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/break;->if:Lorg/bouncycastle/crypto/modes/for;

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/modes/break;->try:Z

    new-instance v3, Landroid/support/v4/bc1;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/break;->for:Landroid/support/v4/gr0;

    invoke-direct {v3, v4, v1}, Landroid/support/v4/bc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/crypto/modes/for;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/break;->new:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/break;->new:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/break;->if:Lorg/bouncycastle/crypto/modes/for;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/for;->do(B)B

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/break;->if:Lorg/bouncycastle/crypto/modes/for;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/for;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/G"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/break;->if:Lorg/bouncycastle/crypto/modes/for;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/for;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/break;->new:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/break;->if:Lorg/bouncycastle/crypto/modes/for;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/modes/for;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/break;->try:Z

    instance-of p1, p2, Landroid/support/v4/bc1;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/support/v4/bc1;

    invoke-virtual {p2}, Landroid/support/v4/bc1;->if()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :cond_0
    instance-of p1, p2, Landroid/support/v4/cc1;

    if-eqz p1, :cond_1

    check-cast p2, Landroid/support/v4/cc1;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :cond_1
    instance-of p1, p2, Landroid/support/v4/dc1;

    if-eqz p1, :cond_2

    check-cast p2, Landroid/support/v4/dc1;

    invoke-virtual {p2}, Landroid/support/v4/dc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :cond_2
    check-cast p2, Landroid/support/v4/gr0;

    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/break;->for:Landroid/support/v4/gr0;

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tw;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/break;->if:Lorg/bouncycastle/crypto/modes/for;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/for;->getBlockSize()I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/try;->processBytes([BII[BI)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/break;->if:Lorg/bouncycastle/crypto/modes/for;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/modes/for;->getBlockSize()I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/break;->new:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/break;->if:Lorg/bouncycastle/crypto/modes/for;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/for;->reset()V

    return-void
.end method
