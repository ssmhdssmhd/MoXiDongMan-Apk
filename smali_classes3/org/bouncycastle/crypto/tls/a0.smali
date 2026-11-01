.class public abstract Lorg/bouncycastle/crypto/tls/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/a0$do;
    }
.end annotation


# static fields
.field public static final a:S = 0x7s

.field public static final b:S = 0x8s

.field public static final c:S = 0x9s

.field public static final continue:Ljava/lang/Integer;

.field public static final d:S = 0xas

.field public static final e:S = 0xbs

.field public static final f:S = 0xcs

.field public static final g:S = 0xds

.field public static final h:S = 0xes

.field public static final i:S = 0xfs

.field public static final implements:S = 0x4s

.field public static final instanceof:S = 0x5s

.field public static final interface:S = 0x1s

.field public static final j:S = 0x10s

.field public static final k:S = 0x0s

.field public static final l:S = 0x1s

.field public static final m:S = 0x2s

.field public static final protected:S = 0x2s

.field public static final strictfp:Ljava/lang/Integer;

.field public static final synchronized:S = 0x6s

.field public static final transient:S = 0x3s

.field public static final volatile:S


# instance fields
.field public abstract:Lorg/bouncycastle/crypto/tls/this;

.field private volatile break:Z

.field private case:Lorg/bouncycastle/crypto/tls/w;

.field private volatile catch:Z

.field private volatile class:I

