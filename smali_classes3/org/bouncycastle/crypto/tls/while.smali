.class public Lorg/bouncycastle/crypto/tls/while;
.super Lorg/bouncycastle/crypto/tls/native;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/while$do;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/native;-><init>(Ljava/security/SecureRandom;)V

    return-void
.end method

.method public static final([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->d0([BI)S

    move-result v0

    const/16 v1, 0x23

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p1

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/l0;->while(I)V

    array-length v4, p1

    invoke-static {v4, v2, v1}, Lorg/bouncycastle/crypto/tls/l0;->G0(I[BI)V

    array-length v1, p1

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p1, v0

    array-length v1, p0

    sub-int/2addr v1, v0

    invoke-static {p0, v0, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public break(Lorg/bouncycastle/crypto/tls/while$do;Lorg/bouncycastle/crypto/tls/volatile;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/tls/volatile;->do(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public catch(Lorg/bouncycastle/crypto/tls/while$do;Lorg/bouncycastle/crypto/tls/TlsClient;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a;->goto()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/for;->if(Lorg/bouncycastle/crypto/tls/a;)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/for;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/while$do;->for:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/16 v5, 0x20

    if-le v4, v5, :cond_1

    :cond_0
    move-object v3, v2

    :cond_1
    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->isFallback()Z

    move-result v4

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v5

    iput-object v5, p1, Lorg/bouncycastle/crypto/tls/while$do;->case:[I

    array-length v5, v3

    if-lez v5, :cond_3

    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/while$do;->new:Lorg/bouncycastle/crypto/tls/h;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/h;->break()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/while$do;->case:[I

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/while$do;->new:Lorg/bouncycastle/crypto/tls/h;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/h;->for()I

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v4/q3;->continue([II)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/while$do;->new:Lorg/bouncycastle/crypto/tls/h;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/h;->new()S

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v3, v2

    :cond_3
    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/v;->import(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/crypto/tls/while$do;->else:Ljava/util/Hashtable;

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/v;->if(Ljava/util/Hashtable;)V

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/l0;->N0(Lorg/bouncycastle/crypto/tls/a;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Landroid/support/v4/mw1;->for()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v3, p2}, Lorg/bouncycastle/crypto/tls/l0;->q0([BLjava/io/OutputStream;)V

    invoke-static {v2, p2}, Lorg/bouncycastle/crypto/tls/l0;->q0([BLjava/io/OutputStream;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->else:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/crypto/tls/a0;->continue:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/while$do;->case:[I

    const/16 v5, 0xff

    invoke-static {v3, v5}, Landroid/support/v4/q3;->continue([II)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->case:[I

    invoke-static {v0, v5}, Landroid/support/v4/q3;->if([II)[I

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->case:[I

    :cond_5
    if-eqz v4, :cond_6

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->case:[I

    const/16 v3, 0x5600

    invoke-static {v0, v3}, Landroid/support/v4/q3;->continue([II)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->case:[I

    invoke-static {v0, v3}, Landroid/support/v4/q3;->if([II)[I

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->case:[I

    :cond_6
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->case:[I

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/l0;->v0([ILjava/io/OutputStream;)V

    new-array v0, v1, [S

    aput-short v2, v0, v2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/l0;->L0([SLjava/io/OutputStream;)V

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/while$do;->else:Ljava/util/Hashtable;

    invoke-static {p2, p1}, Lorg/bouncycastle/crypto/tls/a0;->t(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public class(Lorg/bouncycastle/crypto/tls/while$do;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/while$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public const(Lorg/bouncycastle/crypto/tls/while$do;)V
    .locals 2

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->new:Lorg/bouncycastle/crypto/tls/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/h;->do()V

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->new:Lorg/bouncycastle/crypto/tls/h;

    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->for:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->invalidate()V

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->for:Lorg/bouncycastle/crypto/tls/TlsSession;

    :cond_1
    return-void
.end method

.method public else(Lorg/bouncycastle/crypto/tls/while$do;Lorg/bouncycastle/crypto/tls/return;S)V
    .locals 0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/crypto/tls/return;->if(S)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/while;->const(Lorg/bouncycastle/crypto/tls/while$do;)V

    return-void
.end method

.method public goto(Lorg/bouncycastle/crypto/tls/while$do;Lorg/bouncycastle/crypto/tls/return;)Lorg/bouncycastle/crypto/tls/default;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/for;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/static;

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-direct {v1, v2, p2}, Lorg/bouncycastle/crypto/tls/static;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/return;)V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/while;->catch(Lorg/bouncycastle/crypto/tls/while$do;Lorg/bouncycastle/crypto/tls/TlsClient;)[B

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/tls/a;->else:Lorg/bouncycastle/crypto/tls/a;

    invoke-virtual {p2, v3}, Lorg/bouncycastle/crypto/tls/return;->super(Lorg/bouncycastle/crypto/tls/a;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->class()Lorg/bouncycastle/crypto/tls/static$if;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/static$if;->for()S

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/return;->case()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v5

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/for;->getClientVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/crypto/tls/a;->this(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2, v7}, Lorg/bouncycastle/crypto/tls/return;->final(Lorg/bouncycastle/crypto/tls/a;)V

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/static$if;->do()[B

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/bouncycastle/crypto/tls/while;->while(Lorg/bouncycastle/crypto/tls/while$do;[B)[B

    move-result-object v4

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/tls/while;->final([B[B)[B

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->throw()V

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x2f

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/static$if;->for()S

    move-result v2

    const/4 v3, 0x2

    const/16 v5, 0xa

    if-ne v2, v3, :cond_17

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/return;->case()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/while;->switch(Lorg/bouncycastle/crypto/tls/while$do;Lorg/bouncycastle/crypto/tls/a;)V

    invoke-virtual {p2, v2}, Lorg/bouncycastle/crypto/tls/return;->super(Lorg/bouncycastle/crypto/tls/a;)V

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/static$if;->do()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/while;->public(Lorg/bouncycastle/crypto/tls/while$do;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->goto()V

    iget-short v2, v0, Landroid/support/v4/mw1;->class:S

    invoke-static {p2, v2}, Lorg/bouncycastle/crypto/tls/native;->do(Lorg/bouncycastle/crypto/tls/return;S)V

    iget-boolean v2, p1, Lorg/bouncycastle/crypto/tls/while$do;->break:Z

    const-string v3, "client finished"

    const-string v4, "server finished"

    const/16 v6, 0x14

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/while$do;->new:Lorg/bouncycastle/crypto/tls/h;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/h;->try()[B

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/mw1;->case:[B

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/return;->goto(Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->case()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lorg/bouncycastle/crypto/tls/a0;->native(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v2

    invoke-static {v0, v4, v2}, Lorg/bouncycastle/crypto/tls/l0;->this(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-virtual {v1, v6}, Lorg/bouncycastle/crypto/tls/static;->const(S)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/crypto/tls/native;->try([B[B)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->case()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lorg/bouncycastle/crypto/tls/a0;->native(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v2

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/crypto/tls/l0;->this(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->try()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->for:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/for;->for(Lorg/bouncycastle/crypto/tls/TlsSession;)V

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyHandshakeComplete()V

    new-instance p1, Lorg/bouncycastle/crypto/tls/default;

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/default;-><init>(Lorg/bouncycastle/crypto/tls/return;)V

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/while;->const(Lorg/bouncycastle/crypto/tls/while$do;)V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/while$do;->this:[B

    array-length v8, v2

    if-lez v8, :cond_3

    new-instance v8, Lorg/bouncycastle/crypto/tls/j0;

    invoke-direct {v8, v2, v7}, Lorg/bouncycastle/crypto/tls/j0;-><init>([BLorg/bouncycastle/crypto/tls/h;)V

    iput-object v8, p1, Lorg/bouncycastle/crypto/tls/while$do;->for:Lorg/bouncycastle/crypto/tls/TlsSession;

    :cond_3
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->class()Lorg/bouncycastle/crypto/tls/static$if;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/static$if;->for()S

    move-result v8

    const/16 v9, 0x17

    if-ne v8, v9, :cond_4

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/static$if;->do()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/while;->static(Lorg/bouncycastle/crypto/tls/while$do;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->class()Lorg/bouncycastle/crypto/tls/static$if;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v8, v7}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    :goto_1
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v8

    iput-object v8, p1, Lorg/bouncycastle/crypto/tls/while$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v10, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-interface {v8, v10}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/static$if;->for()S

    move-result v8

    const/16 v10, 0xb

    if-ne v8, v10, :cond_5

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/static$if;->do()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/while;->native(Lorg/bouncycastle/crypto/tls/while$do;[B)Lorg/bouncycastle/crypto/tls/break;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->class()Lorg/bouncycastle/crypto/tls/static$if;

    move-result-object v8

    goto :goto_2

    :cond_5
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/while$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    move-object v8, v2

    move-object v2, v7

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    const/4 v11, 0x0

    iput-boolean v11, p1, Lorg/bouncycastle/crypto/tls/while$do;->class:Z

    :cond_7
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/static$if;->for()S

    move-result v11

    const/16 v12, 0x16

    if-ne v11, v12, :cond_8

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/static$if;->do()[B

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lorg/bouncycastle/crypto/tls/while;->throw(Lorg/bouncycastle/crypto/tls/while$do;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->class()Lorg/bouncycastle/crypto/tls/static$if;

    move-result-object v8

    :cond_8
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/static$if;->for()S

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_9

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/static$if;->do()[B

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lorg/bouncycastle/crypto/tls/while;->return(Lorg/bouncycastle/crypto/tls/while$do;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->class()Lorg/bouncycastle/crypto/tls/static$if;

    move-result-object v8

    goto :goto_3

    :cond_9
    iget-object v11, p1, Lorg/bouncycastle/crypto/tls/while$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v11}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :goto_3
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/static$if;->for()S

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_a

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/static$if;->do()[B

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lorg/bouncycastle/crypto/tls/while;->super(Lorg/bouncycastle/crypto/tls/while$do;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->case()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v8

    iget-object v11, p1, Lorg/bouncycastle/crypto/tls/while$do;->while:Lorg/bouncycastle/crypto/tls/catch;

    invoke-virtual {v11}, Lorg/bouncycastle/crypto/tls/catch;->new()Ljava/util/Vector;

    move-result-object v11

    invoke-static {v8, v11}, Lorg/bouncycastle/crypto/tls/l0;->j0(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->class()Lorg/bouncycastle/crypto/tls/static$if;

    move-result-object v8

    :cond_a
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/static$if;->for()S

    move-result v11

    const/16 v12, 0xe

    if-ne v11, v12, :cond_16

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/static$if;->do()[B

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_15

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->case()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v8

    invoke-interface {v8}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-static {v8}, Lorg/bouncycastle/crypto/tls/native;->new(Ljava/util/Vector;)[B

    move-result-object v8

    invoke-virtual {v1, v9, v8}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    :cond_b
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/while$do;->while:Lorg/bouncycastle/crypto/tls/catch;

    if-eqz v8, :cond_e

    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/while$do;->super:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    invoke-interface {v9, v8}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/bouncycastle/crypto/tls/catch;)Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object v8

    iput-object v8, p1, Lorg/bouncycastle/crypto/tls/while$do;->import:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v8, :cond_c

    invoke-interface {v8}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/break;

    move-result-object v8

    goto :goto_4

    :cond_c
    move-object v8, v7

    :goto_4
    if-nez v8, :cond_d

    sget-object v8, Lorg/bouncycastle/crypto/tls/break;->if:Lorg/bouncycastle/crypto/tls/break;

    :cond_d
    invoke-static {v8}, Lorg/bouncycastle/crypto/tls/native;->for(Lorg/bouncycastle/crypto/tls/break;)[B

    move-result-object v8

    invoke-virtual {v1, v10, v8}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    :cond_e
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/while$do;->import:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v8, :cond_f

    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/while$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v9, v8}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    goto :goto_5

    :cond_f
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/while$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    :goto_5
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/while;->class(Lorg/bouncycastle/crypto/tls/while$do;)[B

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v1, v9, v8}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->break()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v8

    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-static {v9, v8, v7}, Lorg/bouncycastle/crypto/tls/a0;->native(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v9

    iput-object v9, v0, Landroid/support/v4/mw1;->this:[B

    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    iget-object v10, p1, Lorg/bouncycastle/crypto/tls/while$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v9, v10}, Lorg/bouncycastle/crypto/tls/a0;->const(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v9}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v9

    invoke-virtual {p2, v9}, Lorg/bouncycastle/crypto/tls/return;->goto(Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/while$do;->import:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v9, :cond_11

    instance-of v10, v9, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v10, :cond_11

    check-cast v9, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    iget-object v10, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-static {v10, v9}, Lorg/bouncycastle/crypto/tls/l0;->i(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;)Lorg/bouncycastle/crypto/tls/i;

    move-result-object v10

    if-nez v10, :cond_10

    invoke-virtual {v0}, Landroid/support/v4/mw1;->class()[B

    move-result-object v8

    goto :goto_6

    :cond_10
    invoke-virtual {v10}, Lorg/bouncycastle/crypto/tls/i;->if()S

    move-result v11

    invoke-interface {v8, v11}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object v8

    :goto_6
    invoke-interface {v9, v8}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v8

    new-instance v9, Lorg/bouncycastle/crypto/tls/volatile;

    invoke-direct {v9, v10, v8}, Lorg/bouncycastle/crypto/tls/volatile;-><init>(Lorg/bouncycastle/crypto/tls/i;[B)V

    invoke-virtual {p0, p1, v9}, Lorg/bouncycastle/crypto/tls/while;->break(Lorg/bouncycastle/crypto/tls/while$do;Lorg/bouncycastle/crypto/tls/volatile;)[B

    move-result-object v8

    const/16 v9, 0xf

    invoke-virtual {v1, v9, v8}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    :cond_11
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->case()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lorg/bouncycastle/crypto/tls/a0;->native(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v9

    invoke-static {v8, v3, v9}, Lorg/bouncycastle/crypto/tls/l0;->this(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lorg/bouncycastle/crypto/tls/static;->while(S[B)V

    iget-boolean v3, p1, Lorg/bouncycastle/crypto/tls/while$do;->const:Z

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->class()Lorg/bouncycastle/crypto/tls/static$if;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/static$if;->for()S

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_12

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/static$if;->do()[B

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/bouncycastle/crypto/tls/while;->import(Lorg/bouncycastle/crypto/tls/while$do;[B)V

    goto :goto_7

    :cond_12
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_13
    :goto_7
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->case()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v5

    invoke-static {v3, v5, v7}, Lorg/bouncycastle/crypto/tls/a0;->native(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/crypto/tls/l0;->this(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v3

    invoke-virtual {v1, v6}, Lorg/bouncycastle/crypto/tls/static;->const(S)[B

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/bouncycastle/crypto/tls/native;->try([B[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/static;->try()V

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->for:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v1, :cond_14

    new-instance v1, Lorg/bouncycastle/crypto/tls/h$if;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/h$if;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/mw1;->if()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/tls/h$if;->if(I)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/mw1;->new()S

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/tls/h$if;->for(S)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/mw1;->final()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/tls/h$if;->new(Z)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/mw1;->case()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/tls/h$if;->try([B)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/h$if;->else(Lorg/bouncycastle/crypto/tls/break;)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/mw1;->else()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/h$if;->case([B)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/mw1;->break()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/h$if;->this([B)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->goto:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/h$if;->break(Ljava/util/Hashtable;)Lorg/bouncycastle/crypto/tls/h$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/h$if;->do()Lorg/bouncycastle/crypto/tls/h;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->new:Lorg/bouncycastle/crypto/tls/h;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->for:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->new:Lorg/bouncycastle/crypto/tls/h;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->n([BLorg/bouncycastle/crypto/tls/h;)Lorg/bouncycastle/crypto/tls/TlsSession;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->for:Lorg/bouncycastle/crypto/tls/TlsSession;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/for;->for(Lorg/bouncycastle/crypto/tls/TlsSession;)V

    :cond_14
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyHandshakeComplete()V

    new-instance p1, Lorg/bouncycastle/crypto/tls/default;

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/default;-><init>(Lorg/bouncycastle/crypto/tls/return;)V

    return-object p1

    :cond_15
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_16
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_17
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v5}, Landroid/support/v4/n72;-><init>(S)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public import(Lorg/bouncycastle/crypto/tls/while$do;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/transient;->new(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/transient;

    move-result-object p2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/bouncycastle/crypto/tls/transient;)V

    return-void
.end method

.method public native(Lorg/bouncycastle/crypto/tls/while$do;[B)Lorg/bouncycastle/crypto/tls/break;
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

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->super:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    return-object p2
.end method

.method public public(Lorg/bouncycastle/crypto/tls/while$do;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/for;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->f0(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/while;->switch(Lorg/bouncycastle/crypto/tls/while$do;Lorg/bouncycastle/crypto/tls/a;)V

    const/16 p2, 0x20

    invoke-static {p2, v1}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/mw1;->goto:[B

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->R(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, p1, Lorg/bouncycastle/crypto/tls/while$do;->this:[B

    array-length v3, v2

    const/16 v4, 0x2f

    if-gt v3, p2, :cond_12

    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p2, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/while$do;->this:[B

    array-length v2, p2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_0

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/while$do;->for:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v2

    invoke-static {p2, v2}, Landroid/support/v4/q3;->case([B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p1, Lorg/bouncycastle/crypto/tls/while$do;->break:Z

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->T(Ljava/io/InputStream;)I

    move-result p2

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/while$do;->case:[I

    invoke-static {v2, p2}, Landroid/support/v4/q3;->continue([II)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz p2, :cond_11

    invoke-static {p2}, Landroid/support/v4/vl;->do(I)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/for;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/bouncycastle/crypto/tls/l0;->y(ILorg/bouncycastle/crypto/tls/a;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {p2, v4}, Lorg/bouncycastle/crypto/tls/native;->case(IS)V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v2, p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->c0(Ljava/io/InputStream;)S

    move-result v2

    if-nez v2, :cond_10

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v6, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/a0;->f(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v1

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->goto:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/v;->default(Ljava/util/Hashtable;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v4/mw1;->super:Z

    invoke-virtual {v0}, Landroid/support/v4/mw1;->final()Z

    move-result v1

    const/16 v6, 0x28

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->break:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->requiresExtendedMasterSecret()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v6}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_2
    :goto_1
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->goto:Ljava/util/Hashtable;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    sget-object v8, Lorg/bouncycastle/crypto/tls/a0;->continue:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/while$do;->else:Ljava/util/Hashtable;

    invoke-static {v8, v7}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x6e

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_5
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->goto:Ljava/util/Hashtable;

    sget-object v7, Lorg/bouncycastle/crypto/tls/a0;->continue:Ljava/lang/Integer;

    invoke-static {v1, v7}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v1

    if-eqz v1, :cond_7

    iput-boolean v5, p1, Lorg/bouncycastle/crypto/tls/while$do;->catch:Z

    sget-object v7, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    invoke-static {v7}, Lorg/bouncycastle/crypto/tls/a0;->catch([B)[B

    move-result-object v7

    invoke-static {v1, v7}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v6}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_7
    :goto_3
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-boolean v6, p1, Lorg/bouncycastle/crypto/tls/while$do;->catch:Z

    invoke-interface {v1, v6}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifySecureRenegotiation(Z)V

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->else:Ljava/util/Hashtable;

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/while$do;->goto:Ljava/util/Hashtable;

    iget-boolean v7, p1, Lorg/bouncycastle/crypto/tls/while$do;->break:Z

    if-eqz v7, :cond_9

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->new:Lorg/bouncycastle/crypto/tls/h;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/h;->for()I

    move-result v1

    if-ne p2, v1, :cond_8

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/while$do;->new:Lorg/bouncycastle/crypto/tls/h;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/h;->new()S

    move-result v1

    if-ne v2, v1, :cond_8

    const/4 v1, 0x0

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/while$do;->new:Lorg/bouncycastle/crypto/tls/h;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/h;->catch()Ljava/util/Hashtable;

    move-result-object v6

    goto :goto_4

    :cond_8
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_9
    :goto_4
    iput p2, v0, Landroid/support/v4/mw1;->if:I

    iput-short v2, v0, Landroid/support/v4/mw1;->for:S

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/util/Hashtable;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    invoke-static {v6}, Lorg/bouncycastle/crypto/tls/v;->throws(Ljava/util/Hashtable;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {v0}, Landroid/support/v4/mw1;->if()I

    move-result v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/l0;->p(I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_b
    :goto_5
    iput-boolean p2, v0, Landroid/support/v4/mw1;->final:Z

    iget-boolean p2, p1, Lorg/bouncycastle/crypto/tls/while$do;->break:Z

    invoke-static {p2, v1, v6, v4}, Lorg/bouncycastle/crypto/tls/native;->if(ZLjava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result p2

    iput-short p2, v0, Landroid/support/v4/mw1;->class:S

    invoke-static {v6}, Lorg/bouncycastle/crypto/tls/v;->extends(Ljava/util/Hashtable;)Z

    move-result p2

    iput-boolean p2, v0, Landroid/support/v4/mw1;->const:Z

    iget-boolean p2, p1, Lorg/bouncycastle/crypto/tls/while$do;->break:Z

    if-nez p2, :cond_c

    sget-object p2, Lorg/bouncycastle/crypto/tls/v;->else:Ljava/lang/Integer;

    invoke-static {v6, p2, v4}, Lorg/bouncycastle/crypto/tls/l0;->k(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result p2

    if-eqz p2, :cond_c

    const/4 p2, 0x1

    goto :goto_6

    :cond_c
    const/4 p2, 0x0

    :goto_6
    iput-boolean p2, p1, Lorg/bouncycastle/crypto/tls/while$do;->class:Z

    iget-boolean p2, p1, Lorg/bouncycastle/crypto/tls/while$do;->break:Z

    if-nez p2, :cond_d

    sget-object p2, Lorg/bouncycastle/crypto/tls/a0;->strictfp:Ljava/lang/Integer;

    invoke-static {v6, p2, v4}, Lorg/bouncycastle/crypto/tls/l0;->k(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result p2

    if-eqz p2, :cond_d

    const/4 v3, 0x1

    :cond_d
    iput-boolean v3, p1, Lorg/bouncycastle/crypto/tls/while$do;->const:Z

    :cond_e
    if-eqz v1, :cond_f

    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p2, v6}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    :cond_f
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v0}, Landroid/support/v4/mw1;->if()I

    move-result p2

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/a0;->static(Lorg/bouncycastle/crypto/tls/TlsContext;I)I

    move-result p1

    iput p1, v0, Landroid/support/v4/mw1;->new:I

    const/16 p1, 0xc

    iput p1, v0, Landroid/support/v4/mw1;->try:I

    return-void

    :cond_10
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_11
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_12
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v4}, Landroid/support/v4/n72;-><init>(S)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public return(Lorg/bouncycastle/crypto/tls/while$do;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/while$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method public static(Lorg/bouncycastle/crypto/tls/while$do;[B)V
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

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    return-void
.end method

.method public super(Lorg/bouncycastle/crypto/tls/while$do;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->super:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/catch;->try(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/catch;

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/crypto/tls/while$do;->while:Lorg/bouncycastle/crypto/tls/catch;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/while$do;->final:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/while$do;->while:Lorg/bouncycastle/crypto/tls/catch;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/catch;)V

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x28

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public switch(Lorg/bouncycastle/crypto/tls/while$do;Lorg/bouncycastle/crypto/tls/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/for;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Lorg/bouncycastle/crypto/tls/for;->new(Lorg/bouncycastle/crypto/tls/a;)V

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/bouncycastle/crypto/tls/a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Lorg/bouncycastle/crypto/tls/a;->do(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x2f

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public this(Lorg/bouncycastle/crypto/tls/TlsClient;Lorg/bouncycastle/crypto/tls/DatagramTransport;)Lorg/bouncycastle/crypto/tls/default;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    new-instance v0, Landroid/support/v4/mw1;

    invoke-direct {v0}, Landroid/support/v4/mw1;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v4/mw1;->do:I

    new-instance v1, Lorg/bouncycastle/crypto/tls/while$do;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/while$do;-><init>()V

    iput-object p1, v1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    new-instance v2, Lorg/bouncycastle/crypto/tls/m;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/native;->do:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/tls/m;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/mw1;)V

    iput-object v2, v1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->shouldUseGMTUnixTime()Z

    move-result v2

    iget-object v3, v1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/for;->getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/a0;->break(ZLorg/bouncycastle/crypto/prng/RandomGenerator;)[B

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/mw1;->else:[B

    iget-object v2, v1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-interface {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V

    new-instance v2, Lorg/bouncycastle/crypto/tls/return;

    iget-object v3, v1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    const/16 v4, 0x16

    invoke-direct {v2, p2, v3, p1, v4}, Lorg/bouncycastle/crypto/tls/return;-><init>(Lorg/bouncycastle/crypto/tls/DatagramTransport;Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsPeer;S)V

    iget-object p1, v1, Lorg/bouncycastle/crypto/tls/while$do;->do:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getSessionToResume()Lorg/bouncycastle/crypto/tls/TlsSession;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsSession;->isResumable()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsSession;->exportSessionParameters()Lorg/bouncycastle/crypto/tls/h;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/h;->break()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p1, v1, Lorg/bouncycastle/crypto/tls/while$do;->for:Lorg/bouncycastle/crypto/tls/TlsSession;

    iput-object p2, v1, Lorg/bouncycastle/crypto/tls/while$do;->new:Lorg/bouncycastle/crypto/tls/h;

    :cond_0
    const/16 p1, 0x50

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/crypto/tls/while;->goto(Lorg/bouncycastle/crypto/tls/while$do;Lorg/bouncycastle/crypto/tls/return;)Lorg/bouncycastle/crypto/tls/default;

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
    invoke-virtual {p0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/while;->else(Lorg/bouncycastle/crypto/tls/while$do;Lorg/bouncycastle/crypto/tls/return;S)V

    new-instance v1, Landroid/support/v4/n72;

    invoke-direct {v1, p1, p2}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p2

    invoke-virtual {p0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/while;->else(Lorg/bouncycastle/crypto/tls/while$do;Lorg/bouncycastle/crypto/tls/return;S)V

    throw p2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Landroid/support/v4/n72;->getAlertDescription()S

    move-result p2

    invoke-virtual {p0, v1, v2, p2}, Lorg/bouncycastle/crypto/tls/while;->else(Lorg/bouncycastle/crypto/tls/while$do;Lorg/bouncycastle/crypto/tls/return;S)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/mw1;->do()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'transport\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'client\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public throw(Lorg/bouncycastle/crypto/tls/while$do;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p1, Lorg/bouncycastle/crypto/tls/while$do;->class:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/class;->case(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/class;

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/crypto/tls/while$do;->throw:Lorg/bouncycastle/crypto/tls/class;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public while(Lorg/bouncycastle/crypto/tls/while$do;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->f0(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/a;

    move-result-object p2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->R(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/while$do;->if:Lorg/bouncycastle/crypto/tls/m;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/for;->getClientVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/tls/a;->this(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result p1

    const/16 v0, 0x2f

    if-eqz p1, :cond_2

    sget-object p1, Lorg/bouncycastle/crypto/tls/a;->goto:Lorg/bouncycastle/crypto/tls/a;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/tls/a;->this(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result p1

    if-nez p1, :cond_1

    array-length p1, v1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method
