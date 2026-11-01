.class public Landroid/support/v4/hz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsSRPIdentityManager;


# static fields
.field private static final new:[B

.field private static final try:[B


# instance fields
.field public do:Landroid/support/v4/gr1;

.field public for:Lorg/bouncycastle/crypto/Mac;

.field public if:Landroid/support/v4/kr1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "password"

    invoke-static {v0}, Lorg/bouncycastle/util/for;->goto(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroid/support/v4/hz1;->new:[B

    const-string v0, "salt"

    invoke-static {v0}, Lorg/bouncycastle/util/for;->goto(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroid/support/v4/hz1;->try:[B

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/gr1;Landroid/support/v4/kr1;Lorg/bouncycastle/crypto/Mac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hz1;->do:Landroid/support/v4/gr1;

    iput-object p2, p0, Landroid/support/v4/hz1;->if:Landroid/support/v4/kr1;

    iput-object p3, p0, Landroid/support/v4/hz1;->for:Lorg/bouncycastle/crypto/Mac;

    return-void
.end method

.method public static do(Landroid/support/v4/gr1;[B)Landroid/support/v4/hz1;
    .locals 3

    new-instance v0, Landroid/support/v4/kr1;

    invoke-direct {v0}, Landroid/support/v4/kr1;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/support/v4/kr1;->if(Landroid/support/v4/gr1;Lorg/bouncycastle/crypto/Digest;)V

    new-instance v2, Landroid/support/v4/pi0;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/support/v4/pi0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v1, Landroid/support/v4/gr0;

    invoke-direct {v1, p1}, Landroid/support/v4/gr0;-><init>([B)V

    invoke-virtual {v2, v1}, Landroid/support/v4/pi0;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    new-instance p1, Landroid/support/v4/hz1;

    invoke-direct {p1, p0, v0, v2}, Landroid/support/v4/hz1;-><init>(Landroid/support/v4/gr1;Landroid/support/v4/kr1;Lorg/bouncycastle/crypto/Mac;)V

    return-object p1
.end method


# virtual methods
.method public getLoginParameters([B)Landroid/support/v4/s72;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/hz1;->for:Lorg/bouncycastle/crypto/Mac;

    sget-object v1, Landroid/support/v4/hz1;->try:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Landroid/support/v4/hz1;->for:Lorg/bouncycastle/crypto/Mac;

    array-length v1, p1

    invoke-interface {v0, p1, v3, v1}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Landroid/support/v4/hz1;->for:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Landroid/support/v4/hz1;->for:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, v0, v3}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object v1, p0, Landroid/support/v4/hz1;->for:Lorg/bouncycastle/crypto/Mac;

    sget-object v2, Landroid/support/v4/hz1;->new:[B

    array-length v4, v2

    invoke-interface {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v1, p0, Landroid/support/v4/hz1;->for:Lorg/bouncycastle/crypto/Mac;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v1, p0, Landroid/support/v4/hz1;->for:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Landroid/support/v4/hz1;->for:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2, v1, v3}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object v2, p0, Landroid/support/v4/hz1;->if:Landroid/support/v4/kr1;

    invoke-virtual {v2, v0, p1, v1}, Landroid/support/v4/kr1;->do([B[B[B)Ljava/math/BigInteger;

    move-result-object p1

    new-instance v1, Landroid/support/v4/s72;

    iget-object v2, p0, Landroid/support/v4/hz1;->do:Landroid/support/v4/gr1;

    invoke-direct {v1, v2, p1, v0}, Landroid/support/v4/s72;-><init>(Landroid/support/v4/gr1;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
