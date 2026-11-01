.class public final Lorg/bouncycastle/crypto/tls/h$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/tls/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private case:[B

.field private do:I

.field private else:[B

.field private for:[B

.field private goto:Z

.field private if:S

.field private new:Lorg/bouncycastle/crypto/tls/break;

.field private try:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/tls/h$if;->do:I

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/h$if;->if:S

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/h$if;->for:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/h$if;->new:Lorg/bouncycastle/crypto/tls/break;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/h$if;->try:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/h$if;->case:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/h$if;->else:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/h$if;->goto:Z

    return-void
.end method

.method private catch(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required session parameter \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not configured"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public break(Ljava/util/Hashtable;)Lorg/bouncycastle/crypto/tls/h$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/h$if;->else:[B

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/a0;->t(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/h$if;->else:[B

    :goto_0
    return-object p0
.end method

.method public case([B)Lorg/bouncycastle/crypto/tls/h$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/h$if;->try:[B

    return-object p0
.end method

.method public do()Lorg/bouncycastle/crypto/tls/h;
    .locals 12

    iget v0, p0, Lorg/bouncycastle/crypto/tls/h$if;->do:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "cipherSuite"

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/tls/h$if;->catch(ZLjava/lang/String;)V

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/h$if;->if:S

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "compressionAlgorithm"

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/tls/h$if;->catch(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/h$if;->for:[B

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v0, "masterSecret"

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/h$if;->catch(ZLjava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/tls/h;

    iget v3, p0, Lorg/bouncycastle/crypto/tls/h$if;->do:I

    iget-short v4, p0, Lorg/bouncycastle/crypto/tls/h$if;->if:S

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/h$if;->for:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/h$if;->new:Lorg/bouncycastle/crypto/tls/break;

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/h$if;->try:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/tls/h$if;->case:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/tls/h$if;->else:[B

    iget-boolean v10, p0, Lorg/bouncycastle/crypto/tls/h$if;->goto:Z

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lorg/bouncycastle/crypto/tls/h;-><init>(IS[BLorg/bouncycastle/crypto/tls/break;[B[B[BZLorg/bouncycastle/crypto/tls/h$do;)V

    return-object v0
.end method

.method public else(Lorg/bouncycastle/crypto/tls/break;)Lorg/bouncycastle/crypto/tls/h$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/h$if;->new:Lorg/bouncycastle/crypto/tls/break;

    return-object p0
.end method

.method public for(S)Lorg/bouncycastle/crypto/tls/h$if;
    .locals 0

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/h$if;->if:S

    return-object p0
.end method

.method public goto([B)Lorg/bouncycastle/crypto/tls/h$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/h$if;->try:[B

    return-object p0
.end method

.method public if(I)Lorg/bouncycastle/crypto/tls/h$if;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/h$if;->do:I

    return-object p0
.end method

.method public new(Z)Lorg/bouncycastle/crypto/tls/h$if;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/h$if;->goto:Z

    return-object p0
.end method

.method public this([B)Lorg/bouncycastle/crypto/tls/h$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/h$if;->case:[B

    return-object p0
.end method

.method public try([B)Lorg/bouncycastle/crypto/tls/h$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/h$if;->for:[B

    return-object p0
.end method
