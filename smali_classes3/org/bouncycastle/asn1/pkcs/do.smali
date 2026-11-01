.class public Lorg/bouncycastle/asn1/pkcs/do;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/goto;

.field private for:Lorg/bouncycastle/asn1/class;

.field private if:Landroid/support/v4/b1;

.field private new:Lorg/bouncycastle/asn1/throw;

.field private try:Lorg/bouncycastle/asn1/if;


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/throw;[B)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/throw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/throw;[B)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/throw;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    if-eqz p4, :cond_0

    sget-object v1, Lorg/bouncycastle/util/do;->if:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/bouncycastle/util/do;->do:Ljava/math/BigInteger;

    :goto_0
    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/do;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/do;->if:Landroid/support/v4/b1;

    new-instance p1, Lorg/bouncycastle/asn1/j;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/j;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/do;->for:Lorg/bouncycastle/asn1/class;

    iput-object p3, p0, Lorg/bouncycastle/asn1/pkcs/do;->new:Lorg/bouncycastle/asn1/throw;

    if-nez p4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/instanceof;

    invoke-direct {p1, p4}, Lorg/bouncycastle/asn1/instanceof;-><init>([B)V

    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/do;->try:Lorg/bouncycastle/asn1/if;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/do;->do:Lorg/bouncycastle/asn1/goto;

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/do;->this(Lorg/bouncycastle/asn1/goto;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/pkcs/do;->if:Landroid/support/v4/b1;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/pkcs/do;->for:Lorg/bouncycastle/asn1/class;

    const/4 v1, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v3

    if-le v3, v1, :cond_3

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-lt v0, v4, :cond_0

    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/instanceof;->return(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/pkcs/do;->try:Lorg/bouncycastle/asn1/if;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'publicKey\' requires version v2(1) or later"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown optional field in private key info"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/pkcs/do;->new:Lorg/bouncycastle/asn1/throw;

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid optional field in private key info"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/pkcs/do;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/do;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object p0

    return-object p0
.end method

.method private static this(Lorg/bouncycastle/asn1/goto;)I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/util/do;->do:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/util/do;->if:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid version for private key info"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/do;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/pkcs/do;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/pkcs/do;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/do;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public break()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/do;->try:Lorg/bouncycastle/asn1/if;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public catch()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/do;->for:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public class()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/do;->try:Lorg/bouncycastle/asn1/if;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/if;->super()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public else()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/do;->if:Landroid/support/v4/b1;

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/asn1/if;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/do;->try:Lorg/bouncycastle/asn1/if;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/do;->new:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/do;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/do;->if:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/do;->for:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/do;->new:Lorg/bouncycastle/asn1/throw;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Lorg/bouncycastle/asn1/pkcs/do;->new:Lorg/bouncycastle/asn1/throw;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/do;->try:Lorg/bouncycastle/asn1/if;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/asn1/pkcs/do;->try:Lorg/bouncycastle/asn1/if;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
