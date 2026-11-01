.class public Lorg/bouncycastle/pqc/crypto/util/do;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static do([B)[S
    .locals 4

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-static {p0, v3}, Landroid/support/v4/ib1;->return([BI)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static for(Lorg/bouncycastle/asn1/pkcs/do;)Landroid/support/v4/a4;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->qTESLA:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->return(Lorg/bouncycastle/asn1/catch;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    new-instance v1, Landroid/support/v4/pi1;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/try;->for(Landroid/support/v4/b1;)I

    move-result p0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/support/v4/pi1;-><init>(I[B)V

    return-object v1

    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/support/v4/ar1;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/yq1;->new(Ljava/lang/Object;)Landroid/support/v4/yq1;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/try;->try(Landroid/support/v4/yq1;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/support/v4/ar1;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_1
    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/support/v4/r11;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/do;->do([B)[S

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/r11;-><init>([S)V

    return-object v0

    :cond_2
    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ClassNotFoundException processing BDS state: "

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/gi2;->try(Ljava/lang/Object;)Landroid/support/v4/gi2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/gi2;->case()Landroid/support/v4/b1;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/oi2;->case(Ljava/lang/Object;)Landroid/support/v4/oi2;

    move-result-object p0

    :try_start_0
    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Landroid/support/v4/gi2;->new()I

    move-result v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/try;->do(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lorg/bouncycastle/pqc/crypto/xmss/finally;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {p0}, Landroid/support/v4/oi2;->try()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->class(I)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/oi2;->break()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->while([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/oi2;->this()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->throw([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/oi2;->else()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->final([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/oi2;->goto()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->super([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/oi2;->new()[B

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/oi2;->new()[B

    move-result-object p0

    const-class v3, Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->else([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/do;->withWOTSDigest(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->catch(Lorg/bouncycastle/pqc/crypto/xmss/do;)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/package;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ji2;->try(Ljava/lang/Object;)Landroid/support/v4/ji2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ji2;->else()Landroid/support/v4/b1;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    :try_start_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/oi2;->case(Ljava/lang/Object;)Landroid/support/v4/oi2;

    move-result-object p0

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v0}, Landroid/support/v4/ji2;->new()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/v4/ji2;->case()I

    move-result v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/try;->do(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    invoke-direct {v4, v5, v0, v6}, Lorg/bouncycastle/pqc/crypto/xmss/public;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    invoke-virtual {p0}, Landroid/support/v4/oi2;->try()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->class(J)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/oi2;->break()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->while([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/oi2;->this()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->throw([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/oi2;->else()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->final([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/oi2;->goto()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->super([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/oi2;->new()[B

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/oi2;->new()[B

    move-result-object p0

    const-class v3, Lorg/bouncycastle/pqc/crypto/xmss/if;

    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->else([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/if;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/if;->withWOTSDigest(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/pqc/crypto/xmss/if;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->catch(Lorg/bouncycastle/pqc/crypto/xmss/if;)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    :cond_5
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/return;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "algorithm identifier in private key not recognised"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static if(Ljava/io/InputStream;)Landroid/support/v4/a4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/else;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/else;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/do;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/do;->for(Lorg/bouncycastle/asn1/pkcs/do;)Landroid/support/v4/a4;

    move-result-object p0

    return-object p0
.end method

.method public static new([B)Landroid/support/v4/a4;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/do;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/do;->for(Lorg/bouncycastle/asn1/pkcs/do;)Landroid/support/v4/a4;

    move-result-object p0

    return-object p0
.end method
