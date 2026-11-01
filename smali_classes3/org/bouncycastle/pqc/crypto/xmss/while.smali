.class public final Lorg/bouncycastle/pqc/crypto/xmss/while;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

.field private if:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private if(Lorg/bouncycastle/pqc/crypto/xmss/finally;Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/xmss/package;
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v2, v0, [B

    invoke-virtual {p2, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p2, Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->while([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->throw([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->final([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object p2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/do;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    invoke-direct {v2, p1, v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V

    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->catch(Lorg/bouncycastle/pqc/crypto/xmss/do;)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/package;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public do()Landroid/support/v4/y3;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/while;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/while;->if:Ljava/security/SecureRandom;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/while;->if(Lorg/bouncycastle/pqc/crypto/xmss/finally;Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/xmss/package;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->for()Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/do;->getRoot()Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/while;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->break()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->while([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->this()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->throw([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->else()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->final([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->super([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->for()Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->catch(Lorg/bouncycastle/pqc/crypto/xmss/do;)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/package;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/while;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->goto([B)Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->else()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->else([B)Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/private;

    move-result-object v1

    new-instance v2, Landroid/support/v4/y3;

    invoke-direct {v2, v1, v0}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v2
.end method

.method public for(Landroid/support/v4/dr0;)V
    .locals 1

    check-cast p1, Landroid/support/v4/ei2;

    invoke-virtual {p1}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/while;->if:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Landroid/support/v4/ei2;->for()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/while;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-void
.end method
