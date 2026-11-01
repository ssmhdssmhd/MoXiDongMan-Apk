.class public Lorg/bouncycastle/crypto/tls/i0;
.super Lorg/bouncycastle/crypto/tls/a0;
.source "SourceFile"


# instance fields
.field public n:Lorg/bouncycastle/crypto/tls/TlsServer;

.field public o:Lorg/bouncycastle/crypto/tls/h0;

.field public p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

.field public q:Lorg/bouncycastle/crypto/tls/TlsCredentials;

.field public r:Lorg/bouncycastle/crypto/tls/catch;

.field public s:S

.field public t:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/a0;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->o:Lorg/bouncycastle/crypto/tls/h0;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->q:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    const/4 p2, -0x1

    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/i0;->s:S

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->t:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/a0;-><init>(Ljava/security/SecureRandom;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->o:Lorg/bouncycastle/crypto/tls/h0;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->q:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    const/4 v0, -0x1

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/i0;->s:S

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->t:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method


# virtual methods
.method public A(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/break;->else(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/break;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/i0;->z(Lorg/bouncycastle/crypto/tls/break;)V

    return-void
.end method

.method public B(Ljava/io/ByteArrayInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/volatile;->new(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/volatile;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    const/16 p1, 0x33

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/volatile;->if()Lorg/bouncycastle/crypto/tls/i;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/l0;->w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/catch;->new()Ljava/util/Vector;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/l0;->m0(Ljava/util/Vector;Lorg/bouncycastle/crypto/tls/i;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/i0;->t:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/i;->if()S

    move-result v3

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {v2}, Landroid/support/v4/mw1;->class()[B

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/a0;->while:Lorg/bouncycastle/crypto/tls/break;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/tls/break;->for(I)Landroid/support/v4/rg;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/rg;->const()Lorg/bouncycastle/asn1/x509/try;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/crypto/util/const;->for(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;

    move-result-object v3

    iget-short v4, p0, Lorg/bouncycastle/crypto/tls/i0;->s:S

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/l0;->finally(S)Lorg/bouncycastle/crypto/tls/TlsSigner;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/tls/TlsSigner;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/volatile;->for()[B

    move-result-object v0

    invoke-interface {v4, v1, v0, v3, v2}, Lorg/bouncycastle/crypto/tls/TlsSigner;->verifyRawSignature(Lorg/bouncycastle/crypto/tls/i;[BLandroid/support/v4/a4;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/support/v4/n72;

    invoke-direct {v0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
    :try_end_0
    .catch Landroid/support/v4/n72; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/support/v4/n72;

    invoke-direct {v1, p1, v0}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public C(Ljava/io/ByteArrayInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->f0(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/b;->throws(Lorg/bouncycastle/crypto/tls/a;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a;->goto()Z

    move-result v1

    const/16 v2, 0x2f

    if-nez v1, :cond_9

    const/16 v1, 0x20

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object v3

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->R(Ljava/io/InputStream;)[B

    move-result-object v4

    array-length v4, v4

    if-gt v4, v1, :cond_8

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->T(Ljava/io/InputStream;)I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_7

    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_7

    div-int/2addr v1, v4

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/l0;->V(ILjava/io/InputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->c0(Ljava/io/InputStream;)S

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_6

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/l0;->e0(ILjava/io/InputStream;)[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->native:[S

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/a0;->f(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/v;->default(Ljava/util/Hashtable;)Z

    move-result p1

    iput-boolean p1, v1, Landroid/support/v4/mw1;->super:Z

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {p1}, Landroid/support/v4/mw1;->final()Z

    move-result p1

    const/16 v1, 0x28

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->requiresExtendedMasterSecret()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->import()Lorg/bouncycastle/crypto/tls/for;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/for;->if(Lorg/bouncycastle/crypto/tls/a;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientVersion(Lorg/bouncycastle/crypto/tls/a;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    const/16 v2, 0x5600

    invoke-static {v0, v2}, Landroid/support/v4/q3;->continue([II)Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyFallback(Z)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iput-object v3, p1, Landroid/support/v4/mw1;->else:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCipherSuites([I)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->native:[S

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCompressionMethods([S)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    const/16 v0, 0xff

    invoke-static {p1, v0}, Landroid/support/v4/q3;->continue([II)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/a0;->default:Z

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/crypto/tls/a0;->continue:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p1

    if-eqz p1, :cond_4

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/a0;->default:Z

    sget-object v0, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->catch([B)[B

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->default:Z

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifySecureRenegotiation(Z)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/v;->return(Ljava/util/Hashtable;)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_7
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x32

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_8
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_9
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public D(Ljava/io/ByteArrayInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientKeyExchange(Ljava/io/InputStream;)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/a0;->const(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/b;->super()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->t:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/i0;->t:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/a0;->native(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/mw1;->this:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/a0;->const(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->switch()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->switch()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/crypto/tls/b;->public(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    return-void
.end method

.method public E(Lorg/bouncycastle/crypto/tls/catch;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/a0$do;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/a0$do;-><init>(Lorg/bouncycastle/crypto/tls/a0;S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/catch;->do(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a0$do;->do()V

    return-void
.end method

.method public F(Lorg/bouncycastle/crypto/tls/class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/a0$do;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/a0$do;-><init>(Lorg/bouncycastle/crypto/tls/a0;S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/class;->do(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a0$do;->do()V

    return-void
.end method

.method public G(Lorg/bouncycastle/crypto/tls/transient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/a0$do;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/a0$do;-><init>(Lorg/bouncycastle/crypto/tls/a0;S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/transient;->do(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a0$do;->do()V

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public H()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/tls/l0;->I0(S[BI)V

    const/4 v2, 0x1

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/crypto/tls/l0;->y0(I[BI)V

    invoke-virtual {p0, v1, v3, v0}, Lorg/bouncycastle/crypto/tls/a0;->u([BII)V

    return-void
.end method

.method public I()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/a0$do;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/a0$do;-><init>(Lorg/bouncycastle/crypto/tls/a0;S)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/a;->this(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v2

    const/16 v3, 0x50

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/tls/b;->static(Lorg/bouncycastle/crypto/tls/a;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/tls/b;->throws(Lorg/bouncycastle/crypto/tls/a;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/bouncycastle/crypto/tls/b;->switch(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->import()Lorg/bouncycastle/crypto/tls/for;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/tls/for;->new(Lorg/bouncycastle/crypto/tls/a;)V

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/l0;->N0(Lorg/bouncycastle/crypto/tls/a;Ljava/io/OutputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iget-object v1, v1, Landroid/support/v4/mw1;->goto:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-object v1, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/l0;->q0([BLjava/io/OutputStream;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCipherSuite()I

    move-result v2

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    invoke-static {v5, v2}, Landroid/support/v4/q3;->continue([II)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    invoke-static {v2}, Landroid/support/v4/vl;->do(I)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/tls/l0;->y(ILorg/bouncycastle/crypto/tls/a;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iput v2, v5, Landroid/support/v4/mw1;->if:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCompressionMethod()S

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/a0;->native:[S

    invoke-static {v6, v5}, Landroid/support/v4/q3;->strictfp([SS)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iput-short v5, v6, Landroid/support/v4/mw1;->for:S

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/l0;->r0(ILjava/io/OutputStream;)V

    invoke-static {v5, v0}, Lorg/bouncycastle/crypto/tls/l0;->H0(SLjava/io/OutputStream;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/v;->import(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/tls/a0;->default:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    sget-object v5, Lorg/bouncycastle/crypto/tls/a0;->continue:Ljava/lang/Integer;

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/a0;->catch([B)[B

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/i0;->o:Lorg/bouncycastle/crypto/tls/h0;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iput-boolean v6, v1, Landroid/support/v4/mw1;->super:Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {v1}, Landroid/support/v4/mw1;->final()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/v;->if(Ljava/util/Hashtable;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/v;->throws(Ljava/util/Hashtable;)Z

    move-result v2

    iput-boolean v2, v1, Landroid/support/v4/mw1;->final:Z

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    invoke-virtual {p0, v2, v5, v3}, Lorg/bouncycastle/crypto/tls/a0;->a(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v2

    iput-short v2, v1, Landroid/support/v4/mw1;->class:S

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/v;->extends(Ljava/util/Hashtable;)Z

    move-result v2

    iput-boolean v2, v1, Landroid/support/v4/mw1;->const:Z

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->switch:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    sget-object v2, Lorg/bouncycastle/crypto/tls/v;->else:Ljava/lang/Integer;

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/tls/l0;->k(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->extends:Z

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->switch:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    sget-object v2, Lorg/bouncycastle/crypto/tls/a0;->strictfp:Ljava/lang/Integer;

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/tls/l0;->k(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/a0;->finally:Z

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/a0;->t(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    :cond_6
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {v3}, Landroid/support/v4/mw1;->if()I

    move-result v3

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/a0;->static(Lorg/bouncycastle/crypto/tls/TlsContext;I)I

    move-result v2

    iput v2, v1, Landroid/support/v4/mw1;->new:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    const/16 v2, 0xc

    iput v2, v1, Landroid/support/v4/mw1;->try:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->if()V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a0$do;->do()V

    return-void

    :cond_7
    new-instance v0, Landroid/support/v4/n72;

    invoke-direct {v0, v3}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :cond_8
    new-instance v0, Landroid/support/v4/n72;

    invoke-direct {v0, v3}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :cond_9
    new-instance v0, Landroid/support/v4/n72;

    invoke-direct {v0, v3}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public J([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/a0$do;

    array-length v1, p1

    const/16 v2, 0xc

    invoke-direct {v0, p0, v2, v1}, Lorg/bouncycastle/crypto/tls/a0$do;-><init>(Lorg/bouncycastle/crypto/tls/a0;SI)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a0$do;->do()V

    return-void
.end method

.method public abstract(SLjava/io/ByteArrayInputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/16 v4, 0xa

    if-eq p1, v3, :cond_13

    const/16 v3, 0x9

    const/16 v5, 0xb

    if-eq p1, v5, :cond_f

    const/16 v6, 0x14

    const/16 v7, 0xc

    const/16 v8, 0xf

    if-eq p1, v6, :cond_a

    const/16 v6, 0x17

    if-eq p1, v6, :cond_8

    if-eq p1, v8, :cond_5

    if-ne p1, v0, :cond_4

    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    packed-switch p1, :pswitch_data_0

    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :pswitch_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    :pswitch_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->while:Lorg/bouncycastle/crypto/tls/break;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_2
    sget-object p1, Lorg/bouncycastle/crypto/tls/break;->if:Lorg/bouncycastle/crypto/tls/break;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/i0;->z(Lorg/bouncycastle/crypto/tls/break;)V

    :goto_0
    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/i0;->D(Ljava/io/ByteArrayInputStream;)V

    iput-short v5, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    goto/16 :goto_6

    :cond_3
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_4
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_5
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    if-ne p1, v5, :cond_7

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->y()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/i0;->B(Ljava/io/ByteArrayInputStream;)V

    iput-short v7, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    goto/16 :goto_6

    :cond_6
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_7
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_8
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    if-ne p1, v2, :cond_9

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/a0;->i(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    goto/16 :goto_6

    :cond_9
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_a
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    if-eq p1, v5, :cond_c

    if-ne p1, v7, :cond_b

    goto :goto_1

    :cond_b
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_c
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->y()Z

    move-result p1

    if-nez p1, :cond_e

    :goto_1
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/a0;->instanceof(Ljava/io/ByteArrayInputStream;)V

    const/16 p1, 0xd

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->finally:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->getNewSessionTicket()Lorg/bouncycastle/crypto/tls/transient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/i0;->G(Lorg/bouncycastle/crypto/tls/transient;)V

    :cond_d
    const/16 p1, 0xe

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->o()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->p()V

    iput-short v8, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->this()V

    goto/16 :goto_6

    :cond_e
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_f
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    if-eq p1, v2, :cond_11

    if-ne p1, v3, :cond_10

    goto :goto_2

    :cond_10
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_11
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    if-eqz p1, :cond_12

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/i0;->A(Ljava/io/ByteArrayInputStream;)V

    iput-short v4, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    goto/16 :goto_6

    :cond_12
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_13
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    if-eqz p1, :cond_15

    if-ne p1, v0, :cond_14

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->j()V

    goto/16 :goto_6

    :cond_14
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_15
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/i0;->C(Ljava/io/ByteArrayInputStream;)V

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->I()V

    const/4 p1, 0x2

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/b;->final()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerSupplementalData()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/a0;->q(Ljava/util/Vector;)V

    :cond_16
    const/4 p1, 0x3

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCredentials()Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->q:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-nez p1, :cond_17

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    goto :goto_3

    :cond_17
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->q:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/break;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/a0;->n(Lorg/bouncycastle/crypto/tls/break;)V

    :goto_3
    const/4 p1, 0x4

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    const/4 p1, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result p2

    if-eqz p2, :cond_19

    :cond_18
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->extends:Z

    :cond_19
    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tls/a0;->extends:Z

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCertificateStatus()Lorg/bouncycastle/crypto/tls/class;

    move-result-object p2

    if-eqz p2, :cond_1a

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/i0;->F(Lorg/bouncycastle/crypto/tls/class;)V

    :cond_1a
    const/4 p2, 0x5

    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateServerKeyExchange()[B

    move-result-object p2

    if-eqz p2, :cond_1b

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/i0;->J([B)V

    :cond_1b
    const/4 p2, 0x6

    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/i0;->q:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz p2, :cond_1e

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCertificateRequest()Lorg/bouncycastle/crypto/tls/catch;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    if-eqz p2, :cond_1e

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/l0;->w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/catch;->new()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1c

    goto :goto_4

    :cond_1c
    const/4 v3, 0x0

    :goto_4
    if-ne p2, v3, :cond_1d

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/catch;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/i0;->E(Lorg/bouncycastle/crypto/tls/catch;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/b;->this()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/catch;->new()Ljava/util/Vector;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/l0;->j0(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    goto :goto_5

    :cond_1d
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1e
    :goto_5
    const/4 p1, 0x7

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->H()V

    iput-short v2, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/b;->this()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public case()V
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/tls/a0;->case()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->q:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->t:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method public default(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/a0;->default(S)V

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p1

    const/16 v0, 0xa

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    if-eqz p1, :cond_2

    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    :goto_0
    sget-object p1, Lorg/bouncycastle/crypto/tls/break;->if:Lorg/bouncycastle/crypto/tls/break;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/i0;->z(Lorg/bouncycastle/crypto/tls/break;)V

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    return-void

    :cond_2
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public import()Lorg/bouncycastle/crypto/tls/for;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->o:Lorg/bouncycastle/crypto/tls/h0;

    return-object v0
.end method

.method public switch()Lorg/bouncycastle/crypto/tls/TlsPeer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    return-object v0
.end method

.method public while()Lorg/bouncycastle/crypto/tls/TlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->o:Lorg/bouncycastle/crypto/tls/h0;

    return-object v0
.end method

.method public x(Lorg/bouncycastle/crypto/tls/TlsServer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    new-instance v0, Landroid/support/v4/mw1;

    invoke-direct {v0}, Landroid/support/v4/mw1;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/mw1;->do:I

    new-instance v0, Lorg/bouncycastle/crypto/tls/h0;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->try:Ljava/security/SecureRandom;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/crypto/tls/h0;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/mw1;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->o:Lorg/bouncycastle/crypto/tls/h0;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->shouldUseGMTUnixTime()Z

    move-result p1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/i0;->o:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/for;->getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/tls/a0;->break(ZLorg/bouncycastle/crypto/prng/RandomGenerator;)[B

    move-result-object p1

    iput-object p1, v0, Landroid/support/v4/mw1;->goto:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->o:Lorg/bouncycastle/crypto/tls/h0;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->init(Lorg/bouncycastle/crypto/tls/TlsServerContext;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->o:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/b;->const(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/crypto/tls/b;->switch(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->new()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'accept\' can only be called once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'tlsServer\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y()Z
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/i0;->s:S

    if-ltz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->l(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z(Lorg/bouncycastle/crypto/tls/break;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->r:Lorg/bouncycastle/crypto/tls/catch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->while:Lorg/bouncycastle/crypto/tls/break;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->while:Lorg/bouncycastle/crypto/tls/break;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->q:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/break;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/l0;->protected(Lorg/bouncycastle/crypto/tls/break;Lorg/bouncycastle/crypto/tls/break;)S

    move-result v0

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/i0;->s:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->p:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/i0;->n:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    return-void

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
