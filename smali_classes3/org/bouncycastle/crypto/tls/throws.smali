.class public Lorg/bouncycastle/crypto/tls/throws;
.super Lorg/bouncycastle/crypto/tls/native;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/throws$do;
    }
.end annotation


# instance fields
.field public if:Z


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/native;-><init>(Ljava/security/SecureRandom;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/throws;->if:Z

    return-void
.end method


# virtual methods
.method public break(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/catch;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/tls/catch;->do(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public catch(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/class;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/tls/class;->do(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public class(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/transient;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/tls/transient;->do(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public const(Lorg/bouncycastle/crypto/tls/throws$do;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/for;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v2

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/for;->getClientVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/tls/a;->this(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v3

    const/16 v4, 0x50

    if-eqz v3, :cond_8

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/crypto/tls/for;->new(Lorg/bouncycastle/crypto/tls/a;)V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/for;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/l0;->N0(Lorg/bouncycastle/crypto/tls/a;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Landroid/support/v4/mw1;->catch()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-object v2, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/l0;->q0([BLjava/io/OutputStream;)V

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCipherSuite()I

    move-result v3

    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/throws$do;->case:[I

    invoke-static {v5, v3}, Landroid/support/v4/q3;->continue([II)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v3, :cond_7

    invoke-static {v3}, Landroid/support/v4/vl;->do(I)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/for;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/tls/l0;->y(ILorg/bouncycastle/crypto/tls/a;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/tls/native;->case(IS)V

    iput v3, v0, Landroid/support/v4/mw1;->if:I

    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCompressionMethod()S

    move-result v5

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/throws$do;->else:[S

    invoke-static {v6, v5}, Landroid/support/v4/q3;->strictfp([SS)Z

    move-result v6

    if-eqz v6, :cond_6

    iput-short v5, v0, Landroid/support/v4/mw1;->for:S

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/tls/l0;->r0(ILjava/io/OutputStream;)V

    invoke-static {v5, v1}, Lorg/bouncycastle/crypto/tls/l0;->H0(SLjava/io/OutputStream;)V

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/v;->import(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v3

    iput-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->this:Ljava/util/Hashtable;

    iget-boolean v5, p1, Lorg/bouncycastle/crypto/tls/throws$do;->catch:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    sget-object v5, Lorg/bouncycastle/crypto/tls/a0;->continue:Ljava/lang/Integer;

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->this:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/a0;->catch([B)[B

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/mw1;->final()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->this:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/v;->if(Ljava/util/Hashtable;)V

    :cond_2
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->this:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->this:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/v;->throws(Ljava/util/Hashtable;)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v4/mw1;->final:Z

    iget-boolean v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->break:Z

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->goto:Ljava/util/Hashtable;

    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/throws$do;->this:Ljava/util/Hashtable;

    invoke-static {v2, v3, v5, v4}, Lorg/bouncycastle/crypto/tls/native;->if(ZLjava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v2

    iput-short v2, v0, Landroid/support/v4/mw1;->class:S

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->this:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/v;->extends(Ljava/util/Hashtable;)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v4/mw1;->const:Z

    iget-boolean v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->break:Z

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->this:Ljava/util/Hashtable;

    sget-object v3, Lorg/bouncycastle/crypto/tls/v;->else:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/tls/l0;->k(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->class:Z

    iget-boolean v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->break:Z

    if-nez v2, :cond_4

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->this:Ljava/util/Hashtable;

    sget-object v3, Lorg/bouncycastle/crypto/tls/a0;->strictfp:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/tls/l0;->k(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, p1, Lorg/bouncycastle/crypto/tls/throws$do;->const:Z

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->this:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/a0;->t(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    :cond_5
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {v0}, Landroid/support/v4/mw1;->if()I

    move-result v2

    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/tls/a0;->static(Lorg/bouncycastle/crypto/tls/TlsContext;I)I

    move-result p1

    iput p1, v0, Landroid/support/v4/mw1;->new:I

    const/16 p1, 0xc

    iput p1, v0, Landroid/support/v4/mw1;->try:I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_7
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_8
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public else(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/return;S)V
    .locals 0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/crypto/tls/return;->if(S)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/throws;->super(Lorg/bouncycastle/crypto/tls/throws$do;)V

    return-void
.end method

.method public final()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/throws;->if:Z

    return v0
.end method

.method public goto(Lorg/bouncycastle/crypto/tls/TlsServer;Lorg/bouncycastle/crypto/tls/DatagramTransport;)Lorg/bouncycastle/crypto/tls/default;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/support/v4/mw1;

    invoke-direct {v0}, Landroid/support/v4/mw1;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/mw1;->do:I

    new-instance v1, Lorg/bouncycastle/crypto/tls/throws$do;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/throws$do;-><init>()V

    iput-object p1, v1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    new-instance v2, Lorg/bouncycastle/crypto/tls/h0;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/native;->do:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/tls/h0;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/mw1;)V

    iput-object v2, v1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->shouldUseGMTUnixTime()Z

    move-result v2

    iget-object v3, v1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/for;->getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/a0;->break(ZLorg/bouncycastle/crypto/prng/RandomGenerator;)[B

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/mw1;->goto:[B

    iget-object v2, v1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-interface {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->init(Lorg/bouncycastle/crypto/tls/TlsServerContext;)V

    new-instance v2, Lorg/bouncycastle/crypto/tls/return;

    iget-object v3, v1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    const/16 v4, 0x16

    invoke-direct {v2, p2, v3, p1, v4}, Lorg/bouncycastle/crypto/tls/return;-><init>(Lorg/bouncycastle/crypto/tls/DatagramTransport;Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsPeer;S)V

    const/16 p1, 0x50

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/crypto/tls/throws;->static(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/return;)Lorg/bouncycastle/crypto/tls/default;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/n72; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/support/v4/mw1;->do()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/throws;->else(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/return;S)V

    new-instance v1, Landroid/support/v4/n72;

    invoke-direct {v1, p1, p2}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p2

    invoke-virtual {p0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/throws;->else(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/return;S)V

    throw p2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Landroid/support/v4/n72;->getAlertDescription()S

    move-result p2

    invoke-virtual {p0, v1, v2, p2}, Lorg/bouncycastle/crypto/tls/throws;->else(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/return;S)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/mw1;->do()V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'transport\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'server\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public import(Lorg/bouncycastle/crypto/tls/throws$do;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/break;->else(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/break;

    move-result-object p2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/throws;->throw(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/break;)V

    return-void
.end method

.method public native(Lorg/bouncycastle/crypto/tls/throws$do;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->f0(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/a;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/a;->goto()Z

    move-result v1

    const/16 v2, 0x2f

    if-eqz v1, :cond_9

    const/16 v1, 0x20

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->R(Ljava/io/InputStream;)[B

    move-result-object v4

    array-length v4, v4

    if-gt v4, v1, :cond_8

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->R(Ljava/io/InputStream;)[B

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->T(Ljava/io/InputStream;)I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_7

    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_7

    div-int/2addr v1, v4

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/l0;->V(ILjava/io/InputStream;)[I

    move-result-object v1

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/throws$do;->case:[I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->c0(Ljava/io/InputStream;)S

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_6

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/l0;->e0(ILjava/io/InputStream;)[S

    move-result-object v1

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/throws$do;->else:[S

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->f(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->goto:Ljava/util/Hashtable;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/for;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->goto:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/v;->default(Ljava/util/Hashtable;)Z

    move-result v2

    iput-boolean v2, v1, Landroid/support/v4/mw1;->super:Z

    invoke-virtual {v1}, Landroid/support/v4/mw1;->final()Z

    move-result v2

    const/16 v5, 0x28

    if-nez v2, :cond_1

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsPeer;->requiresExtendedMasterSecret()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lorg/bouncycastle/crypto/tls/for;->if(Lorg/bouncycastle/crypto/tls/a;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientVersion(Lorg/bouncycastle/crypto/tls/a;)V

    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->case:[I

    const/16 v2, 0x5600

    invoke-static {v0, v2}, Landroid/support/v4/q3;->continue([II)Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyFallback(Z)V

    iput-object v3, v1, Landroid/support/v4/mw1;->else:[B

    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->case:[I

    invoke-interface {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCipherSuites([I)V

    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->else:[S

    invoke-interface {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCompressionMethods([S)V

    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->case:[I

    const/16 v0, 0xff

    invoke-static {p2, v0}, Landroid/support/v4/q3;->continue([II)Z

    move-result p2

    if-eqz p2, :cond_2

    iput-boolean v4, p1, Lorg/bouncycastle/crypto/tls/throws$do;->catch:Z

    :cond_2
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->goto:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/crypto/tls/a0;->continue:Ljava/lang/Integer;

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p2

    if-eqz p2, :cond_4

    iput-boolean v4, p1, Lorg/bouncycastle/crypto/tls/throws$do;->catch:Z

    sget-object v0, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->catch([B)[B

    move-result-object v0

    invoke-static {p2, v0}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_4
    :goto_1
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-boolean v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->catch:Z

    invoke-interface {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifySecureRenegotiation(Z)V

    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->goto:Ljava/util/Hashtable;

    if-eqz p2, :cond_5

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/v;->return(Ljava/util/Hashtable;)I

    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/throws$do;->goto:Ljava/util/Hashtable;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_7
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

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

.method public public(Lorg/bouncycastle/crypto/tls/throws$do;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/throws$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientKeyExchange(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method public return(Lorg/bouncycastle/crypto/tls/throws$do;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->i(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object p2

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    return-void
.end method

.method public static(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/return;)Lorg/bouncycastle/crypto/tls/default;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/for;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/static;

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-direct {v1, v2, p2}, Lorg/bouncycastle/crypto/tls/static;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/return;)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->class()Lorg/bouncycastle/crypto/tls/static$if;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/static$if;->for()S

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0xa

    if-ne v3, v4, :cond_10

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/static$if;->do()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/throws;->native(Lorg/bouncycastle/crypto/tls/throws$do;[B)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/throws;->const(Lorg/bouncycastle/crypto/tls/throws$do;)[B

    move-result-object v2

    iget-short v3, v0, Landroid/support/v4/mw1;->class:S

    invoke-static {p2, v3}, Lorg/bouncycastle/crypto/tls/native;->do(Lorg/bouncycastle/crypto/tls/return;S)V

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/for;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/bouncycastle/crypto/tls/return;->final(Lorg/bouncycastle/crypto/tls/a;)V

    invoke-virtual {p2, v3}, Lorg/bouncycastle/crypto/tls/return;->super(Lorg/bouncycastle/crypto/tls/a;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->goto()V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerSupplementalData()Ljava/util/Vector;

    move-result-object v2

    const/16 v3, 0x17

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/native;->new(Ljava/util/Vector;)[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    :cond_0
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v2

    iput-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-interface {v2, v6}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCredentials()Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object v2

    iput-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->super:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    const/16 v6, 0xb

    const/4 v7, 0x0

    if-nez v2, :cond_1

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    move-object v2, v7

    goto :goto_0

    :cond_1
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/throws$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v8, v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->super:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/break;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/native;->for(Lorg/bouncycastle/crypto/tls/break;)[B

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    :goto_0
    const/4 v8, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iput-boolean v8, p1, Lorg/bouncycastle/crypto/tls/throws$do;->class:Z

    :cond_3
    iget-boolean v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->class:Z

    if-eqz v2, :cond_4

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCertificateStatus()Lorg/bouncycastle/crypto/tls/class;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/throws;->catch(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/class;)[B

    move-result-object v2

    const/16 v9, 0x16

    invoke-virtual {v1, v9, v2}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    :cond_4
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateServerKeyExchange()[B

    move-result-object v2

    if-eqz v2, :cond_5

    const/16 v9, 0xc

    invoke-virtual {v1, v9, v2}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    :cond_5
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->super:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCertificateRequest()Lorg/bouncycastle/crypto/tls/catch;

    move-result-object v2

    iput-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->throw:Lorg/bouncycastle/crypto/tls/catch;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/l0;->w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v2

    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/throws$do;->throw:Lorg/bouncycastle/crypto/tls/catch;

    invoke-virtual {v9}, Lorg/bouncycastle/crypto/tls/catch;->new()Ljava/util/Vector;

    move-result-object v9

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    if-ne v2, v4, :cond_7

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v4, p1, Lorg/bouncycastle/crypto/tls/throws$do;->throw:Lorg/bouncycastle/crypto/tls/catch;

    invoke-interface {v2, v4}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/catch;)V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->throw:Lorg/bouncycastle/crypto/tls/catch;

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/throws;->break(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/catch;)[B

    move-result-object v2

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v2}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->case()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    iget-object v4, p1, Lorg/bouncycastle/crypto/tls/throws$do;->throw:Lorg/bouncycastle/crypto/tls/catch;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/catch;->new()Ljava/util/Vector;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/tls/l0;->j0(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    goto :goto_2

    :cond_7
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_8
    :goto_2
    const/16 v2, 0xe

    sget-object v4, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->case()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->class()Lorg/bouncycastle/crypto/tls/static$if;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/static$if;->for()S

    move-result v4

    if-ne v4, v3, :cond_9

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/static$if;->do()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/throws;->return(Lorg/bouncycastle/crypto/tls/throws$do;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->class()Lorg/bouncycastle/crypto/tls/static$if;

    move-result-object v2

    goto :goto_3

    :cond_9
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v3, v7}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    :goto_3
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->throw:Lorg/bouncycastle/crypto/tls/catch;

    if-nez v3, :cond_a

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/static$if;->for()S

    move-result v3

    if-ne v3, v6, :cond_b

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/static$if;->do()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/throws;->import(Lorg/bouncycastle/crypto/tls/throws$do;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->class()Lorg/bouncycastle/crypto/tls/static$if;

    move-result-object v2

    goto :goto_4

    :cond_b
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/l0;->w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v3, Lorg/bouncycastle/crypto/tls/break;->if:Lorg/bouncycastle/crypto/tls/break;

    invoke-virtual {p0, p1, v3}, Lorg/bouncycastle/crypto/tls/throws;->throw(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/break;)V

    :goto_4
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/static$if;->for()S

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_e

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/static$if;->do()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/throws;->public(Lorg/bouncycastle/crypto/tls/throws$do;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->break()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-static {v3, v2, v7}, Lorg/bouncycastle/crypto/tls/a0;->native(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v3

    iput-object v3, v0, Landroid/support/v4/mw1;->this:[B

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/a0;->const(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/return;->goto(Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/throws;->this(Lorg/bouncycastle/crypto/tls/throws$do;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/static;->const(S)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lorg/bouncycastle/crypto/tls/throws;->while(Lorg/bouncycastle/crypto/tls/throws$do;[BLorg/bouncycastle/crypto/tls/TlsHandshakeHash;)V

    :cond_c
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->case()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lorg/bouncycastle/crypto/tls/a0;->native(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v2

    const-string v3, "client finished"

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/crypto/tls/l0;->this(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/static;->const(S)[B

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/bouncycastle/crypto/tls/native;->try([B[B)V

    iget-boolean v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->const:Z

    if-eqz v0, :cond_d

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getNewSessionTicket()Lorg/bouncycastle/crypto/tls/transient;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/throws;->class(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/transient;)[B

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    :cond_d
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->case()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v3

    invoke-static {v0, v3, v7}, Lorg/bouncycastle/crypto/tls/a0;->native(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v3

    const-string v4, "server finished"

    invoke-static {v0, v4, v3}, Lorg/bouncycastle/crypto/tls/l0;->this(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->try()V

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyHandshakeComplete()V

    new-instance p1, Lorg/bouncycastle/crypto/tls/default;

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/default;-><init>(Lorg/bouncycastle/crypto/tls/return;)V

    return-object p1

    :cond_e
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_f
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_10
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public super(Lorg/bouncycastle/crypto/tls/throws$do;)V
    .locals 2

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->new:Lorg/bouncycastle/crypto/tls/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/h;->do()V

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/throws$do;->new:Lorg/bouncycastle/crypto/tls/h;

    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->for:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->invalidate()V

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/throws$do;->for:Lorg/bouncycastle/crypto/tls/TlsSession;

    :cond_1
    return-void
.end method

.method public switch(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/throws;->if:Z

    return-void
.end method

.method public this(Lorg/bouncycastle/crypto/tls/throws$do;)Z
    .locals 0

    iget-short p1, p1, Lorg/bouncycastle/crypto/tls/throws$do;->while:S

    if-ltz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->l(S)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public throw(Lorg/bouncycastle/crypto/tls/throws$do;Lorg/bouncycastle/crypto/tls/break;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->throw:Lorg/bouncycastle/crypto/tls/catch;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->import:Lorg/bouncycastle/crypto/tls/break;

    if-nez v0, :cond_1

    iput-object p2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->import:Lorg/bouncycastle/crypto/tls/break;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->super:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/break;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/l0;->protected(Lorg/bouncycastle/crypto/tls/break;Lorg/bouncycastle/crypto/tls/break;)S

    move-result v0

    iput-short v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->while:S

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    :goto_0
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/throws$do;->do:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    return-void

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public while(Lorg/bouncycastle/crypto/tls/throws$do;[BLorg/bouncycastle/crypto/tls/TlsHandshakeHash;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/throws$do;->throw:Lorg/bouncycastle/crypto/tls/catch;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/throws$do;->if:Lorg/bouncycastle/crypto/tls/h0;

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/volatile;->new(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/volatile;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    const/16 v0, 0x33

    :try_start_0
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/volatile;->if()Lorg/bouncycastle/crypto/tls/i;

    move-result-object v2

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/l0;->w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->throw:Lorg/bouncycastle/crypto/tls/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/catch;->new()Ljava/util/Vector;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/bouncycastle/crypto/tls/l0;->m0(Ljava/util/Vector;Lorg/bouncycastle/crypto/tls/i;)V

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/i;->if()S

    move-result v3

    invoke-interface {p3, v3}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/for;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/mw1;->class()[B

    move-result-object p3

    :goto_0
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/throws$do;->import:Lorg/bouncycastle/crypto/tls/break;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/tls/break;->for(I)Landroid/support/v4/rg;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/rg;->const()Lorg/bouncycastle/asn1/x509/try;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/crypto/util/const;->for(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;

    move-result-object v3

    iget-short p1, p1, Lorg/bouncycastle/crypto/tls/throws$do;->while:S

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->finally(S)Lorg/bouncycastle/crypto/tls/TlsSigner;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsSigner;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/volatile;->for()[B

    move-result-object p2

    invoke-interface {p1, v2, p2, v3, p3}, Lorg/bouncycastle/crypto/tls/TlsSigner;->verifyRawSignature(Lorg/bouncycastle/crypto/tls/i;[BLandroid/support/v4/a4;[B)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
    :try_end_0
    .catch Landroid/support/v4/n72; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Landroid/support/v4/n72;

    invoke-direct {p2, v0, p1}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
