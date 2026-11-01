.class Lorg/bouncycastle/crypto/tls/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/b$if;
    }
.end annotation


# static fields
.field public static final default:I = 0x3

.field private static return:I = 0x4000

.field public static final static:I = 0x5

.field public static final switch:I = 0x0

.field public static final throws:I = 0x1


# instance fields
.field private break:Lorg/bouncycastle/crypto/tls/b$if;

.field private case:Lorg/bouncycastle/crypto/tls/TlsCompression;

.field private catch:Lorg/bouncycastle/crypto/tls/b$if;

.field private class:Ljava/io/ByteArrayOutputStream;

.field private const:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

.field private do:Lorg/bouncycastle/crypto/tls/a0;

.field private else:Lorg/bouncycastle/crypto/tls/TlsCipher;

.field private final:Landroid/support/v4/cz1;

.field private for:Ljava/io/OutputStream;

.field private goto:Lorg/bouncycastle/crypto/tls/TlsCipher;

.field private if:Ljava/io/InputStream;

.field private import:I

.field private native:I

.field private new:Lorg/bouncycastle/crypto/tls/TlsCompression;

.field private public:I

.field private super:Lorg/bouncycastle/crypto/tls/a;

.field private this:Lorg/bouncycastle/crypto/tls/TlsCipher;

.field private throw:Lorg/bouncycastle/crypto/tls/a;

.field private try:Lorg/bouncycastle/crypto/tls/TlsCompression;

