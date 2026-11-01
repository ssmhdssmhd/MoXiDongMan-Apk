.class public Lorg/bouncycastle/crypto/util/this;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final do:Ljava/lang/String; = "ssh-rsa"

.field private static final for:Ljava/lang/String; = "ssh-ed25519"

.field private static final if:Ljava/lang/String; = "ecdsa"

.field private static final new:Ljava/lang/String; = "ssh-dss"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/support/v4/a4;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_6

    instance-of v0, p0, Landroid/support/v4/ck1;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/a4;->do()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Landroid/support/v4/ck1;

    invoke-virtual {p0}, Landroid/support/v4/ck1;->if()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/ck1;->for()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/crypto/util/super;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/util/super;-><init>()V

    const-string v2, "ssh-rsa"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/super;->try(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/util/super;->if([B)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bouncycastle/crypto/util/super;->if([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/super;->do()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "RSAKeyParamaters was for encryption"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v0, p0, Landroid/support/v4/k50;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/util/super;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/super;-><init>()V

    check-cast p0, Landroid/support/v4/k50;

    invoke-virtual {p0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/math/ec/custom/sec/break;

    if-eqz v1, :cond_2

    const-string v1, "nistp256"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ecdsa-sha2-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/util/super;->try(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/super;->try(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/new;->const(Z)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/util/super;->if([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/super;->do()[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to derive ssh curve name for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v0, p0, Landroid/support/v4/kv;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/util/super;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/super;-><init>()V

    const-string v1, "ssh-dss"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/super;->try(Ljava/lang/String;)V

    check-cast p0, Landroid/support/v4/kv;

    invoke-virtual {p0}, Landroid/support/v4/ev;->if()Landroid/support/v4/hv;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hv;->if()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/super;->if([B)V

    invoke-virtual {p0}, Landroid/support/v4/ev;->if()Landroid/support/v4/hv;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hv;->for()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/super;->if([B)V

    invoke-virtual {p0}, Landroid/support/v4/ev;->if()Landroid/support/v4/hv;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hv;->do()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/super;->if([B)V

    invoke-virtual {p0}, Landroid/support/v4/kv;->for()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/util/super;->if([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/super;->do()[B

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/for;

    if-eqz v0, :cond_5

    new-instance v0, Lorg/bouncycastle/crypto/util/super;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/super;-><init>()V

    const-string v1, "ssh-ed25519"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/super;->try(Ljava/lang/String;)V

    check-cast p0, Lorg/bouncycastle/crypto/params/for;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/for;->for()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/util/super;->if([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/super;->do()[B

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to private key"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cipherParameters was null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static for([B)Landroid/support/v4/a4;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/util/final;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/util/final;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/this;->if(Lorg/bouncycastle/crypto/util/final;)Landroid/support/v4/a4;

    move-result-object p0

    return-object p0
.end method

.method public static if(Lorg/bouncycastle/crypto/util/final;)Landroid/support/v4/a4;
    .locals 10

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->try()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/for;->if([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ssh-rsa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->for()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->for()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v3, Landroid/support/v4/ck1;

    invoke-direct {v3, v2, v1, v0}, Landroid/support/v4/ck1;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "ssh-dss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->for()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->for()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->for()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->for()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Landroid/support/v4/kv;

    new-instance v5, Landroid/support/v4/hv;

    invoke-direct {v5, v0, v1, v2}, Landroid/support/v4/hv;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v3, v5}, Landroid/support/v4/kv;-><init>(Ljava/math/BigInteger;Landroid/support/v4/hv;)V

    move-object v3, v4

    goto/16 :goto_0

    :cond_1
    const-string v1, "ecdsa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->try()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/for;->if([B)Ljava/lang/String;

    move-result-object v1

    const-string v3, "nist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Landroid/support/v4/a50;->for(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->try()[B

    move-result-object v0

    new-instance v1, Landroid/support/v4/k50;

    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/if;->class([B)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    new-instance v9, Landroid/support/v4/e40;

    invoke-virtual {v2}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    invoke-virtual {v2}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Landroid/support/v4/th2;->class()[B

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v1, v0, v9}, Landroid/support/v4/k50;-><init>(Lorg/bouncycastle/math/ec/new;Landroid/support/v4/e40;)V

    move-object v3, v1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to find curve for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " using curve name "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string v1, "ssh-ed25519"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v3, Lorg/bouncycastle/crypto/params/for;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->try()[B

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/crypto/params/for;-><init>([BI)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->if()Z

    move-result p0

    if-nez p0, :cond_6

    return-object v3

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "uncoded key has trailing data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
