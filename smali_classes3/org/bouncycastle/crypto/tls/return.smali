.class Lorg/bouncycastle/crypto/tls/return;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/DatagramTransport;


# static fields
.field private static final import:I = 0xd

.field private static final native:I = 0x4000

.field private static final public:J = 0x1d4c0L

.field private static final return:J = 0x3a980L


# instance fields
.field private volatile break:I

.field private volatile case:Z

.field private catch:Lorg/bouncycastle/crypto/tls/import;

.field private class:Lorg/bouncycastle/crypto/tls/import;

.field private const:Lorg/bouncycastle/crypto/tls/import;

.field private final do:Lorg/bouncycastle/crypto/tls/DatagramTransport;

.field private volatile else:Lorg/bouncycastle/crypto/tls/a;

.field private final:Lorg/bouncycastle/crypto/tls/import;

.field private final for:Lorg/bouncycastle/crypto/tls/TlsPeer;

.field private volatile goto:Lorg/bouncycastle/crypto/tls/a;

.field private final if:Lorg/bouncycastle/crypto/tls/TlsContext;

.field private final new:Lorg/bouncycastle/crypto/tls/goto;

.field private super:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

.field private volatile this:Z

.field private throw:Lorg/bouncycastle/crypto/tls/import;

.field private volatile try:Z