.field private while:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/a0;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->new:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->try:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->case:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->else:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->goto:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->this:Lorg/bouncycastle/crypto/tls/TlsCipher;

    new-instance v1, Lorg/bouncycastle/crypto/tls/b$if;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/tls/b$if;-><init>(Lorg/bouncycastle/crypto/tls/b$do;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/b;->break:Lorg/bouncycastle/crypto/tls/b$if;

    new-instance v1, Lorg/bouncycastle/crypto/tls/b$if;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/tls/b$if;-><init>(Lorg/bouncycastle/crypto/tls/b$do;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/b;->catch:Lorg/bouncycastle/crypto/tls/b$if;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/b;->class:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->const:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    new-instance v1, Lorg/bouncycastle/crypto/tls/b$do;

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/tls/b$do;-><init>(Lorg/bouncycastle/crypto/tls/b;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/b;->final:Landroid/support/v4/cz1;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->super:Lorg/bouncycastle/crypto/tls/a;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->throw:Lorg/bouncycastle/crypto/tls/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/b;->while:Z

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/b;->do:Lorg/bouncycastle/crypto/tls/a0;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/b;->if:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/b;->for:Ljava/io/OutputStream;

    new-instance p1, Landroid/support/v4/r72;

    invoke-direct {p1}, Landroid/support/v4/r72;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/b;->try:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/b;->case:Lorg/bouncycastle/crypto/tls/TlsCompression;

    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/crypto/tls/b;)Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/tls/b;->const:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-object p0
.end method

.method private goto()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->class:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/b;->class:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0
.end method

.method private static if(IIS)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method private static new(SS)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public break()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->final:Landroid/support/v4/cz1;

    return-object v0
.end method

.method public case()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->try:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/b;->new:Lorg/bouncycastle/crypto/tls/TlsCompression;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->case:Lorg/bouncycastle/crypto/tls/TlsCompression;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->goto:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/b;->else:Lorg/bouncycastle/crypto/tls/TlsCipher;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->this:Lorg/bouncycastle/crypto/tls/TlsCipher;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->new:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->else:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public catch()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/b;->import:I

    return v0
.end method

.method public class()Lorg/bouncycastle/crypto/tls/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->super:Lorg/bouncycastle/crypto/tls/a;

    return-object v0
.end method

.method public const(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/x;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/tls/x;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->goto:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->this:Lorg/bouncycastle/crypto/tls/TlsCipher;

    new-instance v0, Lorg/bouncycastle/crypto/tls/continue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/continue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->const:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    sget p1, Lorg/bouncycastle/crypto/tls/b;->return:I

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/b;->return(I)V

    return-void
.end method

.method public default(S[BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->throw:Lorg/bouncycastle/crypto/tls/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/b;->new(SS)V

    iget v1, p0, Lorg/bouncycastle/crypto/tls/b;->import:I

    invoke-static {p4, v1, v0}, Lorg/bouncycastle/crypto/tls/b;->if(IIS)V

    const/4 v1, 0x1

    if-ge p4, v1, :cond_2

    const/16 v2, 0x17

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/b;->case:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/b;->class:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsCompression;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/b;->catch:Lorg/bouncycastle/crypto/tls/b$if;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/tls/b$if;->do(S)J

    move-result-wide v5

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/b;->class:Ljava/io/ByteArrayOutputStream;

    if-ne v2, v3, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/b;->this:Lorg/bouncycastle/crypto/tls/TlsCipher;

    move v7, p1

    move-object v8, p2

    move v9, p3

    move v10, p4

    invoke-interface/range {v4 .. v10}, Lorg/bouncycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object p2

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/b;->goto()[B

    move-result-object v8

    array-length p2, v8

    add-int/lit16 p4, p4, 0x400

    invoke-static {p2, p4, v0}, Lorg/bouncycastle/crypto/tls/b;->if(IIS)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/b;->this:Lorg/bouncycastle/crypto/tls/TlsCipher;

    const/4 v9, 0x0

    array-length v10, v8

    move v7, p1

    invoke-interface/range {v4 .. v10}, Lorg/bouncycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object p2

    :goto_1
    array-length p3, p2

    iget p4, p0, Lorg/bouncycastle/crypto/tls/b;->public:I

    invoke-static {p3, p4, v0}, Lorg/bouncycastle/crypto/tls/b;->if(IIS)V

    array-length p3, p2

    const/4 p4, 0x5

    add-int/2addr p3, p4

    new-array p3, p3, [B

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lorg/bouncycastle/crypto/tls/l0;->I0(S[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/b;->throw:Lorg/bouncycastle/crypto/tls/a;

    invoke-static {p1, p3, v1}, Lorg/bouncycastle/crypto/tls/l0;->O0(Lorg/bouncycastle/crypto/tls/a;[BI)V

    array-length p1, p2

    const/4 v1, 0x3

    invoke-static {p1, p3, v1}, Lorg/bouncycastle/crypto/tls/l0;->s0(I[BI)V

    array-length p1, p2

    invoke-static {p2, v0, p3, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/b;->for:Ljava/io/OutputStream;

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/b;->for:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public else()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->for:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->const:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->notifyPRFDetermined()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->const:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method public for([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/l0;->d0([BI)S

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/b;->new(SS)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/b;->while:Z

    const/16 v1, 0x2f

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/tls/l0;->i0([BI)I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    const/16 v2, 0x300

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/tls/l0;->g0([BI)Lorg/bouncycastle/crypto/tls/a;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/b;->super:Lorg/bouncycastle/crypto/tls/a;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/a;->do(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/l0;->U([BI)I

    move-result p1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/b;->public:I

    const/16 v1, 0x16

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/crypto/tls/b;->if(IIS)V

    return-void

    :cond_3
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public import()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->if:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->for:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public native()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->new:Lorg/bouncycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/b;->else:Lorg/bouncycastle/crypto/tls/TlsCipher;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->case:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/b;->this:Lorg/bouncycastle/crypto/tls/TlsCipher;

    new-instance v0, Lorg/bouncycastle/crypto/tls/b$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/b$if;-><init>(Lorg/bouncycastle/crypto/tls/b$do;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->catch:Lorg/bouncycastle/crypto/tls/b$if;

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public public(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/b;->new:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/b;->else:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-void
.end method

.method public return(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/b;->import:I

    add-int/lit16 p1, p1, 0x400

    iput p1, p0, Lorg/bouncycastle/crypto/tls/b;->native:I

    add-int/lit16 p1, p1, 0x400

    iput p1, p0, Lorg/bouncycastle/crypto/tls/b;->public:I

    return-void
.end method

.method public static(Lorg/bouncycastle/crypto/tls/a;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/b;->super:Lorg/bouncycastle/crypto/tls/a;

    return-void
.end method

.method public super()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->const:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->stopTracking()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/b;->const:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method public switch(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/b;->while:Z

    return-void
.end method

.method public this()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->const:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method public throw()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->if:Ljava/io/InputStream;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/l0;->L(ILjava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->d0([BI)S

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/b;->new(SS)V

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/tls/b;->while:Z

    const/16 v4, 0x2f

    const/4 v5, 0x1

    if-nez v3, :cond_2

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/tls/l0;->i0([BI)I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    const/16 v6, 0x300

    if-ne v3, v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/n72;

    invoke-direct {v0, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :cond_2
    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/tls/l0;->g0([BI)Lorg/bouncycastle/crypto/tls/a;

    move-result-object v3

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/b;->super:Lorg/bouncycastle/crypto/tls/a;

    if-nez v6, :cond_3

    iput-object v3, p0, Lorg/bouncycastle/crypto/tls/b;->super:Lorg/bouncycastle/crypto/tls/a;

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v6}, Lorg/bouncycastle/crypto/tls/a;->do(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    const/4 v3, 0x3

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/l0;->U([BI)I

    move-result v0

    iget v3, p0, Lorg/bouncycastle/crypto/tls/b;->public:I

    const/16 v4, 0x16

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/crypto/tls/b;->if(IIS)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/b;->if:Ljava/io/InputStream;

    invoke-virtual {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/tls/b;->try(SLjava/io/InputStream;I)[B

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/b;->do:Lorg/bouncycastle/crypto/tls/a0;

    array-length v4, v0

    invoke-virtual {v3, v2, v0, v1, v4}, Lorg/bouncycastle/crypto/tls/a0;->b(S[BII)V

    return v5

    :cond_4
    new-instance v0, Landroid/support/v4/n72;

    invoke-direct {v0, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public throws(Lorg/bouncycastle/crypto/tls/a;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/b;->throw:Lorg/bouncycastle/crypto/tls/a;

    return-void
.end method

.method public try(SLjava/io/InputStream;I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3, p2}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object v4

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/b;->break:Lorg/bouncycastle/crypto/tls/b$if;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Lorg/bouncycastle/crypto/tls/b$if;->do(S)J

    move-result-wide v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->goto:Lorg/bouncycastle/crypto/tls/TlsCipher;

    array-length v6, v4

    const/4 v5, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsCipher;->decodeCiphertext(JS[BII)[B

    move-result-object p2

    array-length p3, p2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/b;->native:I

    const/16 v1, 0x16

    invoke-static {p3, v0, v1}, Lorg/bouncycastle/crypto/tls/b;->if(IIS)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/tls/b;->try:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->class:Ljava/io/ByteArrayOutputStream;

    invoke-interface {p3, v0}, Lorg/bouncycastle/crypto/tls/TlsCompression;->decompress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->class:Ljava/io/ByteArrayOutputStream;

    if-eq p3, v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p3, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/b;->goto()[B

    move-result-object p2

    :cond_0
    array-length p3, p2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/b;->import:I

    const/16 v1, 0x1e

    invoke-static {p3, v0, v1}, Lorg/bouncycastle/crypto/tls/b;->if(IIS)V

    array-length p3, p2

    const/4 v0, 0x1

    if-ge p3, v0, :cond_2

    const/16 p3, 0x17

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x2f

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_2
    :goto_0
    return-object p2
.end method

.method public while()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->new:Lorg/bouncycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/b;->else:Lorg/bouncycastle/crypto/tls/TlsCipher;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->try:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/b;->goto:Lorg/bouncycastle/crypto/tls/TlsCipher;

    new-instance v0, Lorg/bouncycastle/crypto/tls/b$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/b$if;-><init>(Lorg/bouncycastle/crypto/tls/b$do;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/b;->break:Lorg/bouncycastle/crypto/tls/b$if;

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method
