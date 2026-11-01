.class public abstract Lorg/bouncycastle/crypto/tls/case;
.super Lorg/bouncycastle/crypto/tls/try;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsServer;


# instance fields
.field public break:Ljava/util/Vector;

.field public case:Ljava/util/Hashtable;

.field public catch:Z

.field public class:[I

.field public const:[S

.field public do:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

.field public else:Z

.field public final:[S

.field public for:Lorg/bouncycastle/crypto/tls/a;

.field public goto:S

.field public if:Lorg/bouncycastle/crypto/tls/TlsServerContext;

.field public import:Ljava/util/Hashtable;

.field public new:[I

.field public super:Lorg/bouncycastle/crypto/tls/a;

.field public this:Z

.field public throw:I

.field public try:[S

.field public while:S


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/extends;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/extends;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/case;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/try;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/case;->do:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    return-void
.end method


# virtual methods
.method public case([I[S)Z
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Lorg/bouncycastle/crypto/tls/s;->native()Z

    move-result p1

    return p1

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget v1, p1, v0

    invoke-static {v1}, Landroid/support/v4/e21;->do(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/support/v4/e21;->if(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/s;->static(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method public do()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public for()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/case;->import:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/v;->import(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/case;->import:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getCertificateRequest()Lorg/bouncycastle/crypto/tls/catch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateStatus()Lorg/bouncycastle/crypto/tls/class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/case;->throw:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->a(I)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/tls/case;->throw:I

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->e(I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/case;->do:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/case;->if:Lorg/bouncycastle/crypto/tls/TlsServerContext;

    invoke-interface {v2, v3, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCipherSuites()[I
.end method

.method public getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/case;->while:S

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

.method public getNewSessionTicket()Lorg/bouncycastle/crypto/tls/transient;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/transient;

    sget-object v1, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/crypto/tls/transient;-><init>(J[B)V

    return-object v0
.end method

.method public getSelectedCipherSuite()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/case;->break:Ljava/util/Vector;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->j(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/case;->class:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/case;->const:[S

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/crypto/tls/case;->case([I[S)Z

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/case;->getCipherSuites()[I

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget v4, v2, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/case;->new:[I

    invoke-static {v5, v4}, Landroid/support/v4/q3;->continue([II)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_0

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/s;->return(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/case;->super:Lorg/bouncycastle/crypto/tls/a;

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/tls/l0;->y(ILorg/bouncycastle/crypto/tls/a;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/tls/l0;->x(ILjava/util/Vector;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput v4, p0, Lorg/bouncycastle/crypto/tls/case;->throw:I

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getSelectedCompressionMethod()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/case;->getCompressionMethods()[S

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/case;->try:[S

    aget-short v3, v0, v1

    invoke-static {v2, v3}, Landroid/support/v4/q3;->strictfp([SS)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-short v0, v0, v1

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/case;->while:S

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getServerExtensions()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/case;->else:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/case;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/tls/case;->throw:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->p(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/case;->for()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/v;->do(Ljava/util/Hashtable;)V

    :cond_0
    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/case;->goto:S

    if-ltz v0, :cond_1

    invoke-static {v0}, Landroid/support/v4/dy0;->do(S)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/case;->for()Ljava/util/Hashtable;

    move-result-object v0

    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/case;->goto:S

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/v;->new(Ljava/util/Hashtable;S)V

    :cond_1
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/case;->this:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/case;->if()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/case;->for()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/v;->goto(Ljava/util/Hashtable;)V

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/case;->const:[S

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/bouncycastle/crypto/tls/case;->throw:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/s;->return(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/case;->final:[S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/case;->for()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/case;->final:[S

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/s;->if(Ljava/util/Hashtable;[S)V

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/case;->import:Ljava/util/Hashtable;

    return-object v0

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
    .end array-data
.end method

.method public getServerSupplementalData()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerVersion()Lorg/bouncycastle/crypto/tls/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/case;->try()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/case;->for:Lorg/bouncycastle/crypto/tls/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/a;->this(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/case;->new()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/case;->for:Lorg/bouncycastle/crypto/tls/a;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/a;->this(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/case;->for:Lorg/bouncycastle/crypto/tls/a;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/case;->super:Lorg/bouncycastle/crypto/tls/a;

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/case;->for:Lorg/bouncycastle/crypto/tls/a;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/a;->break(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/case;->super:Lorg/bouncycastle/crypto/tls/a;

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public if()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsServerContext;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/case;->if:Lorg/bouncycastle/crypto/tls/TlsServerContext;

    return-void
.end method

.method public new()Lorg/bouncycastle/crypto/tls/a;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/tls/a;->try:Lorg/bouncycastle/crypto/tls/a;

    return-object v0
.end method

.method public notifyClientCertificate(Lorg/bouncycastle/crypto/tls/break;)V
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

.method public notifyClientVersion(Lorg/bouncycastle/crypto/tls/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/case;->for:Lorg/bouncycastle/crypto/tls/a;

    return-void
.end method

.method public notifyFallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/case;->new()Lorg/bouncycastle/crypto/tls/a;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/case;->for:Lorg/bouncycastle/crypto/tls/a;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/a;->break(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x56

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyOfferedCipherSuites([I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/case;->new:[I

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/s;->case([I)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/case;->catch:Z

    return-void
.end method

.method public notifyOfferedCompressionMethods([S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/case;->try:[S

    return-void
.end method

.method public processClientExtensions(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/case;->case:Ljava/util/Hashtable;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/v;->throws(Ljava/util/Hashtable;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/case;->else:Z

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/v;->public(Ljava/util/Hashtable;)S

    move-result v0

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/case;->goto:S

    const/16 v1, 0x2f

    if-ltz v0, :cond_1

    invoke-static {v0}, Landroid/support/v4/dy0;->do(S)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/v;->extends(Ljava/util/Hashtable;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/case;->this:Z

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->h(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/case;->break:Ljava/util/Vector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/case;->for:Lorg/bouncycastle/crypto/tls/a;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->r(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_3
    :goto_1
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/s;->while(Ljava/util/Hashtable;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/case;->class:[I

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/s;->import(Ljava/util/Hashtable;)[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/case;->const:[S

    :cond_4
    return-void
.end method

.method public processClientSupplementalData(Ljava/util/Vector;)V
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

.method public try()Lorg/bouncycastle/crypto/tls/a;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/tls/a;->new:Lorg/bouncycastle/crypto/tls/a;

    return-object v0
.end method
