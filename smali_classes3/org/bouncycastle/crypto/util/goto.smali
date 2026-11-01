.class public Lorg/bouncycastle/crypto/util/goto;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "openssh-key-v1\u0000"

    invoke-static {v0}, Lorg/bouncycastle/util/for;->goto(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/util/goto;->do:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static do(Lorg/bouncycastle/asn1/super;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/goto;

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static for([B)Landroid/support/v4/a4;
    .locals 10

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0x30

    if-ne v1, v2, :cond_3

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/goto;->do(Lorg/bouncycastle/asn1/super;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/util/do;->do:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/jv;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Landroid/support/v4/hv;

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v4}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v5, v3, p0}, Landroid/support/v4/hv;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/jv;-><init>(Ljava/math/BigInteger;Landroid/support/v4/hv;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/goto;->do(Lorg/bouncycastle/asn1/super;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/util/do;->do:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/ek1;->else(Ljava/lang/Object;)Landroid/support/v4/ek1;

    move-result-object p0

    new-instance v9, Landroid/support/v4/dk1;

    invoke-virtual {p0}, Landroid/support/v4/ek1;->this()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/ek1;->const()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/ek1;->class()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/ek1;->break()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v4/ek1;->catch()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Landroid/support/v4/ek1;->try()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Landroid/support/v4/ek1;->case()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, Landroid/support/v4/ek1;->new()Ljava/math/BigInteger;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/dk1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v4}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/u;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/u;

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/g50;->new(Ljava/lang/Object;)Landroid/support/v4/g50;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/g50;->else()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/asn1/catch;

    invoke-static {v2}, Landroid/support/v4/a50;->new(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v0

    new-instance v8, Landroid/support/v4/h50;

    invoke-virtual {p0}, Landroid/support/v4/g50;->try()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v9, Landroid/support/v4/b50;

    invoke-virtual {v0}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Landroid/support/v4/th2;->class()[B

    move-result-object v7

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/b50;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v8, p0, v9}, Landroid/support/v4/h50;-><init>(Ljava/math/BigInteger;Landroid/support/v4/e40;)V

    move-object v0, v8

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/bouncycastle/crypto/util/final;

    sget-object v2, Lorg/bouncycastle/crypto/util/goto;->do:[B

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/crypto/util/final;-><init>([B[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/final;->try()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/for;->if([B)Ljava/lang/String;

    move-result-object p0

    const-string v2, "none"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/final;->try()[B

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/final;->try()[B

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/final;->case()I

    move-result p0

    int-to-long v2, p0

    const/4 p0, 0x0

    :goto_0
    int-to-long v4, p0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/final;->try()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/crypto/util/this;->for([B)Landroid/support/v4/a4;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Lorg/bouncycastle/crypto/util/final;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/final;->new()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/util/final;-><init>([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->case()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->case()I

    move-result v2

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->try()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/for;->if([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssh-ed25519"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->try()[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/final;->try()[B

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/crypto/params/if;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/crypto/params/if;-><init>([BI)V

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not parse private key of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "private key check values are not the same"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "encrypted keys not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static if(Landroid/support/v4/a4;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_4

    instance-of v0, p0, Landroid/support/v4/dk1;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/class;->do(Landroid/support/v4/a4;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/support/v4/h50;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/class;->do(Landroid/support/v4/a4;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Landroid/support/v4/jv;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    check-cast p0, Landroid/support/v4/jv;

    invoke-virtual {p0}, Landroid/support/v4/ev;->if()Landroid/support/v4/hv;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hv;->if()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Landroid/support/v4/ev;->if()Landroid/support/v4/hv;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hv;->for()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Landroid/support/v4/ev;->if()Landroid/support/v4/hv;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hv;->do()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0}, Landroid/support/v4/ev;->if()Landroid/support/v4/hv;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hv;->do()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/jv;->for()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/ev;->if()Landroid/support/v4/hv;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/hv;->if()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Landroid/support/v4/jv;->for()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :try_start_0
    new-instance p0, Lorg/bouncycastle/asn1/n;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode DSAPrivateKeyParameters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/if;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/util/super;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/super;-><init>()V

    sget-object v3, Lorg/bouncycastle/crypto/util/goto;->do:[B

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/util/super;->new([B)V

    const-string v3, "none"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/util/super;->try(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/util/super;->try(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/util/super;->for(J)V

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/bouncycastle/crypto/util/super;->for(J)V

    check-cast p0, Lorg/bouncycastle/crypto/params/if;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/if;->for()Lorg/bouncycastle/crypto/params/for;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/crypto/util/this;->do(Landroid/support/v4/a4;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/util/super;->if([B)V

    new-instance v3, Lorg/bouncycastle/crypto/util/super;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/util/super;-><init>()V

    const-wide/32 v4, 0xff00ff

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/crypto/util/super;->for(J)V

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/crypto/util/super;->for(J)V

    const-string v4, "ssh-ed25519"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/util/super;->try(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/if;->for()Lorg/bouncycastle/crypto/params/for;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/for;->for()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/util/super;->if([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/if;->new()[B

    move-result-object p0

    invoke-static {p0, v4}, Landroid/support/v4/q3;->default([B[B)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/bouncycastle/crypto/util/super;->if([B)V

    invoke-virtual {v3, v1, v2}, Lorg/bouncycastle/crypto/util/super;->for(J)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/util/super;->do()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/util/super;->if([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/super;->do()[B

    move-result-object p0

    return-object p0

    :cond_3
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

    const-string p0, " to openssh private key"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "param is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
