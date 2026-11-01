.class public Lorg/bouncycastle/crypto/tls/z;
.super Lorg/bouncycastle/crypto/tls/new;
.source "SourceFile"


# instance fields
.field public break:[S

.field public case:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

.field public catch:[B

.field public class:[B

.field public const:Landroid/support/v4/pu;

.field public else:Landroid/support/v4/ou;

.field public final:Landroid/support/v4/ru;

.field public goto:[I

.field public import:Landroid/support/v4/ck1;

.field public native:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

.field public new:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

.field public public:[B

.field public super:Landroid/support/v4/h50;

.field public this:[S

.field public throw:Landroid/support/v4/k50;

.field public try:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

.field public while:Landroid/support/v4/a4;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;Landroid/support/v4/ou;[I[S[S)V
    .locals 10

    new-instance v5, Landroid/support/v4/wy;

    invoke-direct {v5}, Landroid/support/v4/wy;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/crypto/tls/z;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Landroid/support/v4/ou;[I[S[S)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Landroid/support/v4/ou;[I[S[S)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/new;-><init>(ILjava/util/Vector;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/z;->catch:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/z;->class:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/z;->const:Landroid/support/v4/pu;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/z;->final:Landroid/support/v4/ru;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/z;->super:Landroid/support/v4/h50;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/z;->throw:Landroid/support/v4/k50;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/z;->while:Landroid/support/v4/a4;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/z;->import:Landroid/support/v4/ck1;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/z;->native:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported key exchange algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :pswitch_0
    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/z;->new:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/z;->try:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

    iput-object p5, p0, Lorg/bouncycastle/crypto/tls/z;->case:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

    iput-object p6, p0, Lorg/bouncycastle/crypto/tls/z;->else:Landroid/support/v4/ou;

    iput-object p7, p0, Lorg/bouncycastle/crypto/tls/z;->goto:[I

    iput-object p8, p0, Lorg/bouncycastle/crypto/tls/z;->this:[S

    iput-object p9, p0, Lorg/bouncycastle/crypto/tls/z;->break:[S

    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public for(Landroid/support/v4/ck1;)Landroid/support/v4/ck1;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/ck1;->if()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->catch:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->new:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->skipIdentityHint()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->new:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->notifyIdentityHint([B)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->new:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->getPSKIdentity()[B

    move-result-object v0

    const/16 v1, 0x50

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/z;->new:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->getPSK()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/z;->class:[B

    if-eqz v2, :cond_4

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v1

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/mw1;->break:[B

    iget v0, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->else:Landroid/support/v4/ou;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/q;->catch(Ljava/security/SecureRandom;Landroid/support/v4/ou;Ljava/io/OutputStream;)Landroid/support/v4/pu;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/z;->const:Landroid/support/v4/pu;

    goto :goto_1

    :cond_1
    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->break:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/z;->throw:Landroid/support/v4/k50;

    invoke-virtual {v2}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/s;->const(Ljava/security/SecureRandom;[SLandroid/support/v4/e40;Ljava/io/OutputStream;)Landroid/support/v4/h50;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/z;->super:Landroid/support/v4/h50;

    goto :goto_1

    :cond_2
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->import:Landroid/support/v4/ck1;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/d0;->do(Lorg/bouncycastle/crypto/tls/TlsContext;Landroid/support/v4/ck1;Ljava/io/OutputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/z;->public:[B

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_5
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public generatePremasterSecret()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->class:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/z;->if(I)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/z;->class:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->class:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->class:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/support/v4/q3;->c([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->class:[B

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public generateServerKeyExchange()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->try:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;->getHint()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->catch:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/z;->requiresServerKeyExchange()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->catch:[B

    if-nez v1, :cond_1

    sget-object v1, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->else:Landroid/support/v4/ou;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/z;->else:Landroid/support/v4/ou;

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/q;->class(Ljava/security/SecureRandom;Landroid/support/v4/ou;Ljava/io/OutputStream;)Landroid/support/v4/pu;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->const:Landroid/support/v4/pu;

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :cond_3
    const/16 v2, 0x18

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/z;->goto:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/z;->this:[S

    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/crypto/tls/s;->final(Ljava/security/SecureRandom;[I[SLjava/io/OutputStream;)Landroid/support/v4/h50;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->super:Landroid/support/v4/h50;

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public if(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/16 v1, 0x50

    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/z;->const:Landroid/support/v4/pu;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->final:Landroid/support/v4/ru;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/q;->new(Landroid/support/v4/ru;Landroid/support/v4/pu;)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    const/16 v2, 0x18

    if-ne v0, v2, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/z;->super:Landroid/support/v4/h50;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->throw:Landroid/support/v4/k50;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/s;->new(Landroid/support/v4/k50;Landroid/support/v4/h50;)[B

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/z;->public:[B

    return-object p1

    :cond_4
    new-array p1, p1, [B

    return-object p1
.end method

.method public processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->P(Ljava/io/InputStream;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->try:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;->getPSK([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->class:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v1

    iput-object v0, v1, Landroid/support/v4/mw1;->break:[B

    iget v0, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/ru;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/q;->while(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->else:Landroid/support/v4/ou;

    invoke-direct {v0, p1, v1}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->final:Landroid/support/v4/ru;

    goto :goto_1

    :cond_0
    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->R(Ljava/io/InputStream;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->super:Landroid/support/v4/h50;

    invoke-virtual {v0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->break:[S

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/crypto/tls/s;->catch([SLandroid/support/v4/e40;[B)Landroid/support/v4/k50;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/s;->strictfp(Landroid/support/v4/k50;)Landroid/support/v4/k50;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/z;->throw:Landroid/support/v4/k50;

    goto :goto_1

    :cond_1
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/support/v4/a22;->new(Ljava/io/InputStream;)[B

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->P(Ljava/io/InputStream;)[B

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->native:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;->decryptPreMasterSecret([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/z;->public:[B

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x73

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public processServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/break;->for(I)Landroid/support/v4/rg;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/rg;->const()Lorg/bouncycastle/asn1/x509/try;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lorg/bouncycastle/crypto/util/const;->for(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->while:Landroid/support/v4/a4;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Landroid/support/v4/a4;->do()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->while:Landroid/support/v4/a4;

    check-cast v1, Landroid/support/v4/ck1;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/z;->for(Landroid/support/v4/ck1;)Landroid/support/v4/ck1;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->import:Landroid/support/v4/ck1;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->k0(Landroid/support/v4/rg;I)V

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/new;->processServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x2b

    invoke-direct {v0, v1, p1}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x2a

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_2
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/break;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/z;->processServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/z;->native:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->P(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->catch:[B

    iget v0, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->case:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/q;->return(Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Ljava/io/InputStream;)Landroid/support/v4/ou;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->else:Landroid/support/v4/ou;

    new-instance v0, Landroid/support/v4/ru;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/q;->while(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->else:Landroid/support/v4/ou;

    invoke-direct {v0, p1, v1}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->final:Landroid/support/v4/ru;

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/z;->goto:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->this:[S

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/s;->extends([I[SLjava/io/InputStream;)Landroid/support/v4/e40;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->R(Ljava/io/InputStream;)[B

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/z;->this:[S

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/crypto/tls/s;->catch([SLandroid/support/v4/e40;[B)Landroid/support/v4/k50;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/s;->strictfp(Landroid/support/v4/k50;)Landroid/support/v4/k50;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/z;->throw:Landroid/support/v4/k50;

    :cond_1
    :goto_0
    return-void
.end method

.method public requiresServerKeyExchange()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public validateCertificateRequest(Lorg/bouncycastle/crypto/tls/catch;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method
