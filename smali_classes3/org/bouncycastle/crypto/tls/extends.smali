.class public Lorg/bouncycastle/crypto/tls/extends;
.super Lorg/bouncycastle/crypto/tls/do;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/do;-><init>()V

    return-void
.end method


# virtual methods
.method public break()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/engines/if;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/if;-><init>()V

    return-object v0
.end method

.method public case(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/l;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v7, Lorg/bouncycastle/crypto/tls/l;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->try()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->try()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/extends;->import(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/extends;->import(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    move-object v0, v7

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/l;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v7
.end method

.method public catch(Lorg/bouncycastle/crypto/tls/TlsContext;)Lorg/bouncycastle/crypto/tls/TlsCipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/super;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/tls/super;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    return-object v0
.end method

.method public class(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lorg/bouncycastle/crypto/tls/k;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->do()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->do()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/k;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v6
.end method

.method public const(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lorg/bouncycastle/crypto/tls/k;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->if()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->if()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/k;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v6
.end method

.method public createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    const/16 v1, 0x10

    if-eq p2, v0, :cond_2

    const/16 v0, 0x67

    const/16 v2, 0xc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x68

    const/16 v3, 0x20

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    packed-switch p2, :pswitch_data_0

    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/extends;->catch(Lorg/bouncycastle/crypto/tls/TlsContext;)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, v3, v1}, Lorg/bouncycastle/crypto/tls/extends;->super(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0, p1, v1, v1}, Lorg/bouncycastle/crypto/tls/extends;->super(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0, p1, v3, v0}, Lorg/bouncycastle/crypto/tls/extends;->class(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0, p1, v3, v1}, Lorg/bouncycastle/crypto/tls/extends;->class(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/tls/extends;->class(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0, p1, v1, v1}, Lorg/bouncycastle/crypto/tls/extends;->class(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/tls/extends;->switch(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/l;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0, p1, v3, p3}, Lorg/bouncycastle/crypto/tls/extends;->this(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/l;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0, p1, v1, p3}, Lorg/bouncycastle/crypto/tls/extends;->this(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/l;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0, p1, v3, v1}, Lorg/bouncycastle/crypto/tls/extends;->const(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0, p1, v1, v1}, Lorg/bouncycastle/crypto/tls/extends;->const(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0, p1, v3, p3}, Lorg/bouncycastle/crypto/tls/extends;->case(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/l;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0, p1, v1, p3}, Lorg/bouncycastle/crypto/tls/extends;->case(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/l;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/tls/extends;->while(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/l;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, v3, v2}, Lorg/bouncycastle/crypto/tls/extends;->final(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/extends;->final(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, p1, v1, p3}, Lorg/bouncycastle/crypto/tls/extends;->public(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k0;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/tls/extends;->native(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/x;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public do()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/if;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->else()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/if;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public else()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    new-instance v0, Landroid/support/v4/case;

    invoke-direct {v0}, Landroid/support/v4/case;-><init>()V

    return-object v0
.end method

.method public final(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v7, Lorg/bouncycastle/crypto/tls/k;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->for()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->for()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    const/4 v6, 0x2

    move-object v0, v7

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/k;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;III)V

    return-object v7
.end method

.method public for()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/modes/import;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->else()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->else()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/modes/import;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/do;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->break()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/do;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public if()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/catch;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->else()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/catch;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public import(I)Lorg/bouncycastle/crypto/Digest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public native(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/x;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/x;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/extends;->import(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/extends;->import(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/crypto/tls/x;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method

.method public new()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/catch;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->break()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/catch;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public public(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k0;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v8, Lorg/bouncycastle/crypto/tls/k0;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->return()Lorg/bouncycastle/crypto/StreamCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->return()Lorg/bouncycastle/crypto/StreamCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/extends;->import(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/extends;->import(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/crypto/tls/k0;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IZ)V

    return-object v8
.end method

.method public return()Lorg/bouncycastle/crypto/StreamCipher;
    .locals 1

    new-instance v0, Landroid/support/v4/jj1;

    invoke-direct {v0}, Landroid/support/v4/jj1;-><init>()V

    return-object v0
.end method

.method public static()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/do;

    new-instance v1, Lorg/bouncycastle/crypto/engines/default;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/default;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/do;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public super(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/k;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lorg/bouncycastle/crypto/tls/k;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->new()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->new()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/k;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v6
.end method

.method public switch(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/l;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v7, Lorg/bouncycastle/crypto/tls/l;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->static()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->static()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/extends;->import(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/extends;->import(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    const/16 v6, 0x10

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/l;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v7
.end method

.method public this(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/l;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v7, Lorg/bouncycastle/crypto/tls/l;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->goto()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->goto()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/extends;->import(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/extends;->import(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    move-object v0, v7

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/l;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v7
.end method

.method public throw()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/do;

    new-instance v1, Landroid/support/v4/wt;

    invoke-direct {v1}, Landroid/support/v4/wt;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/do;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public try()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/do;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->else()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/do;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public while(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/l;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v7, Lorg/bouncycastle/crypto/tls/l;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->throw()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/extends;->throw()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/extends;->import(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/extends;->import(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    const/16 v6, 0x18

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/l;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v7
.end method
