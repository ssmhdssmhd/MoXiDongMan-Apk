.class public Landroid/support/v4/c5;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/asn1/class;

.field public for:Lorg/bouncycastle/asn1/goto;

.field public if:Landroid/support/v4/ug0;


# direct methods
.method public constructor <init>(Landroid/support/v4/ug0;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/c5;-><init>([BLandroid/support/v4/ug0;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/c5;->do:Lorg/bouncycastle/asn1/class;

    iput-object v0, p0, Landroid/support/v4/c5;->if:Landroid/support/v4/ug0;

    iput-object v0, p0, Landroid/support/v4/c5;->for:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c5;->for:Lorg/bouncycastle/asn1/goto;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v0, v2}, Landroid/support/v4/ug0;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/ug0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c5;->if:Landroid/support/v4/ug0;

    goto :goto_0

    :cond_2
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c5;->do:Lorg/bouncycastle/asn1/class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/try;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/c5;->do:Lorg/bouncycastle/asn1/class;

    iput-object v0, p0, Landroid/support/v4/c5;->if:Landroid/support/v4/ug0;

    iput-object v0, p0, Landroid/support/v4/c5;->for:Lorg/bouncycastle/asn1/goto;

    new-instance v0, Landroid/support/v4/wp1;

    invoke-direct {v0}, Landroid/support/v4/wp1;-><init>()V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->this()Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/if;->const()[B

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance p1, Lorg/bouncycastle/asn1/j;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/c5;->do:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/try;Landroid/support/v4/ug0;Ljava/math/BigInteger;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/c5;->do:Lorg/bouncycastle/asn1/class;

    iput-object v0, p0, Landroid/support/v4/c5;->if:Landroid/support/v4/ug0;

    iput-object v0, p0, Landroid/support/v4/c5;->for:Lorg/bouncycastle/asn1/goto;

    new-instance v0, Landroid/support/v4/wp1;

    invoke-direct {v0}, Landroid/support/v4/wp1;-><init>()V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->this()Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/if;->const()[B

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance p1, Lorg/bouncycastle/asn1/j;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/c5;->do:Lorg/bouncycastle/asn1/class;

    invoke-virtual {p2}, Landroid/support/v4/ug0;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/ug0;->case(Ljava/lang/Object;)Landroid/support/v4/ug0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/c5;->if:Landroid/support/v4/ug0;

    new-instance p1, Lorg/bouncycastle/asn1/goto;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Landroid/support/v4/c5;->for:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/support/v4/c5;-><init>([BLandroid/support/v4/ug0;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>([BLandroid/support/v4/ug0;Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/c5;->do:Lorg/bouncycastle/asn1/class;

    iput-object v0, p0, Landroid/support/v4/c5;->if:Landroid/support/v4/ug0;

    iput-object v0, p0, Landroid/support/v4/c5;->for:Lorg/bouncycastle/asn1/goto;

    if-eqz p1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/j;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroid/support/v4/c5;->do:Lorg/bouncycastle/asn1/class;

    iput-object p2, p0, Landroid/support/v4/c5;->if:Landroid/support/v4/ug0;

    if-eqz p3, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    :cond_1
    iput-object v0, p0, Landroid/support/v4/c5;->for:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/c5;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/c5;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/c5;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/c5;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/c5;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static goto(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/c5;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/c5;->else(Ljava/lang/Object;)Landroid/support/v4/c5;

    move-result-object p0

    return-object p0
.end method

.method public static new(Landroid/support/v4/y90;)Landroid/support/v4/c5;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/if;->static:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p0, v0}, Landroid/support/v4/y90;->this(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/c5;->else(Ljava/lang/Object;)Landroid/support/v4/c5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c5;->for:Lorg/bouncycastle/asn1/goto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public this()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c5;->do:Lorg/bouncycastle/asn1/class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/c5;->do:Lorg/bouncycastle/asn1/class;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/c5;->do:Lorg/bouncycastle/asn1/class;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/c5;->if:Landroid/support/v4/ug0;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/v4/c5;->if:Landroid/support/v4/ug0;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/c5;->for:Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/c5;->for:Lorg/bouncycastle/asn1/goto;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorityKeyIdentifier: KeyID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/c5;->do:Lorg/bouncycastle/asn1/class;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/for;->goto([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Landroid/support/v4/ug0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c5;->if:Landroid/support/v4/ug0;

    return-object v0
.end method
