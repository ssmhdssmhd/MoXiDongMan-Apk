.class public Lorg/bouncycastle/crypto/tls/abstract;
.super Landroid/support/v4/j;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/crypto/tls/TlsContext;

.field public for:Landroid/support/v4/a4;

.field public if:Lorg/bouncycastle/crypto/tls/break;

.field public new:Lorg/bouncycastle/crypto/tls/i;

.field public try:Lorg/bouncycastle/crypto/tls/TlsSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/break;Landroid/support/v4/a4;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/tls/abstract;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/break;Landroid/support/v4/a4;Lorg/bouncycastle/crypto/tls/i;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/break;Landroid/support/v4/a4;Lorg/bouncycastle/crypto/tls/i;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/j;-><init>()V

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/support/v4/a4;->do()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'signatureAndHashAlgorithm\' cannot be null for (D)TLS 1.2+"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    instance-of v0, p3, Landroid/support/v4/ck1;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/c0;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/c0;-><init>()V

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/abstract;->try:Lorg/bouncycastle/crypto/tls/TlsSigner;

    goto :goto_2

    :cond_2
    instance-of v0, p3, Landroid/support/v4/jv;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v4/k72;

    invoke-direct {v0}, Landroid/support/v4/k72;-><init>()V

    goto :goto_1

    :cond_3
    instance-of v0, p3, Landroid/support/v4/h50;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/support/v4/l72;

    invoke-direct {v0}, Landroid/support/v4/l72;-><init>()V

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/abstract;->try:Lorg/bouncycastle/crypto/tls/TlsSigner;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsSigner;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/abstract;->do:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/abstract;->if:Lorg/bouncycastle/crypto/tls/break;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/abstract;->for:Landroid/support/v4/a4;

    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/abstract;->new:Lorg/bouncycastle/crypto/tls/i;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\'privateKey\' type not supported: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'privateKey\' must be private"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'privateKey\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public generateCertificateSignature([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/abstract;->do:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/abstract;->try:Lorg/bouncycastle/crypto/tls/TlsSigner;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/abstract;->new:Lorg/bouncycastle/crypto/tls/i;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/abstract;->for:Landroid/support/v4/a4;

    invoke-interface {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/TlsSigner;->generateRawSignature(Lorg/bouncycastle/crypto/tls/i;Landroid/support/v4/a4;[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/abstract;->try:Lorg/bouncycastle/crypto/tls/TlsSigner;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/abstract;->for:Landroid/support/v4/a4;

    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsSigner;->generateRawSignature(Landroid/support/v4/a4;[B)[B

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/xs; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1, p1}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw v0
.end method

.method public getCertificate()Lorg/bouncycastle/crypto/tls/break;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/abstract;->if:Lorg/bouncycastle/crypto/tls/break;

    return-object v0
.end method

.method public getSignatureAndHashAlgorithm()Lorg/bouncycastle/crypto/tls/i;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/abstract;->new:Lorg/bouncycastle/crypto/tls/i;

    return-object v0
.end method
