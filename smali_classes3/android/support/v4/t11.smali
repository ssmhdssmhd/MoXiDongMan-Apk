.class public Landroid/support/v4/t11;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Ljava/util/Hashtable;

.field public static final if:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/support/v4/t11;->do:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/support/v4/t11;->if:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "B-571"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "B-409"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "B-283"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "B-233"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lorg/bouncycastle/asn1/catch;

    const-string v1, "B-163"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "K-571"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "K-409"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "K-283"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "K-233"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "K-163"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "P-521"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "P-384"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "P-256"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "P-224"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lorg/bouncycastle/asn1/catch;

    const-string v1, "P-192"

    invoke-static {v1, v0}, Landroid/support/v4/t11;->do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;
    .locals 1

    sget-object v0, Landroid/support/v4/t11;->do:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/for;->final(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/catch;

    return-object p0
.end method

.method public static do(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V
    .locals 1

    sget-object v0, Landroid/support/v4/t11;->do:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/t11;->if:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static for(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/sec/do;->this(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object p0

    return-object p0
.end method

.method public static if(Ljava/lang/String;)Landroid/support/v4/th2;
    .locals 1

    sget-object v0, Landroid/support/v4/t11;->do:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/for;->final(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/catch;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/support/v4/t11;->for(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static new(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/t11;->if:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static try()Ljava/util/Enumeration;
    .locals 1

    sget-object v0, Landroid/support/v4/t11;->do:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
