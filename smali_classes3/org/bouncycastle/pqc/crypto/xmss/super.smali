.class public Lorg/bouncycastle/pqc/crypto/xmss/super;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

.field private for:Ljava/security/SecureRandom;

.field private if:Lorg/bouncycastle/pqc/crypto/xmss/this;

.field private new:Lorg/bouncycastle/pqc/crypto/xmss/package;

.field private try:Lorg/bouncycastle/pqc/crypto/xmss/private;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "params == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->if:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->for:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public break(Lorg/bouncycastle/pqc/crypto/xmss/package;Lorg/bouncycastle/pqc/crypto/xmss/private;)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package;->goto()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/private;->try()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package;->else()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/private;->new()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->try:Lorg/bouncycastle/pqc/crypto/xmss/private;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->if:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result p2

    new-array p2, p2, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->else()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

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

.method public case()Lorg/bouncycastle/pqc/crypto/xmss/package;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    return-object v0
.end method

.method public catch([B[B)V
    .locals 2

    const-string v0, "privateKey == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "publicKey == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/super;->try()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->const([BLorg/bouncycastle/pqc/crypto/xmss/finally;)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/package;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->case([B)Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/private;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package;->goto()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/private;->try()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package;->else()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/private;->new()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->try:Lorg/bouncycastle/pqc/crypto/xmss/private;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->if:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result p2

    new-array p2, p2, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->else()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

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

.method public class(I)V
    .locals 1

    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->break()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->while([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->this()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->throw([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->else()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->final([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->goto()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->super([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->for()Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->catch(Lorg/bouncycastle/pqc/crypto/xmss/do;)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/package;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    return-void
.end method

.method public const([B)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/package;->break()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->while([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/package;->this()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->throw([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->final([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/super;->goto()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->super([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/package;->for()Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->catch(Lorg/bouncycastle/pqc/crypto/xmss/do;)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/package;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/super;->goto()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->goto([B)Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->else([B)Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/private;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->try:Lorg/bouncycastle/pqc/crypto/xmss/private;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->if:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    return-void
.end method

.method public do()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public else()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->else()[B

    move-result-object v0

    return-object v0
.end method

.method public final([B)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/package;->break()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->while([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/package;->this()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->throw([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/super;->else()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->final([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->super([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/package;->for()Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->catch(Lorg/bouncycastle/pqc/crypto/xmss/do;)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/package;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->goto([B)Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/super;->else()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->else([B)Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/private;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->try:Lorg/bouncycastle/pqc/crypto/xmss/private;

    return-void
.end method

.method public for()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/while;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/while;-><init>()V

    new-instance v1, Landroid/support/v4/ei2;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/super;->try()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->for:Ljava/security/SecureRandom;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/ei2;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/while;->for(Landroid/support/v4/dr0;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/while;->do()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/package;

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/private;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->try:Lorg/bouncycastle/pqc/crypto/xmss/private;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->if:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/package;->else()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    return-void
.end method

.method public goto()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->goto()[B

    move-result-object v0

    return-object v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->try:Lorg/bouncycastle/pqc/crypto/xmss/private;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/private;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public new()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->new()I

    move-result v0

    return v0
.end method

.method public super([B)[B
    .locals 3

    const-string v0, "message == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;-><init>()V

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->generateSignature([B)[B

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->getUpdatedPrivateKey()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/package;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->try:Lorg/bouncycastle/pqc/crypto/xmss/private;

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/super;->break(Lorg/bouncycastle/pqc/crypto/xmss/package;Lorg/bouncycastle/pqc/crypto/xmss/private;)V

    return-object p1
.end method

.method public this()Lorg/bouncycastle/pqc/crypto/xmss/this;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->if:Lorg/bouncycastle/pqc/crypto/xmss/this;

    return-object v0
.end method

.method public throw([B[B[B)Z
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

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;-><init>()V

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/super;->try()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {v2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->case([B)Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/private;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->verifySignature([B[B)Z

    move-result p1

    return p1
.end method

.method public try()Lorg/bouncycastle/pqc/crypto/xmss/finally;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-object v0
.end method

.method public while([BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/final;
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "otsHashAddress == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->if:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->new:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/package;->break()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->catch([BLorg/bouncycastle/pqc/crypto/xmss/goto;)[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/super;->else()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/super;->if:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->const([BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/final;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
