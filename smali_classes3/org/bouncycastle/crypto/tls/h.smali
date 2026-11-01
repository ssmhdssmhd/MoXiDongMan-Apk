.class public final Lorg/bouncycastle/crypto/tls/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/h$if;
    }
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
.method private constructor <init>(IS[BLorg/bouncycastle/crypto/tls/break;[B[B[BZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/h;->try:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/h;->case:[B

    iput p1, p0, Lorg/bouncycastle/crypto/tls/h;->do:I

    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/h;->if:S

    invoke-static {p3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/h;->for:[B

    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/h;->new:Lorg/bouncycastle/crypto/tls/break;

    invoke-static {p5}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/h;->try:[B

    invoke-static {p6}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/h;->case:[B

    iput-object p7, p0, Lorg/bouncycastle/crypto/tls/h;->else:[B

    iput-boolean p8, p0, Lorg/bouncycastle/crypto/tls/h;->goto:Z

    return-void
.end method

.method public synthetic constructor <init>(IS[BLorg/bouncycastle/crypto/tls/break;[B[B[BZLorg/bouncycastle/crypto/tls/h$do;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/bouncycastle/crypto/tls/h;-><init>(IS[BLorg/bouncycastle/crypto/tls/break;[B[B[BZ)V

    return-void
.end method


# virtual methods
.method public break()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/h;->goto:Z

    return v0
.end method

.method public case()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/h;->try:[B

    return-object v0
.end method

.method public catch()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/h;->else:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/h;->else:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->f(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public do()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/h;->for:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    :cond_0
    return-void
.end method

.method public else()Lorg/bouncycastle/crypto/tls/break;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/h;->new:Lorg/bouncycastle/crypto/tls/break;

    return-object v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/h;->do:I

    return v0
.end method

.method public goto()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/h;->try:[B

    return-object v0
.end method

.method public if()Lorg/bouncycastle/crypto/tls/h;
    .locals 10

    new-instance v9, Lorg/bouncycastle/crypto/tls/h;

    iget v1, p0, Lorg/bouncycastle/crypto/tls/h;->do:I

    iget-short v2, p0, Lorg/bouncycastle/crypto/tls/h;->if:S

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/h;->for:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/h;->new:Lorg/bouncycastle/crypto/tls/break;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/h;->try:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/h;->case:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/h;->else:[B

    iget-boolean v8, p0, Lorg/bouncycastle/crypto/tls/h;->goto:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/tls/h;-><init>(IS[BLorg/bouncycastle/crypto/tls/break;[B[B[BZ)V

    return-object v9
.end method

.method public new()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/h;->if:S

    return v0
.end method

.method public this()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/h;->case:[B

    return-object v0
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/h;->for:[B

    return-object v0
.end method