.field private const:[B

.field public default:Z

.field private do:Lorg/bouncycastle/crypto/tls/goto;

.field private else:Lorg/bouncycastle/crypto/tls/y;

.field public extends:Z

.field public final:Lorg/bouncycastle/crypto/tls/TlsSession;

.field public finally:Z

.field private for:Lorg/bouncycastle/crypto/tls/goto;

.field private volatile goto:Z

.field private if:Lorg/bouncycastle/crypto/tls/goto;

.field public import:[I

.field public native:[S

.field public new:Lorg/bouncycastle/crypto/tls/b;

.field public package:Z

.field public private:Landroid/support/v4/ae;

.field public public:Ljava/util/Hashtable;

.field public return:Ljava/util/Hashtable;

.field public static:S

.field public super:Lorg/bouncycastle/crypto/tls/h;

.field public switch:Z

.field private volatile this:Z

.field public throw:Landroid/support/v4/mw1;

.field public throws:Z

.field public try:Ljava/security/SecureRandom;

.field public while:Lorg/bouncycastle/crypto/tls/break;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0xff01

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/a0;->continue:Ljava/lang/Integer;

    const/16 v0, 0x23

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/a0;->strictfp:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/goto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/goto;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->do:Lorg/bouncycastle/crypto/tls/goto;

    new-instance v0, Lorg/bouncycastle/crypto/tls/goto;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/tls/goto;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->if:Lorg/bouncycastle/crypto/tls/goto;

    new-instance v0, Lorg/bouncycastle/crypto/tls/goto;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/goto;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->for:Lorg/bouncycastle/crypto/tls/goto;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->case:Lorg/bouncycastle/crypto/tls/w;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->else:Lorg/bouncycastle/crypto/tls/y;

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->goto:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->this:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->break:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/a0;->catch:Z

    iput v1, p0, Lorg/bouncycastle/crypto/tls/a0;->class:I

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->const:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->final:Lorg/bouncycastle/crypto/tls/TlsSession;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->while:Lorg/bouncycastle/crypto/tls/break;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->native:[S

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->switch:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throws:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->default:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->extends:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->finally:Z

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/a0;->package:Z

    new-instance v0, Lorg/bouncycastle/crypto/tls/b;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/crypto/tls/b;-><init>(Lorg/bouncycastle/crypto/tls/a0;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/a0;->try:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/goto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/goto;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->do:Lorg/bouncycastle/crypto/tls/goto;

    new-instance v0, Lorg/bouncycastle/crypto/tls/goto;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/tls/goto;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->if:Lorg/bouncycastle/crypto/tls/goto;

    new-instance v0, Lorg/bouncycastle/crypto/tls/goto;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/goto;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->for:Lorg/bouncycastle/crypto/tls/goto;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->case:Lorg/bouncycastle/crypto/tls/w;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->else:Lorg/bouncycastle/crypto/tls/y;

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->goto:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->this:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->break:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/a0;->catch:Z

    iput v1, p0, Lorg/bouncycastle/crypto/tls/a0;->class:I

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->const:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->final:Lorg/bouncycastle/crypto/tls/TlsSession;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->while:Lorg/bouncycastle/crypto/tls/break;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->native:[S

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->switch:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throws:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->default:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->extends:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->finally:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->package:Z

    new-instance v0, Landroid/support/v4/ae;

    invoke-direct {v0}, Landroid/support/v4/ae;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->private:Landroid/support/v4/ae;

    new-instance v0, Lorg/bouncycastle/crypto/tls/this;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->abstract:Lorg/bouncycastle/crypto/tls/this;

    new-instance v0, Lorg/bouncycastle/crypto/tls/b;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->private:Landroid/support/v4/ae;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->abstract:Lorg/bouncycastle/crypto/tls/this;

    invoke-direct {v0, p0, v1, v2}, Lorg/bouncycastle/crypto/tls/b;-><init>(Lorg/bouncycastle/crypto/tls/a0;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->try:Ljava/security/SecureRandom;

    return-void
.end method

.method public static break(ZLorg/bouncycastle/crypto/prng/RandomGenerator;)[B
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->nextBytes([B)V

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/l0;->n0([BI)V

    :cond_0
    return-object v0
.end method

.method public static catch([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->package([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static const(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generatePremasterSecret()[B

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v1

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->else(Lorg/bouncycastle/crypto/tls/TlsContext;[B)[B

    move-result-object p0

    iput-object p0, v1, Landroid/support/v4/mw1;->case:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/q3;->c([BB)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    invoke-static {p1, v0}, Landroid/support/v4/q3;->c([BB)V

    :cond_1
    throw p0
.end method

.method public static f(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->P(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->T(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->P(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_2
    return-object v0
.end method

.method public static for(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    if-gtz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static i(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->Q(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->T(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->P(Ljava/io/InputStream;)[B

    move-result-object v2

    new-instance v3, Landroid/support/v4/g32;

    invoke-direct {v3, v1, v2}, Landroid/support/v4/g32;-><init>(I[B)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private implements([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v1, p2, v0

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/tls/l0;->d0([BI)S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throws:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->if:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->for:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/b;->while()V

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/a0;->throws:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->extends()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_2
    return-void
.end method

.method public static native(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B
    .locals 1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->forkPRFHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    array-length p0, p2

    invoke-interface {p1, p2, v0, p0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    new-array p0, p0, [B

    invoke-interface {p1, p0, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object p0
.end method

.method private protected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->if:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->if:Lorg/bouncycastle/crypto/tls/goto;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/goto;->this(II)[B

    move-result-object v0

    aget-byte v1, v0, v2

    int-to-short v1, v1

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    int-to-short v0, v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/a0;->throws(SS)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static static(Lorg/bouncycastle/crypto/tls/TlsContext;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x2f

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_2

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    packed-switch p1, :pswitch_data_7

    packed-switch p1, :pswitch_data_8

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3

    :pswitch_0
    :sswitch_0
    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v3

    :pswitch_1
    :sswitch_1
    if-eqz p0, :cond_2

    return v2

    :cond_2
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :pswitch_2
    :sswitch_2
    if-eqz p0, :cond_3

    return v0

    :cond_3
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9c
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xaf -> :sswitch_0
        0xb1 -> :sswitch_0
        0xb3 -> :sswitch_0
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_0
        0xc038 -> :sswitch_0
        0xc03b -> :sswitch_0
        0xc072 -> :sswitch_2
        0xc073 -> :sswitch_1
        0xc074 -> :sswitch_2
        0xc075 -> :sswitch_1
        0xc076 -> :sswitch_2
        0xc077 -> :sswitch_1
        0xc078 -> :sswitch_2
        0xc079 -> :sswitch_1
        0xc07a -> :sswitch_2
        0xc07b -> :sswitch_1
        0xc07c -> :sswitch_2
        0xc07d -> :sswitch_1
        0xc07e -> :sswitch_2
        0xc07f -> :sswitch_1
        0xc080 -> :sswitch_2
        0xc081 -> :sswitch_1
        0xc082 -> :sswitch_2
        0xc083 -> :sswitch_1
        0xc084 -> :sswitch_2
        0xc085 -> :sswitch_1
        0xc086 -> :sswitch_2
        0xc087 -> :sswitch_1
        0xc088 -> :sswitch_2
        0xc089 -> :sswitch_1
        0xc08a -> :sswitch_2
        0xc08b -> :sswitch_1
        0xc08c -> :sswitch_2
        0xc08d -> :sswitch_1
        0xc08e -> :sswitch_2
        0xc08f -> :sswitch_1
        0xc090 -> :sswitch_2
        0xc091 -> :sswitch_1
        0xc092 -> :sswitch_2
        0xc093 -> :sswitch_1
        0xc095 -> :sswitch_0
        0xc097 -> :sswitch_0
        0xc099 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0xb9
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc023
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc09b
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xcca8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xff00
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xff10
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private synchronized(Lorg/bouncycastle/crypto/tls/goto;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    new-array v0, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Lorg/bouncycastle/crypto/tls/goto;->try([BIII)V

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/l0;->d0([BI)S

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/l0;->X([BI)I

    move-result v0

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v6

    if-ge v6, v5, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v3, :cond_4

    const/16 v6, 0x14

    if-ne v6, v3, :cond_1

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/tls/a0;->try(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v2

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/a0;->const:[B

    if-nez v6, :cond_3

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/mw1;->case()[B

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/tls/a0;->class(Z)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->const:[B

    goto :goto_1

    :cond_1
    iget-short v6, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/tls/a0;->try(Z)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/b;->break()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p1, v2, v5}, Lorg/bouncycastle/crypto/tls/goto;->for(Ljava/io/OutputStream;I)V

    :cond_4
    invoke-virtual {p1, v1}, Lorg/bouncycastle/crypto/tls/goto;->else(I)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/goto;->case(I)Ljava/io/ByteArrayInputStream;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lorg/bouncycastle/crypto/tls/a0;->abstract(SLjava/io/ByteArrayInputStream;)V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public static t(Ljava/io/OutputStream;Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/tls/a0;->v(Ljava/io/OutputStream;Ljava/util/Hashtable;Z)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/tls/a0;->v(Ljava/io/OutputStream;Ljava/util/Hashtable;Z)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, p0}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V

    return-void
.end method

.method private transient()V
    .locals 0

    return-void
.end method

.method public static v(Ljava/io/OutputStream;Ljava/util/Hashtable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne p2, v3, :cond_0

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/l0;->break(I)V

    invoke-static {v2, p0}, Lorg/bouncycastle/crypto/tls/l0;->r0(ILjava/io/OutputStream;)V

    invoke-static {v1, p0}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static w(Ljava/io/OutputStream;Ljava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/g32;

    invoke-virtual {v2}, Landroid/support/v4/g32;->if()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/l0;->break(I)V

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/l0;->r0(ILjava/io/OutputStream;)V

    invoke-virtual {v2}, Landroid/support/v4/g32;->do()[B

    move-result-object v2

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, p0}, Lorg/bouncycastle/crypto/tls/l0;->p0([BLjava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/v;->public(Ljava/util/Hashtable;)S

    move-result p2

    if-ltz p2, :cond_1

    invoke-static {p2}, Landroid/support/v4/dy0;->do(S)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->switch:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/v;->public(Ljava/util/Hashtable;)S

    move-result p1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, p3}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    return p2
.end method

.method public abstract abstract(SLjava/io/ByteArrayInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public b(S[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :pswitch_0
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->break:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->do:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/goto;->do([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/a0;->transient()V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :pswitch_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->for:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->for:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/goto;->do([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->for:Lorg/bouncycastle/crypto/tls/goto;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/a0;->synchronized(Lorg/bouncycastle/crypto/tls/goto;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/goto;

    invoke-direct {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/goto;-><init>([BII)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/a0;->synchronized(Lorg/bouncycastle/crypto/tls/goto;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result p1

    if-lez p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->for:Lorg/bouncycastle/crypto/tls/goto;

    add-int/2addr p3, p4

    sub-int/2addr p3, p1

    invoke-virtual {v0, p2, p3, p1}, Lorg/bouncycastle/crypto/tls/goto;->do([BII)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->if:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/goto;->do([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/a0;->protected()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/a0;->implements([BII)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(SLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->switch()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V

    new-array p2, v1, [B

    const/4 p3, 0x0

    aput-byte v1, p2, p3

    int-to-byte p1, p1

    const/4 v0, 0x1

    aput-byte p1, p2, v0

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    const/16 v0, 0x15

    invoke-virtual {p1, v0, p2, p3, v1}, Lorg/bouncycastle/crypto/tls/b;->default(S[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public case()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->const:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->const:[B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {v0}, Landroid/support/v4/mw1;->do()V

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->while:Lorg/bouncycastle/crypto/tls/break;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->import:[I

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->native:[S

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->public:Ljava/util/Hashtable;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->switch:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throws:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->default:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->extends:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->finally:Z

    return-void
.end method

.method public class(Z)[B
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "server finished"

    goto :goto_0

    :cond_0
    const-string v1, "client finished"

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lorg/bouncycastle/crypto/tls/l0;->else:[B

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/bouncycastle/crypto/tls/l0;->case:[B

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/b;->this()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/crypto/tls/a0;->native(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/l0;->this(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public continue()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/h;->do()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->final:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->invalidate()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->final:Lorg/bouncycastle/crypto/tls/TlsSession;

    :cond_1
    return-void
.end method

.method public d(SLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->switch()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x2

    new-array v0, p2, [B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    const/16 p1, 0x15

    invoke-virtual {p0, p1, v0, v2, p2}, Lorg/bouncycastle/crypto/tls/a0;->m(S[BII)V

    return-void
.end method

.method public default(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->break:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/a0;->finally(Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public do()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->do:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v0

    return v0
.end method

.method public e([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p3, v1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->do:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->goto:Z

    if-eqz v1, :cond_3

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->this:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->break:Z

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot read application data until initial handshake completed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot read application data on failed TLS connection"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->l()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->do:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->do:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/tls/goto;->goto([BIII)V

    return p3
.end method

.method public else()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/a0;->finally(Z)V

    return-void
.end method

.method public extends()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/b;->else()V

    return-void
.end method

.method public finally(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->goto:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->goto:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->break:Z

    if-nez p1, :cond_0

    const/16 p1, 0x5a

    const-string v0, "User canceled handshake"

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/a0;->d(SLjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    const-string v0, "Connection closed"

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/a0;->d(SLjava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/b;->import()V

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->break:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->case()V

    :cond_1
    return-void
.end method

.method public g([BII)I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->package:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->do()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/a0;->e([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot use readInput() in blocking mode! Use getInputStream() instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public goto()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->package:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->goto:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->private:Landroid/support/v4/ae;

    invoke-virtual {v0}, Landroid/support/v4/ae;->available()I

    move-result v0

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->break:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :cond_1
    new-instance v0, Landroid/support/v4/q72;

    invoke-direct {v0}, Landroid/support/v4/q72;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use closeInput() in blocking mode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h([BII)I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->package:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->throw()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->abstract:Lorg/bouncycastle/crypto/tls/this;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/this;->do()Lorg/bouncycastle/crypto/tls/goto;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/bouncycastle/crypto/tls/goto;->goto([BIII)V

    return p3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot use readOutput() in blocking mode! Use getOutputStream() instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iget-short v0, v0, Landroid/support/v4/mw1;->class:S

    if-ltz v0, :cond_1

    invoke-static {v0}, Landroid/support/v4/dy0;->do(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    iget-short v1, v1, Landroid/support/v4/mw1;->class:S

    add-int/lit8 v1, v1, 0x8

    shl-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/b;->return(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract import()Lorg/bouncycastle/crypto/tls/for;
.end method

.method public instanceof(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->const:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->const:[B

    invoke-static {p1, v0}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x33

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public interface([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->package:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->break:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/a0;->s([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Application data cannot be sent until the handshake is complete!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot use offerOutput() in blocking mode! Use getOutputStream() instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x64

    const-string v1, "Renegotiation not supported"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/a0;->d(SLjava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public k([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to read record"

    const/16 v1, 0x50

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/crypto/tls/b;->for([B)V
    :try_end_0
    .catch Landroid/support/v4/n72; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, v1, v0, p1}, Lorg/bouncycastle/crypto/tls/a0;->package(SLjava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/support/v4/n72;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    invoke-virtual {p0, v1, v0, p1}, Lorg/bouncycastle/crypto/tls/a0;->package(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Landroid/support/v4/n72;->getAlertDescription()S

    move-result v1

    invoke-virtual {p0, v1, v0, p1}, Lorg/bouncycastle/crypto/tls/a0;->package(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to read record"

    const/16 v1, 0x50

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/b;->throw()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/a0;->break:Z

    if-nez v2, :cond_1

    new-instance v2, Landroid/support/v4/n72;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Landroid/support/v4/n72;-><init>(S)V

    throw v2
    :try_end_0
    .catch Landroid/support/v4/o72; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/support/v4/n72; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->private()V

    new-instance v0, Landroid/support/v4/q72;

    invoke-direct {v0}, Landroid/support/v4/q72;-><init>()V

    throw v0

    :catch_0
    move-exception v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/bouncycastle/crypto/tls/a0;->package(SLjava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/support/v4/n72;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/bouncycastle/crypto/tls/a0;->package(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Landroid/support/v4/n72;->getAlertDescription()S

    move-result v2

    invoke-virtual {p0, v2, v0, v1}, Lorg/bouncycastle/crypto/tls/a0;->package(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    throw v0
.end method

.method public m(S[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to write record"

    const/16 v1, 0x50

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/b;->default(S[BII)V
    :try_end_0
    .catch Landroid/support/v4/n72; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, v1, v0, p1}, Lorg/bouncycastle/crypto/tls/a0;->package(SLjava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Landroid/support/v4/n72;

    invoke-direct {p2, v1, p1}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    invoke-virtual {p0, v1, v0, p1}, Lorg/bouncycastle/crypto/tls/a0;->package(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Landroid/support/v4/n72;->getAlertDescription()S

    move-result p2

    invoke-virtual {p0, p2, v0, p1}, Lorg/bouncycastle/crypto/tls/a0;->package(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public n(Lorg/bouncycastle/crypto/tls/break;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lorg/bouncycastle/crypto/tls/break;->if:Lorg/bouncycastle/crypto/tls/break;

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a;->catch()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " client didn\'t provide credentials"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x29

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/a0;->d(SLjava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/a0$do;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/a0$do;-><init>(Lorg/bouncycastle/crypto/tls/a0;S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/break;->if(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a0$do;->do()V

    return-void
.end method

.method public new()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->package:Z

    if-eqz v0, :cond_1

    :goto_0
    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->goto:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->l()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :cond_1
    return-void
.end method

.method public o()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/16 v3, 0x14

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/bouncycastle/crypto/tls/a0;->m(S[BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/b;->native()V

    return-void
.end method

.method public p()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/a0;->class(Z)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/a0$do;

    array-length v2, v0

    const/16 v3, 0x14

    invoke-direct {v1, p0, v3, v2}, Lorg/bouncycastle/crypto/tls/a0$do;-><init>(Lorg/bouncycastle/crypto/tls/a0;SI)V

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/a0$do;->do()V

    return-void
.end method

.method public package(SLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->goto:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/a0;->c(SLjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->private()V

    :cond_0
    return-void
.end method

.method public private()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->goto:Z

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->this:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->continue()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/b;->import()V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->break:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->case()V

    :cond_0
    return-void
.end method

.method public public()Ljava/io/InputStream;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->package:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->case:Lorg/bouncycastle/crypto/tls/w;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use InputStream in non-blocking mode! Use offerInput() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q(Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/a0$do;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/a0$do;-><init>(Lorg/bouncycastle/crypto/tls/a0;S)V

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/a0;->w(Ljava/io/OutputStream;Ljava/util/Vector;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a0$do;->do()V

    return-void
.end method

.method public r(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/a0;->class:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal appDataSplitMode mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public return()Ljava/io/OutputStream;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->package:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->else:Lorg/bouncycastle/crypto/tls/y;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use OutputStream in non-blocking mode! Use offerOutput() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->goto:Z

    if-nez v0, :cond_5

    :cond_0
    :goto_0
    if-lez p3, :cond_4

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->catch:Z

    const/16 v1, 0x17

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/bouncycastle/crypto/tls/a0;->class:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    invoke-virtual {p0, v1, p1, p2, v3}, Lorg/bouncycastle/crypto/tls/a0;->m(S[BII)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/a0;->catch:Z

    :cond_2
    sget-object v0, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    invoke-virtual {p0, v1, v0, v2, v2}, Lorg/bouncycastle/crypto/tls/a0;->m(S[BII)V

    :cond_3
    :goto_1
    if-lez p3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/b;->catch()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v1, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/a0;->m(S[BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot write application data on closed/failed TLS connection"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public strictfp()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->goto:Z

    return v0
.end method

.method public super()I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->package:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->do()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use getAvailableInputBytes() in blocking mode! Use getInputStream().available() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract switch()Lorg/bouncycastle/crypto/tls/TlsPeer;
.end method

.method public this()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    :try_start_0
    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->if:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/goto;->break()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->for:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/goto;->break()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/b;->case()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->while()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->u(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->catch:Z

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->break:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/a0;->break:Z

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->package:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/w;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/tls/w;-><init>(Lorg/bouncycastle/crypto/tls/a0;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->case:Lorg/bouncycastle/crypto/tls/w;

    new-instance v0, Lorg/bouncycastle/crypto/tls/y;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/tls/y;-><init>(Lorg/bouncycastle/crypto/tls/a0;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->else:Lorg/bouncycastle/crypto/tls/y;

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->final:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    if-nez v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/h$if;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/h$if;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {v1}, Landroid/support/v4/mw1;->if()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/h$if;->if(I)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {v1}, Landroid/support/v4/mw1;->new()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/h$if;->for(S)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {v1}, Landroid/support/v4/mw1;->final()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/h$if;->new(Z)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {v1}, Landroid/support/v4/mw1;->case()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/h$if;->try([B)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->while:Lorg/bouncycastle/crypto/tls/break;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/h$if;->else(Lorg/bouncycastle/crypto/tls/break;)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {v1}, Landroid/support/v4/mw1;->else()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/h$if;->case([B)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->throw:Landroid/support/v4/mw1;

    invoke-virtual {v1}, Landroid/support/v4/mw1;->break()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/h$if;->this([B)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->return:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/h$if;->break(Ljava/util/Hashtable;)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/h$if;->do()Lorg/bouncycastle/crypto/tls/h;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    new-instance v0, Lorg/bouncycastle/crypto/tls/j0;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->final:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->super:Lorg/bouncycastle/crypto/tls/h;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/j0;-><init>([BLorg/bouncycastle/crypto/tls/h;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->final:Lorg/bouncycastle/crypto/tls/TlsSession;

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->import()Lorg/bouncycastle/crypto/tls/for;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->final:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/for;->for(Lorg/bouncycastle/crypto/tls/TlsSession;)V

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->switch()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyHandshakeComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->case()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->case()V

    throw v0
.end method

.method public throw()I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->package:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->abstract:Lorg/bouncycastle/crypto/tls/this;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/this;->do()Lorg/bouncycastle/crypto/tls/goto;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use getAvailableOutputBytes() in blocking mode! Use getOutputStream() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public throws(SS)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->switch()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertReceived(SS)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/a0;->default(S)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->private()V

    new-instance p1, Landroid/support/v4/o72;

    invoke-direct {p1, p2}, Landroid/support/v4/o72;-><init>(S)V

    throw p1
.end method

.method public try(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->throws:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public u([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-lt p3, v0, :cond_2

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/l0;->d0([BI)S

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/b;->break()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    sub-int v1, p3, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/a0;->new:Lorg/bouncycastle/crypto/tls/b;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/b;->catch()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x16

    add-int v3, p2, v0

    invoke-virtual {p0, v2, p1, v3, v1}, Lorg/bouncycastle/crypto/tls/a0;->m(S[BII)V

    add-int/2addr v0, v1

    if-lt v0, p3, :cond_1

    return-void

    :cond_2
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public volatile([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->package:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/a0;->goto:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->private:Landroid/support/v4/ae;

    invoke-virtual {v0, p1}, Landroid/support/v4/ae;->do([B)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/a0;->private:Landroid/support/v4/ae;

    invoke-virtual {p1}, Landroid/support/v4/ae;->available()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_3

    new-array p1, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/a0;->private:Landroid/support/v4/ae;

    invoke-virtual {v1, p1}, Landroid/support/v4/ae;->if([B)I

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/tls/l0;->U([BI)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a0;->private:Landroid/support/v4/ae;

    invoke-virtual {v0}, Landroid/support/v4/ae;->available()I

    move-result v0

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/a0;->k([B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a0;->l()V

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/a0;->goto:Z

    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/a0;->static:S

    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Connection is closed, cannot accept any more input"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use offerInput() in blocking mode! Use getInputStream() instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public abstract while()Lorg/bouncycastle/crypto/tls/TlsContext;
.end method
