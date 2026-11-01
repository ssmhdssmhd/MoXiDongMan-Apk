.class public Lorg/bouncycastle/crypto/tls/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# instance fields
.field public case:Z

.field public do:Lorg/bouncycastle/crypto/tls/TlsContext;

.field public for:Lorg/bouncycastle/crypto/StreamCipher;

.field public if:Lorg/bouncycastle/crypto/StreamCipher;

.field public new:Landroid/support/v4/p72;

.field public try:Landroid/support/v4/p72;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v12

    iput-object v7, v0, Lorg/bouncycastle/crypto/tls/k0;->do:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput-boolean v11, v0, Lorg/bouncycastle/crypto/tls/k0;->case:Z

    iput-object v8, v0, Lorg/bouncycastle/crypto/tls/k0;->if:Lorg/bouncycastle/crypto/StreamCipher;

    iput-object v9, v0, Lorg/bouncycastle/crypto/tls/k0;->for:Lorg/bouncycastle/crypto/StreamCipher;

    mul-int/lit8 v1, v10, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int v13, v1, v2

    invoke-static {v7, v13}, Lorg/bouncycastle/crypto/tls/l0;->try(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B

    move-result-object v14

    new-instance v15, Landroid/support/v4/p72;

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v14

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/p72;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    const/4 v6, 0x0

    add-int/lit8 v16, v1, 0x0

    new-instance v5, Landroid/support/v4/p72;

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v17

    move-object v1, v5

    move-object/from16 v3, p5

    move-object v7, v5

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/p72;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int v1, v16, v1

    new-instance v2, Landroid/support/v4/gr0;

    invoke-direct {v2, v14, v1, v10}, Landroid/support/v4/gr0;-><init>([BII)V

    add-int/2addr v1, v10

    new-instance v3, Landroid/support/v4/gr0;

    invoke-direct {v3, v14, v1, v10}, Landroid/support/v4/gr0;-><init>([BII)V

    add-int/2addr v1, v10

    if-ne v1, v13, :cond_2

    if-eqz v12, :cond_0

    iput-object v7, v0, Lorg/bouncycastle/crypto/tls/k0;->new:Landroid/support/v4/p72;

    iput-object v15, v0, Lorg/bouncycastle/crypto/tls/k0;->try:Landroid/support/v4/p72;

    iput-object v9, v0, Lorg/bouncycastle/crypto/tls/k0;->if:Lorg/bouncycastle/crypto/StreamCipher;

    iput-object v8, v0, Lorg/bouncycastle/crypto/tls/k0;->for:Lorg/bouncycastle/crypto/StreamCipher;

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto :goto_0

    :cond_0
    iput-object v15, v0, Lorg/bouncycastle/crypto/tls/k0;->new:Landroid/support/v4/p72;

    iput-object v7, v0, Lorg/bouncycastle/crypto/tls/k0;->try:Landroid/support/v4/p72;

    iput-object v8, v0, Lorg/bouncycastle/crypto/tls/k0;->if:Lorg/bouncycastle/crypto/StreamCipher;

    iput-object v9, v0, Lorg/bouncycastle/crypto/tls/k0;->for:Lorg/bouncycastle/crypto/StreamCipher;

    :goto_0
    if-eqz v11, :cond_1

    const/16 v1, 0x8

    new-array v1, v1, [B

    new-instance v4, Landroid/support/v4/bc1;

    invoke-direct {v4, v2, v1}, Landroid/support/v4/bc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    new-instance v2, Landroid/support/v4/bc1;

    invoke-direct {v2, v3, v1}, Landroid/support/v4/bc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v3, v2

    move-object v2, v4

    :cond_1
    iget-object v1, v0, Lorg/bouncycastle/crypto/tls/k0;->if:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v4, 0x1

    invoke-interface {v1, v4, v2}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/tls/k0;->for:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_2
    new-instance v1, Landroid/support/v4/n72;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw v1
.end method


# virtual methods
.method public decodeCiphertext(JS[BII)[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v10, p0

    move/from16 v6, p6

    iget-boolean v0, v10, Lorg/bouncycastle/crypto/tls/k0;->case:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v10, Lorg/bouncycastle/crypto/tls/k0;->for:Lorg/bouncycastle/crypto/StreamCipher;

    move-wide v7, p1

    invoke-virtual {p0, v0, v11, v7, v8}, Lorg/bouncycastle/crypto/tls/k0;->if(Lorg/bouncycastle/crypto/StreamCipher;ZJ)V

    goto :goto_0

    :cond_0
    move-wide v7, p1

    :goto_0
    iget-object v0, v10, Lorg/bouncycastle/crypto/tls/k0;->try:Landroid/support/v4/p72;

    invoke-virtual {v0}, Landroid/support/v4/p72;->try()I

    move-result v0

    if-lt v6, v0, :cond_1

    sub-int v12, v6, v0

    new-array v13, v6, [B

    iget-object v0, v10, Lorg/bouncycastle/crypto/tls/k0;->for:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v5, 0x0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move-object v4, v13

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p3

    move v5, v12

    move/from16 v6, p6

    move-object v7, v13

    move v8, v9

    move v9, v12

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/crypto/tls/k0;->do(JS[BII[BII)V

    invoke-static {v13, v11, v12}, Landroid/support/v4/q3;->instanceof([BII)[B

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public do(JS[BII[BII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4, p5, p6}, Landroid/support/v4/q3;->instanceof([BII)[B

    move-result-object v0

    move-object v1, p0

    iget-object v2, v1, Lorg/bouncycastle/crypto/tls/k0;->try:Landroid/support/v4/p72;

    move-wide v3, p1

    move v5, p3

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/p72;->do(JS[BII)[B

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 12

    move-object v0, p0

    iget-boolean v1, v0, Lorg/bouncycastle/crypto/tls/k0;->case:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/bouncycastle/crypto/tls/k0;->if:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v2, 0x1

    move-wide v4, p1

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/bouncycastle/crypto/tls/k0;->if(Lorg/bouncycastle/crypto/StreamCipher;ZJ)V

    goto :goto_0

    :cond_0
    move-wide v4, p1

    :goto_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/tls/k0;->new:Landroid/support/v4/p72;

    invoke-virtual {v1}, Landroid/support/v4/p72;->try()I

    move-result v1

    add-int v1, p6, v1

    new-array v1, v1, [B

    iget-object v6, v0, Lorg/bouncycastle/crypto/tls/k0;->if:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v11, 0x0

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object v10, v1

    invoke-interface/range {v6 .. v11}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    iget-object v3, v0, Lorg/bouncycastle/crypto/tls/k0;->new:Landroid/support/v4/p72;

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/support/v4/p72;->do(JS[BII)[B

    move-result-object v3

    iget-object v2, v0, Lorg/bouncycastle/crypto/tls/k0;->if:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v4, 0x0

    array-length v5, v3

    move-object v6, v1

    move/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    return-object v1
.end method

.method public getPlaintextLimit(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/k0;->new:Landroid/support/v4/p72;

    invoke-virtual {v0}, Landroid/support/v4/p72;->try()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public if(Lorg/bouncycastle/crypto/StreamCipher;ZJ)V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p3, p4, v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->E0(J[BI)V

    new-instance p3, Landroid/support/v4/bc1;

    const/4 p4, 0x0

    invoke-direct {p3, p4, v0}, Landroid/support/v4/bc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {p1, p2, p3}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method
