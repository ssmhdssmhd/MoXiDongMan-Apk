.class public Lorg/bouncycastle/crypto/tls/n;
.super Lorg/bouncycastle/crypto/tls/a0;
.source "SourceFile"


# instance fields
.field public n:Lorg/bouncycastle/crypto/tls/TlsClient;

.field public o:Lorg/bouncycastle/crypto/tls/m;

.field public p:[B

.field public q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

.field public r:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

.field public s:Lorg/bouncycastle/crypto/tls/class;

.field public t:Lorg/bouncycastle/crypto/tls/catch;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/a0;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->o:Lorg/bouncycastle/crypto/tls/m;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->p:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->r:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->s:Lorg/bouncycastle/crypto/tls/class;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->t:Lorg/bouncycastle/crypto/tls/catch;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/a0;-><init>(Ljava/security/SecureRandom;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->o:Lorg/bouncycastle/crypto/tls/m;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->p:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->r:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->s:Lorg/bouncycastle/crypto/tls/class;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->t:Lorg/bouncycastle/crypto/tls/catch;

    return-void
.end method


# virtual methods
.method public A(Ljava/io/ByteArrayInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->f0(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a;->goto()Z

    move-result v1

    const/16 v2, 0x2f

    if-nez v1, :cond_16

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/b;->class()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/a;->do(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/a;->this(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/b;->throws(Lorg/bouncycastle/crypto/tls/a;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->import()Lorg/bouncycastle/crypto/tls/for;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/for;->new(Lorg/bouncycastle/crypto/tls/a;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/bouncycastle/crypto/tls/a;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    const/16 v1, 0x20

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, v0, Landroid/support/v4/mw1;->goto:[B

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->R(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->p:[B

    array-length v3, v0

    if-gt v3, v1, :cond_13

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->p:[B

    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->final:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->switch:Z

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->T(Ljava/io/InputStream;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    invoke-static {v1, v0}, Landroid/support/v4/q3;->continue([II)Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    invoke-static {v0}, Landroid/support/v4/vl;->do(I)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->y(ILorg/bouncycastle/crypto/tls/a;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->c0(Ljava/io/InputStream;)S

    move-result v1

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/a0;->native:[S

    invoke-static {v5, v1}, Landroid/support/v4/q3;->strictfp([SS)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v5, v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/a0;->f(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/n;->o:Lorg/bouncycastle/crypto/tls/m;

    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/v;->default(Ljava/util/Hashtable;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p1, Landroid/support/v4/mw1;->super:Z

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {p1}, Landroid/support/v4/mw1;->final()Z

    move-result p1

    const/16 v5, 0x28

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->switch:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->requiresExtendedMasterSecret()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    sget-object v7, Lorg/bouncycastle/crypto/tls/a0;->continue:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    invoke-static {v7, v6}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x6e

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_6
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    sget-object v6, Lorg/bouncycastle/crypto/tls/a0;->continue:Ljava/lang/Integer;

    invoke-static {p1, v6}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p1

    if-eqz p1, :cond_8

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/a0;->default:Z

    sget-object v6, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    invoke-static {v6}, Lorg/bouncycastle/crypto/tls/a0;->catch([B)[B

    move-result-object v6

    invoke-static {p1, v6}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_8
    :goto_4
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/tls/a0;->default:Z

    invoke-interface {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifySecureRenegotiation(Z)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    iget-boolean v6, p0, Lorg/bouncycastle/crypto/tls/a0;->switch:Z

    if-eqz v6, :cond_a

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/h;->for()I

    move-result p1

    if-ne v0, p1, :cond_9

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/h;->new()S

    move-result p1

    if-ne v1, p1, :cond_9

    const/4 p1, 0x0

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/h;->catch()Ljava/util/Hashtable;

    move-result-object v5

    goto :goto_5

    :cond_9
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_a
    :goto_5
    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iput v0, v6, Landroid/support/v4/mw1;->if:I

    iput-short v1, v6, Landroid/support/v4/mw1;->for:S

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/v;->throws(Ljava/util/Hashtable;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->p(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_c
    :goto_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iput-boolean v1, v0, Landroid/support/v4/mw1;->final:Z

    invoke-virtual {p0, p1, v5, v2}, Lorg/bouncycastle/crypto/tls/a0;->a(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v1

    iput-short v1, v0, Landroid/support/v4/mw1;->class:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/v;->extends(Ljava/util/Hashtable;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v4/mw1;->const:Z

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->switch:Z

    if-nez v0, :cond_d

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->else:Ljava/lang/Integer;

    invoke-static {v5, v0, v2}, Lorg/bouncycastle/crypto/tls/l0;->k(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->extends:Z

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->switch:Z

    if-nez v0, :cond_e

    sget-object v0, Lorg/bouncycastle/crypto/tls/a0;->strictfp:Ljava/lang/Integer;

    invoke-static {v5, v0, v2}, Lorg/bouncycastle/crypto/tls/l0;->k(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    :cond_e
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/a0;->finally:Z

    :cond_f
    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    :cond_10
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {v1}, Landroid/support/v4/mw1;->if()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/a0;->static(Lorg/bouncycastle/crypto/tls/TlsContext;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/mw1;->new:I

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    const/16 v0, 0xc

    iput v0, p1, Landroid/support/v4/mw1;->try:I

    return-void

    :cond_11
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_12
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_13
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_14
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_15
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_16
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v2}, Landroid/support/v4/n72;-><init>(S)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public B(Lorg/bouncycastle/crypto/tls/volatile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/a0$do;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/a0$do;-><init>(Lorg/bouncycastle/crypto/tls/a0;S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/volatile;->do(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a0$do;->do()V

    return-void
.end method

.method public C()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientHelloRecordLayerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/b;->throws(Lorg/bouncycastle/crypto/tls/a;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a;->goto()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->import()Lorg/bouncycastle/crypto/tls/for;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/for;->if(Lorg/bouncycastle/crypto/tls/a;)V

    sget-object v1, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->final:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    :cond_0
    move-object v2, v1

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsClient;->isFallback()Z

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCompressionMethods()[S

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/a0;->native:[S

    array-length v4, v2

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/h;->break()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/h;->for()I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v4/q3;->continue([II)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/a0;->native:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/h;->new()S

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v4/q3;->strictfp([SS)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/v;->import(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a;->catch()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/v;->if(Ljava/util/Hashtable;)V

    :cond_4
    new-instance v2, Lorg/bouncycastle/crypto/tls/a0$do;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Lorg/bouncycastle/crypto/tls/a0$do;-><init>(Lorg/bouncycastle/crypto/tls/a0;S)V

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/l0;->N0(Lorg/bouncycastle/crypto/tls/a;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {v0}, Landroid/support/v4/mw1;->for()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/l0;->q0([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/crypto/tls/a0;->continue:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    const/16 v5, 0xff

    invoke-static {v1, v5}, Landroid/support/v4/q3;->continue([II)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    invoke-static {v0, v5}, Landroid/support/v4/q3;->if([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    :cond_6
    if-eqz v3, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    const/16 v1, 0x5600

    invoke-static {v0, v1}, Landroid/support/v4/q3;->continue([II)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    invoke-static {v0, v1}, Landroid/support/v4/q3;->if([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/l0;->v0([ILjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->native:[S

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/l0;->L0([SLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/a0;->t(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/a0$do;->do()V

    return-void

    :cond_8
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public D()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/a0$do;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/a0$do;-><init>(Lorg/bouncycastle/crypto/tls/a0;S)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a0$do;->do()V

    return-void
.end method

.method public abstract(SLjava/io/ByteArrayInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->switch:Z

    const/16 v1, 0xf

    const/16 v2, 0x14

    const/16 v3, 0xd

    const/4 v4, 0x2

    const/16 v5, 0xa

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_0

    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    if-ne p1, v4, :cond_0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/a0;->instanceof(Ljava/io/ByteArrayInputStream;)V

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->o()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->p()V

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->this()V

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    if-eqz p1, :cond_23

    const/4 v0, 0x0

    if-eq p1, v4, :cond_20

    const/16 v6, 0xe

    const/4 v7, 0x4

    if-eq p1, v7, :cond_1d

    if-eq p1, v2, :cond_19

    const/16 v1, 0x16

    const/4 v2, 0x5

    if-eq p1, v1, :cond_16

    const/16 v1, 0x17

    if-eq p1, v1, :cond_14

    const/4 v1, 0x6

    const/4 v6, 0x3

    packed-switch p1, :pswitch_data_0

    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :pswitch_0
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    packed-switch p1, :pswitch_data_1

    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/n;->y(Ljava/util/Vector;)V

    :pswitch_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->r:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    :pswitch_3
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :pswitch_4
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    const/16 p1, 0x8

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/b;->this()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/a0;->q(Ljava/util/Vector;)V

    :cond_2
    const/16 p1, 0x9

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->t:Lorg/bouncycastle/crypto/tls/catch;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    move-object p1, v0

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/n;->r:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/bouncycastle/crypto/tls/catch;)Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    if-nez p1, :cond_4

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    sget-object p2, Lorg/bouncycastle/crypto/tls/break;->if:Lorg/bouncycastle/crypto/tls/break;

    goto :goto_0

    :cond_4
    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/break;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/a0;->n(Lorg/bouncycastle/crypto/tls/break;)V

    :goto_1
    iput-short v5, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->D()V

    const/16 p2, 0xb

    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p2

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {p2, v1}, Lorg/bouncycastle/crypto/tls/a0;->const(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    :cond_5
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/b;->super()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p2

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v2

    invoke-static {v2, p2, v0}, Lorg/bouncycastle/crypto/tls/a0;->native(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/mw1;->this:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/a0;->const(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->switch()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->switch()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/b;->public(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    if-eqz p1, :cond_8

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_8

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->i(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;)Lorg/bouncycastle/crypto/tls/i;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {p2}, Landroid/support/v4/mw1;->class()[B

    move-result-object p2

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/i;->if()S

    move-result v1

    invoke-interface {p2, v1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object p2

    :goto_2
    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/crypto/tls/volatile;

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/crypto/tls/volatile;-><init>(Lorg/bouncycastle/crypto/tls/i;[B)V

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/n;->B(Lorg/bouncycastle/crypto/tls/volatile;)V

    const/16 p1, 0xc

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    :cond_8
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->o()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->p()V

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    goto/16 :goto_7

    :pswitch_5
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    if-eq p1, v7, :cond_a

    if-eq p1, v2, :cond_a

    if-ne p1, v1, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_a
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :goto_3
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->r:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/catch;->try(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/catch;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->t:Lorg/bouncycastle/crypto/tls/catch;

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/n;->t:Lorg/bouncycastle/crypto/tls/catch;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/catch;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/b;->this()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/n;->t:Lorg/bouncycastle/crypto/tls/catch;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/catch;->new()Ljava/util/Vector;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/l0;->j0(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    const/4 p1, 0x7

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    goto/16 :goto_7

    :cond_b
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x28

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :pswitch_6
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    if-eq p1, v4, :cond_d

    if-eq p1, v6, :cond_e

    if-eq p1, v7, :cond_f

    if-ne p1, v2, :cond_c

    goto :goto_4

    :cond_c
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_d
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/n;->y(Ljava/util/Vector;)V

    :cond_e
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->r:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    :cond_f
    :goto_4
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    goto/16 :goto_7

    :pswitch_7
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    if-eq p1, v4, :cond_11

    if-ne p1, v6, :cond_10

    goto :goto_5

    :cond_10
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_11
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/n;->y(Ljava/util/Vector;)V

    :goto_5
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/break;->else(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/break;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->while:Lorg/bouncycastle/crypto/tls/break;

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->while:Lorg/bouncycastle/crypto/tls/break;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->extends:Z

    :cond_13
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/a0;->while:Lorg/bouncycastle/crypto/tls/break;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->r:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/a0;->while:Lorg/bouncycastle/crypto/tls/break;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    iput-short v7, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    goto/16 :goto_7

    :cond_14
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    if-ne p1, v4, :cond_15

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/a0;->i(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/n;->y(Ljava/util/Vector;)V

    goto/16 :goto_7

    :cond_15
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_16
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    if-ne p1, v7, :cond_18

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->extends:Z

    if-eqz p1, :cond_17

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/class;->case(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/class;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->s:Lorg/bouncycastle/crypto/tls/class;

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    iput-short v2, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    goto/16 :goto_7

    :cond_17
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_18
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_19
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    if-eq p1, v3, :cond_1b

    if-ne p1, v6, :cond_1a

    goto :goto_6

    :cond_1a
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1b
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->finally:Z

    if-nez p1, :cond_1c

    :goto_6
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/a0;->instanceof(Ljava/io/ByteArrayInputStream;)V

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->this()V

    goto/16 :goto_7

    :cond_1c
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1d
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    if-ne p1, v3, :cond_1f

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->finally:Z

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->continue()V

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/n;->z(Ljava/io/ByteArrayInputStream;)V

    iput-short v6, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    goto :goto_7

    :cond_1e
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1f
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_20
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    const/4 v1, 0x1

    if-ne p1, v1, :cond_22

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/n;->A(Ljava/io/ByteArrayInputStream;)V

    iput-short v4, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/b;->final()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->if()V

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->switch:Z

    if-eqz p1, :cond_21

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/h;->try()[B

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p2

    iput-object p2, p1, Landroid/support/v4/mw1;->case:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->switch()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object p2

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object p2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->switch()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/crypto/tls/b;->public(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    goto :goto_7

    :cond_21
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->continue()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->p:[B

    array-length p2, p1

    if-lez p2, :cond_24

    new-instance p2, Lorg/bouncycastle/crypto/tls/j0;

    invoke-direct {p2, p1, v0}, Lorg/bouncycastle/crypto/tls/j0;-><init>([BLorg/bouncycastle/crypto/tls/h;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/a0;->final:Lorg/bouncycastle/crypto/tls/TlsSession;

    goto :goto_7

    :cond_22
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_23
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    const/16 p2, 0x10

    if-ne p1, p2, :cond_24

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->j()V

    :cond_24
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public case()V
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/tls/a0;->case()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->p:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->r:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->s:Lorg/bouncycastle/crypto/tls/class;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->t:Lorg/bouncycastle/crypto/tls/catch;

    return-void
.end method

.method public import()Lorg/bouncycastle/crypto/tls/for;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->o:Lorg/bouncycastle/crypto/tls/m;

    return-object v0
.end method

.method public switch()Lorg/bouncycastle/crypto/tls/TlsPeer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    return-object v0
.end method

.method public while()Lorg/bouncycastle/crypto/tls/TlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->o:Lorg/bouncycastle/crypto/tls/m;

    return-object v0
.end method

.method public x(Lorg/bouncycastle/crypto/tls/TlsClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    new-instance v0, Landroid/support/v4/mw1;

    invoke-direct {v0}, Landroid/support/v4/mw1;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v4/mw1;->do:I

    new-instance v0, Lorg/bouncycastle/crypto/tls/m;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->try:Ljava/security/SecureRandom;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/crypto/tls/m;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/mw1;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->o:Lorg/bouncycastle/crypto/tls/m;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->shouldUseGMTUnixTime()Z

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/n;->o:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/for;->getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/a0;->break(ZLorg/bouncycastle/crypto/prng/RandomGenerator;)[B

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/mw1;->else:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/n;->o:Lorg/bouncycastle/crypto/tls/m;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/n;->o:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/b;->const(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getSessionToResume()Lorg/bouncycastle/crypto/tls/TlsSession;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsSession;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsSession;->exportSessionParameters()Lorg/bouncycastle/crypto/tls/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/h;->break()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->final:Lorg/bouncycastle/crypto/tls/TlsSession;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->C()V

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->new()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'connect\' can only be called once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'tlsClient\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    const/4 p1, 0x3

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->q:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/n;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    return-void
.end method

.method public z(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/transient;->new(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/transient;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/n;->n:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/bouncycastle/crypto/tls/transient;)V

    return-void
.end method
