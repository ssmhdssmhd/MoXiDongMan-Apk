.class public Lorg/bouncycastle/pqc/crypto/util/for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/util/for$if;,
        Lorg/bouncycastle/pqc/crypto/util/for$for;,
        Lorg/bouncycastle/pqc/crypto/util/for$new;,
        Lorg/bouncycastle/pqc/crypto/util/for$try;,
        Lorg/bouncycastle/pqc/crypto/util/for$case;,
        Lorg/bouncycastle/pqc/crypto/util/for$else;
    }
.end annotation


# static fields
.field private static do:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/util/for;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_I:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/for$for;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/for$for;-><init>(Lorg/bouncycastle/pqc/crypto/util/for$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/for;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_III_size:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/for$for;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/for$for;-><init>(Lorg/bouncycastle/pqc/crypto/util/for$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/for;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_III_speed:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/for$for;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/for$for;-><init>(Lorg/bouncycastle/pqc/crypto/util/for$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/for;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_p_I:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/for$for;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/for$for;-><init>(Lorg/bouncycastle/pqc/crypto/util/for$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/for;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_p_III:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/for$for;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/for$for;-><init>(Lorg/bouncycastle/pqc/crypto/util/for$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/for;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/for$new;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/for$new;-><init>(Lorg/bouncycastle/pqc/crypto/util/for$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/for;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/for$if;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/for$if;-><init>(Lorg/bouncycastle/pqc/crypto/util/for$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/for;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/for$case;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/for$case;-><init>(Lorg/bouncycastle/pqc/crypto/util/for$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/for;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/for$else;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/for$else;-><init>(Lorg/bouncycastle/pqc/crypto/util/for$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/io/InputStream;)Landroid/support/v4/a4;
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

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/for;->if(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;

    move-result-object p0

    return-object p0
.end method

.method public static for(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;)Landroid/support/v4/a4;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/for;->do:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/util/for$try;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p1}, Lorg/bouncycastle/pqc/crypto/util/for$try;->do(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;)Landroid/support/v4/a4;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "algorithm identifier in public key not recognised: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static if(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/util/for;->for(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;)Landroid/support/v4/a4;

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

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/for;->if(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;

    move-result-object p0

    return-object p0
.end method
