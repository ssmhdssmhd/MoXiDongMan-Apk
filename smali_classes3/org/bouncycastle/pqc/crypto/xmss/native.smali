.class public final Lorg/bouncycastle/pqc/crypto/xmss/native;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/pqc/crypto/xmss/public;

.field private for:Ljava/security/SecureRandom;

.field private if:Lorg/bouncycastle/pqc/crypto/xmss/finally;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private if(Lorg/bouncycastle/pqc/crypto/xmss/if;)Lorg/bouncycastle/pqc/crypto/xmss/return;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->for:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v2, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->for:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v0, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->for:Ljava/security/SecureRandom;

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->while([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->throw([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->final([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->catch(Lorg/bouncycastle/pqc/crypto/xmss/if;)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/return;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public do()Landroid/support/v4/y3;
    .locals 7

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/return;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->for()Lorg/bouncycastle/pqc/crypto/xmss/if;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/xmss/native;->if(Lorg/bouncycastle/pqc/crypto/xmss/if;)Lorg/bouncycastle/pqc/crypto/xmss/return;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->else()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/public;->new()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/do;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->else()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->break()[B

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/do;->getRoot()Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->for()Lorg/bouncycastle/pqc/crypto/xmss/if;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/if;->put(ILorg/bouncycastle/pqc/crypto/xmss/do;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-direct {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->break()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->while([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->this()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->throw([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->else()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->final([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->super([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->for()Lorg/bouncycastle/pqc/crypto/xmss/if;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->catch(Lorg/bouncycastle/pqc/crypto/xmss/if;)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/return;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/static$if;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-direct {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->goto([B)Lorg/bouncycastle/pqc/crypto/xmss/static$if;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->else()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->else([B)Lorg/bouncycastle/pqc/crypto/xmss/static$if;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/static;

    move-result-object v1

    new-instance v2, Landroid/support/v4/y3;

    invoke-direct {v2, v1, v0}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v2
.end method

.method public for(Landroid/support/v4/dr0;)V
    .locals 1

    check-cast p1, Landroid/support/v4/hi2;

    invoke-virtual {p1}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->for:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Landroid/support/v4/hi2;->for()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/public;->goto()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/native;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-void
.end method