.field private while:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/DatagramTransport;Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsPeer;S)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Lorg/bouncycastle/crypto/tls/goto;

    invoke-direct {p4}, Lorg/bouncycastle/crypto/tls/goto;-><init>()V

    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/return;->new:Lorg/bouncycastle/crypto/tls/goto;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lorg/bouncycastle/crypto/tls/return;->try:Z

    iput-boolean p4, p0, Lorg/bouncycastle/crypto/tls/return;->case:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->else:Lorg/bouncycastle/crypto/tls/a;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->goto:Lorg/bouncycastle/crypto/tls/a;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->super:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->throw:Lorg/bouncycastle/crypto/tls/import;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/bouncycastle/crypto/tls/return;->while:J

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/return;->do:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/return;->if:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/return;->for:Lorg/bouncycastle/crypto/tls/TlsPeer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/return;->this:Z

    new-instance p1, Lorg/bouncycastle/crypto/tls/import;

    new-instance p3, Lorg/bouncycastle/crypto/tls/x;

    invoke-direct {p3, p2}, Lorg/bouncycastle/crypto/tls/x;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-direct {p1, p4, p3}, Lorg/bouncycastle/crypto/tls/import;-><init>(ILorg/bouncycastle/crypto/tls/TlsCipher;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/return;->catch:Lorg/bouncycastle/crypto/tls/import;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->class:Lorg/bouncycastle/crypto/tls/import;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/return;->const:Lorg/bouncycastle/crypto/tls/import;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/return;->final:Lorg/bouncycastle/crypto/tls/import;

    const/16 p1, 0x4000

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/return;->const(I)V

    return-void
.end method

.method private break([BIII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->new:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v0

    const/16 v1, 0xd

    if-lez v0, :cond_1

    iget-object p3, p0, Lorg/bouncycastle/crypto/tls/return;->new:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result p3

    const/4 p4, 0x0

    if-lt p3, v1, :cond_0

    const/4 p3, 0x2

    new-array v0, p3, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/return;->new:Lorg/bouncycastle/crypto/tls/goto;

    const/16 v3, 0xb

    invoke-virtual {v2, v0, p4, p3, v3}, Lorg/bouncycastle/crypto/tls/goto;->try([BIII)V

    invoke-static {v0, p4}, Lorg/bouncycastle/crypto/tls/l0;->U([BI)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->new:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v0

    add-int/2addr p3, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->new:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/goto;->goto([BIII)V

    return p3

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->do:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->receive([BIII)I

    move-result p3

    if-lt p3, v1, :cond_2

    add-int/lit8 p4, p2, 0xb

    invoke-static {p1, p4}, Lorg/bouncycastle/crypto/tls/l0;->U([BI)I

    move-result p4

    add-int/2addr p4, v1

    if-le p3, p4, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->new:Lorg/bouncycastle/crypto/tls/goto;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/goto;->do([BII)V

    move p3, p4

    :cond_2
    return p3
.end method

.method private class(S[BII)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v8, p1

    move/from16 v7, p4

    iget-object v1, v0, Lorg/bouncycastle/crypto/tls/return;->goto:Lorg/bouncycastle/crypto/tls/a;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lorg/bouncycastle/crypto/tls/return;->break:I

    const/16 v2, 0x50

    if-gt v7, v1, :cond_3

    const/4 v9, 0x1

    if-ge v7, v9, :cond_2

    const/16 v1, 0x17

    if-ne v8, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/support/v4/n72;

    invoke-direct {v1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw v1

    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/tls/return;->final:Lorg/bouncycastle/crypto/tls/import;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/import;->for()I

    move-result v10

    iget-object v1, v0, Lorg/bouncycastle/crypto/tls/return;->final:Lorg/bouncycastle/crypto/tls/import;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/import;->do()J

    move-result-wide v11

    iget-object v1, v0, Lorg/bouncycastle/crypto/tls/return;->final:Lorg/bouncycastle/crypto/tls/import;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/import;->if()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v1

    invoke-static {v10, v11, v12}, Lorg/bouncycastle/crypto/tls/return;->new(IJ)J

    move-result-wide v2

    move v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v1

    array-length v2, v1

    const/16 v3, 0xd

    add-int/2addr v2, v3

    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lorg/bouncycastle/crypto/tls/l0;->I0(S[BI)V

    iget-object v6, v0, Lorg/bouncycastle/crypto/tls/return;->goto:Lorg/bouncycastle/crypto/tls/a;

    invoke-static {v6, v4, v9}, Lorg/bouncycastle/crypto/tls/l0;->O0(Lorg/bouncycastle/crypto/tls/a;[BI)V

    const/4 v6, 0x3

    invoke-static {v10, v4, v6}, Lorg/bouncycastle/crypto/tls/l0;->s0(I[BI)V

    const/4 v6, 0x5

    invoke-static {v11, v12, v4, v6}, Lorg/bouncycastle/crypto/tls/l0;->C0(J[BI)V

    array-length v6, v1

    const/16 v7, 0xb

    invoke-static {v6, v4, v7}, Lorg/bouncycastle/crypto/tls/l0;->s0(I[BI)V

    array-length v6, v1

    invoke-static {v1, v5, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/tls/return;->do:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    invoke-interface {v1, v4, v5, v2}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->send([BII)V

    return-void

    :cond_3
    new-instance v1, Landroid/support/v4/n72;

    invoke-direct {v1, v2}, Landroid/support/v4/n72;-><init>(S)V

    throw v1
.end method

.method private do()V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/return;->try:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/return;->case:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/return;->throw(SLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->do:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/return;->try:Z

    :cond_1
    return-void
.end method

.method private static new(IJ)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p0, 0x30

    shl-long/2addr v0, p0

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private this(SSLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->for:Lorg/bouncycastle/crypto/tls/TlsPeer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p3, 0x2

    new-array p4, p3, [B

    int-to-byte p1, p1

    const/4 v0, 0x0

    aput-byte p1, p4, v0

    int-to-byte p1, p2

    const/4 p2, 0x1

    aput-byte p1, p4, p2

    const/16 p1, 0x15

    invoke-direct {p0, p1, p4, v0, p3}, Lorg/bouncycastle/crypto/tls/return;->class(S[BII)V

    return-void
.end method


# virtual methods
.method public case()Lorg/bouncycastle/crypto/tls/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->else:Lorg/bouncycastle/crypto/tls/a;

    return-object v0
.end method

.method public catch()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->throw:Lorg/bouncycastle/crypto/tls/import;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->catch:Lorg/bouncycastle/crypto/tls/import;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->final:Lorg/bouncycastle/crypto/tls/import;

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/return;->try:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/return;->this:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    const-string v1, "User canceled handshake"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/return;->throw(SLjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/return;->do()V

    :cond_1
    return-void
.end method

.method public const(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/return;->break:I

    return-void
.end method

.method public else(Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->const:Lorg/bouncycastle/crypto/tls/import;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/return;->catch:Lorg/bouncycastle/crypto/tls/import;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->final:Lorg/bouncycastle/crypto/tls/import;

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/return;->super:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/return;->throw:Lorg/bouncycastle/crypto/tls/import;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x3a980

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/return;->while:J

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/return;->this:Z

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/return;->class:Lorg/bouncycastle/crypto/tls/import;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/return;->catch:Lorg/bouncycastle/crypto/tls/import;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/return;->class:Lorg/bouncycastle/crypto/tls/import;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final(Lorg/bouncycastle/crypto/tls/a;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/return;->else:Lorg/bouncycastle/crypto/tls/a;

    return-void
.end method

.method public for()V
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/return;->try:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/return;->case:Z

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/return;->do()V

    :cond_0
    return-void
.end method

.method public getReceiveLimit()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/return;->break:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/return;->const:Lorg/bouncycastle/crypto/tls/import;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/import;->if()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/return;->do:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->getReceiveLimit()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsCipher;->getPlaintextLimit(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getSendLimit()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/return;->break:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/return;->final:Lorg/bouncycastle/crypto/tls/import;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/import;->if()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/return;->do:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->getSendLimit()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsCipher;->getPlaintextLimit(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public goto(Lorg/bouncycastle/crypto/tls/TlsCipher;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->class:Lorg/bouncycastle/crypto/tls/import;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/import;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/return;->final:Lorg/bouncycastle/crypto/tls/import;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/import;->for()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/import;-><init>(ILorg/bouncycastle/crypto/tls/TlsCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->class:Lorg/bouncycastle/crypto/tls/import;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public if(S)V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/return;->try:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v1, v1}, Lorg/bouncycastle/crypto/tls/return;->this(SSLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/return;->case:Z

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/return;->do()V

    :cond_0
    return-void
.end method

.method public receive([BIII)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/crypto/tls/return;->getReceiveLimit()I

    move-result v3

    move/from16 v4, p3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v5, 0xd

    add-int/2addr v3, v5

    if-eqz v2, :cond_0

    array-length v6, v2

    if-ge v6, v3, :cond_1

    :cond_0
    new-array v2, v3, [B

    :cond_1
    :try_start_0
    iget-object v6, v1, Lorg/bouncycastle/crypto/tls/return;->super:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lorg/bouncycastle/crypto/tls/return;->while:J

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    iput-object v0, v1, Lorg/bouncycastle/crypto/tls/return;->super:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    iput-object v0, v1, Lorg/bouncycastle/crypto/tls/return;->throw:Lorg/bouncycastle/crypto/tls/import;

    :cond_2
    const/4 v13, 0x0

    move/from16 v14, p4

    invoke-direct {v1, v2, v13, v3, v14}, Lorg/bouncycastle/crypto/tls/return;->break([BIII)I

    move-result v3

    if-gez v3, :cond_3

    return v3

    :cond_3
    if-ge v3, v5, :cond_4

    :goto_1
    move-object/from16 v5, p1

    move/from16 v6, p2

    goto :goto_0

    :cond_4
    const/16 v6, 0xb

    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/tls/l0;->U([BI)I

    move-result v6

    add-int/2addr v6, v5

    if-eq v3, v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v2, v13}, Lorg/bouncycastle/crypto/tls/l0;->d0([BI)S

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v6, 0x3

    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/tls/l0;->U([BI)I

    move-result v15

    iget-object v6, v1, Lorg/bouncycastle/crypto/tls/return;->const:Lorg/bouncycastle/crypto/tls/import;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/import;->for()I

    move-result v6

    if-ne v15, v6, :cond_6

    iget-object v6, v1, Lorg/bouncycastle/crypto/tls/return;->const:Lorg/bouncycastle/crypto/tls/import;

    :goto_2
    move-object/from16 v16, v6

    goto :goto_3

    :cond_6
    const/16 v6, 0x16

    if-ne v5, v6, :cond_7

    iget-object v6, v1, Lorg/bouncycastle/crypto/tls/return;->throw:Lorg/bouncycastle/crypto/tls/import;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/import;->for()I

    move-result v6

    if-ne v15, v6, :cond_7

    iget-object v6, v1, Lorg/bouncycastle/crypto/tls/return;->throw:Lorg/bouncycastle/crypto/tls/import;

    goto :goto_2

    :cond_7
    move-object/from16 v16, v0

    :goto_3
    if-nez v16, :cond_8

    goto :goto_1

    :cond_8
    const/4 v6, 0x5

    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/tls/l0;->b0([BI)J

    move-result-wide v11

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/crypto/tls/import;->new()Lorg/bouncycastle/crypto/tls/switch;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Lorg/bouncycastle/crypto/tls/switch;->for(J)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_1

    :cond_9
    const/4 v10, 0x1

    invoke-static {v2, v10}, Lorg/bouncycastle/crypto/tls/l0;->g0([BI)Lorg/bouncycastle/crypto/tls/a;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/crypto/tls/a;->goto()Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_1

    :cond_a
    iget-object v6, v1, Lorg/bouncycastle/crypto/tls/return;->else:Lorg/bouncycastle/crypto/tls/a;

    if-eqz v6, :cond_b

    iget-object v6, v1, Lorg/bouncycastle/crypto/tls/return;->else:Lorg/bouncycastle/crypto/tls/a;

    invoke-virtual {v6, v9}, Lorg/bouncycastle/crypto/tls/a;->do(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/crypto/tls/import;->if()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/crypto/tls/import;->for()I

    move-result v7

    invoke-static {v7, v11, v12}, Lorg/bouncycastle/crypto/tls/return;->new(IJ)J

    move-result-wide v7

    const/16 v17, 0xd

    add-int/lit8 v3, v3, -0xd

    move-object v0, v9

    move v9, v5

    move-object v10, v2

    move-wide v13, v11

    move/from16 v11, v17

    move v12, v3

    invoke-interface/range {v6 .. v12}, Lorg/bouncycastle/crypto/tls/TlsCipher;->decodeCiphertext(JS[BII)[B

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/crypto/tls/import;->new()Lorg/bouncycastle/crypto/tls/switch;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Lorg/bouncycastle/crypto/tls/switch;->do(J)V

    array-length v6, v3

    iget v7, v1, Lorg/bouncycastle/crypto/tls/return;->break:I

    if-le v6, v7, :cond_d

    :cond_c
    :goto_4
    :pswitch_1
    move-object/from16 v5, p1

    move/from16 v6, p2

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    iget-object v6, v1, Lorg/bouncycastle/crypto/tls/return;->else:Lorg/bouncycastle/crypto/tls/a;

    if-nez v6, :cond_e

    iput-object v0, v1, Lorg/bouncycastle/crypto/tls/return;->else:Lorg/bouncycastle/crypto/tls/a;

    :cond_e
    packed-switch v5, :pswitch_data_1

    goto :goto_7

    :pswitch_2
    iget-boolean v0, v1, Lorg/bouncycastle/crypto/tls/return;->this:Z

    if-eqz v0, :cond_12

    goto :goto_4

    :pswitch_3
    iget-boolean v0, v1, Lorg/bouncycastle/crypto/tls/return;->this:Z

    if-nez v0, :cond_12

    iget-object v0, v1, Lorg/bouncycastle/crypto/tls/return;->super:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v0, :cond_c

    array-length v5, v3

    const/4 v6, 0x0

    invoke-interface {v0, v15, v3, v6, v5}, Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;->receivedHandshakeRecord(I[BII)V

    goto :goto_4

    :pswitch_4
    array-length v0, v3

    const/4 v5, 0x2

    if-ne v0, v5, :cond_c

    const/4 v0, 0x0

    aget-byte v0, v3, v0

    int-to-short v0, v0

    const/4 v6, 0x1

    aget-byte v3, v3, v6

    int-to-short v3, v3

    iget-object v6, v1, Lorg/bouncycastle/crypto/tls/return;->for:Lorg/bouncycastle/crypto/tls/TlsPeer;

    invoke-interface {v6, v0, v3}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertReceived(SS)V

    if-eq v0, v5, :cond_f

    if-nez v3, :cond_c

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/crypto/tls/return;->do()V

    goto :goto_4

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/crypto/tls/return;->for()V

    new-instance v0, Landroid/support/v4/n72;

    invoke-direct {v0, v3}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :pswitch_5
    const/4 v6, 0x1

    const/4 v13, 0x0

    :goto_5
    array-length v0, v3

    if-ge v13, v0, :cond_c

    invoke-static {v3, v13}, Lorg/bouncycastle/crypto/tls/l0;->d0([BI)S

    move-result v0

    if-eq v0, v6, :cond_10

    goto :goto_6

    :cond_10
    iget-object v0, v1, Lorg/bouncycastle/crypto/tls/return;->class:Lorg/bouncycastle/crypto/tls/import;

    if-eqz v0, :cond_11

    iput-object v0, v1, Lorg/bouncycastle/crypto/tls/return;->const:Lorg/bouncycastle/crypto/tls/import;

    :cond_11
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_12
    :goto_7
    iget-boolean v0, v1, Lorg/bouncycastle/crypto/tls/return;->this:Z

    if-nez v0, :cond_13

    iget-object v0, v1, Lorg/bouncycastle/crypto/tls/return;->super:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iput-object v0, v1, Lorg/bouncycastle/crypto/tls/return;->super:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    iput-object v0, v1, Lorg/bouncycastle/crypto/tls/return;->throw:Lorg/bouncycastle/crypto/tls/import;

    :cond_13
    array-length v0, v3

    move-object/from16 v5, p1

    move/from16 v6, p2

    const/4 v2, 0x0

    invoke-static {v3, v2, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public send([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/return;->this:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->final:Lorg/bouncycastle/crypto/tls/import;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/return;->throw:Lorg/bouncycastle/crypto/tls/import;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    goto :goto_2

    :cond_1
    :goto_0
    const/16 v0, 0x16

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/l0;->d0([BI)S

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/tls/return;->this:Z

    if-eqz v3, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/return;->class:Lorg/bouncycastle/crypto/tls/import;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/return;->final:Lorg/bouncycastle/crypto/tls/import;

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/return;->throw:Lorg/bouncycastle/crypto/tls/import;

    if-ne v3, v4, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/return;->catch:Lorg/bouncycastle/crypto/tls/import;

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v3, v4, v5

    invoke-direct {p0, v2, v4, v5, v3}, Lorg/bouncycastle/crypto/tls/return;->class(S[BII)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/return;->final:Lorg/bouncycastle/crypto/tls/import;

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    :goto_2
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/return;->class(S[BII)V

    return-void
.end method

.method public super(Lorg/bouncycastle/crypto/tls/a;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/return;->goto:Lorg/bouncycastle/crypto/tls/a;

    return-void
.end method

.method public throw(SLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/bouncycastle/crypto/tls/return;->this(SSLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public try()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/return;->const:Lorg/bouncycastle/crypto/tls/import;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/import;->for()I

    move-result v0

    return v0
.end method
