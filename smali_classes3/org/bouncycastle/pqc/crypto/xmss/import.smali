.class public final Lorg/bouncycastle/pqc/crypto/xmss/import;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/pqc/crypto/xmss/public;

.field private for:Ljava/security/SecureRandom;

.field private if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

.field private new:Lorg/bouncycastle/pqc/crypto/xmss/return;

.field private try:Lorg/bouncycastle/pqc/crypto/xmss/static;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/public;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "params == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/public;->goto()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->for:Ljava/security/SecureRandom;

    new-instance p2, Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/return;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->new:Lorg/bouncycastle/pqc/crypto/xmss/return;

    new-instance p2, Lorg/bouncycastle/pqc/crypto/xmss/static$if;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/static;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->try:Lorg/bouncycastle/pqc/crypto/xmss/static;

    return-void
.end method

.method private else(Lorg/bouncycastle/pqc/crypto/xmss/return;Lorg/bouncycastle/pqc/crypto/xmss/static;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->new:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/return;->else()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->new:Lorg/bouncycastle/pqc/crypto/xmss/return;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->try:Lorg/bouncycastle/pqc/crypto/xmss/static;

    return-void
.end method


# virtual methods
.method public break([B[B[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "message == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "signature == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "publicKey == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/throws;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/throws;-><init>()V

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/static$if;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/import;->new()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    invoke-virtual {v2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->case([B)Lorg/bouncycastle/pqc/crypto/xmss/static$if;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/static;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/bouncycastle/pqc/crypto/xmss/throws;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/throws;->verifySignature([B[B)Z

    move-result p1

    return p1
.end method

.method public case()Lorg/bouncycastle/pqc/crypto/xmss/finally;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-object v0
.end method

.method public do()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->new:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public for()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/native;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/native;-><init>()V

    new-instance v1, Landroid/support/v4/hi2;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/import;->new()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->for:Ljava/security/SecureRandom;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/hi2;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/native;->for(Landroid/support/v4/dr0;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/native;->do()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/return;

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->new:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/static;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->try:Lorg/bouncycastle/pqc/crypto/xmss/static;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->new:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/import;->else(Lorg/bouncycastle/pqc/crypto/xmss/return;Lorg/bouncycastle/pqc/crypto/xmss/static;)V

    return-void
.end method

.method public goto([B[B)V
    .locals 3

    const-string v0, "privateKey == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "publicKey == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->const([BLorg/bouncycastle/pqc/crypto/xmss/finally;)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/return;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/static$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->case([B)Lorg/bouncycastle/pqc/crypto/xmss/static$if;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/static;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return;->goto()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/static;->try()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return;->else()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/static;->new()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return;->else()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->new:Lorg/bouncycastle/pqc/crypto/xmss/return;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->try:Lorg/bouncycastle/pqc/crypto/xmss/static;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "public seed of private key and public key do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "root of private key and public key do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->try:Lorg/bouncycastle/pqc/crypto/xmss/static;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/static;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public new()Lorg/bouncycastle/pqc/crypto/xmss/public;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    return-object v0
.end method

.method public this([B)[B
    .locals 3

    const-string v0, "message == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/throws;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/throws;-><init>()V

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->new:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/throws;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/throws;->generateSignature([B)[B

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/throws;->getUpdatedPrivateKey()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/return;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->new:Lorg/bouncycastle/pqc/crypto/xmss/return;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->try:Lorg/bouncycastle/pqc/crypto/xmss/static;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/import;->else(Lorg/bouncycastle/pqc/crypto/xmss/return;Lorg/bouncycastle/pqc/crypto/xmss/static;)V

    return-object p1
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/import;->new:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->else()[B

    move-result-object v0

    return-object v0
.end method
