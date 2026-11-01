.class public abstract Lorg/bouncycastle/crypto/tls/if;
.super Lorg/bouncycastle/crypto/tls/try;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsClient;


# instance fields
.field public case:[S

.field public do:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

.field public else:I

.field public for:Ljava/util/Vector;

.field public goto:S

.field public if:Lorg/bouncycastle/crypto/tls/TlsClientContext;

.field public new:[I

.field public try:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/extends;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/extends;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/if;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/try;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/if;->do:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Integer;[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/s;->package([B)[S

    return v1

    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/s;->finally([B)[I

    return v1
.end method

.method public for()Lorg/bouncycastle/crypto/tls/a;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/tls/a;->new:Lorg/bouncycastle/crypto/tls/a;

    return-object v0
.end method

.method public getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/if;->else:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->a(I)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/tls/if;->else:I

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->e(I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/if;->do:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/if;->if:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v2, v3, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0
.end method

.method public getClientExtensions()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/if;->if:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->r(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/crypto/tls/l0;->synchronized()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/if;->for:Ljava/util/Vector;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/v;->import(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/if;->for:Ljava/util/Vector;

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/l0;->new(Ljava/util/Hashtable;Ljava/util/Vector;)V

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/s;->case([I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/if;->new:[I

    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/if;->try:[S

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/v;->import(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/if;->new:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/s;->do(Ljava/util/Hashtable;[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/if;->try:[S

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/s;->if(Ljava/util/Hashtable;[S)V

    :cond_1
    return-object v1

    nop

    :array_0
    .array-data 4
        0x17
        0x18
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
    .end array-data
.end method

.method public getClientHelloRecordLayerVersion()Lorg/bouncycastle/crypto/tls/a;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/if;->getClientVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v0

    return-object v0
.end method

.method public getClientSupplementalData()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientVersion()Lorg/bouncycastle/crypto/tls/a;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/tls/a;->case:Lorg/bouncycastle/crypto/tls/a;

    return-object v0
.end method

.method public getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/if;->goto:S

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/r72;

    invoke-direct {v0}, Landroid/support/v4/r72;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public getCompressionMethods()[S
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x0

    aput-short v1, v0, v1

    return-object v0
.end method

.method public getSessionToResume()Lorg/bouncycastle/crypto/tls/TlsSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public if(Ljava/util/Hashtable;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p1}, Lorg/bouncycastle/crypto/tls/if;->do(Ljava/lang/Integer;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x2f

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/if;->if:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    return-void
.end method

.method public isFallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyNewSessionTicket(Lorg/bouncycastle/crypto/tls/transient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public notifySelectedCipherSuite(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/if;->else:I

    return-void
.end method

.method public notifySelectedCompressionMethod(S)V
    .locals 0

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/if;->goto:S

    return-void
.end method

.method public notifyServerVersion(Lorg/bouncycastle/crypto/tls/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/if;->for()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/tls/a;->this(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x46

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public notifySessionID([B)V
    .locals 0

    return-void
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/tls/l0;->try:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/if;->if(Ljava/util/Hashtable;Ljava/lang/Integer;)V

    sget-object v0, Lorg/bouncycastle/crypto/tls/s;->do:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/if;->if(Ljava/util/Hashtable;Ljava/lang/Integer;)V

    iget v0, p0, Lorg/bouncycastle/crypto/tls/if;->else:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/s;->return(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/s;->import(Ljava/util/Hashtable;)[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/if;->case:[S

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/tls/s;->if:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/if;->if(Ljava/util/Hashtable;Ljava/lang/Integer;)V

    :goto_0
    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->try:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/if;->if(Ljava/util/Hashtable;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method public processServerSupplementalData(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method
