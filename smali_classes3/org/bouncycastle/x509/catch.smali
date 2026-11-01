.class public Lorg/bouncycastle/x509/catch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private case:Ljava/util/Collection;

.field private do:Lorg/bouncycastle/x509/do;

.field private else:Ljava/util/Collection;

.field private for:Ljava/math/BigInteger;

.field private if:Lorg/bouncycastle/x509/if;

.field private new:Ljava/util/Date;

.field private try:Lorg/bouncycastle/x509/X509AttributeCertificate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/catch;->case:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/catch;->else:Ljava/util/Collection;

    return-void
.end method

.method private try(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/support/v4/tg0;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast v1, [B

    invoke-static {v1}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1
.end method


# virtual methods
.method public break()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->for:Ljava/math/BigInteger;

    return-object v0
.end method

.method public case()Lorg/bouncycastle/x509/X509AttributeCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->try:Lorg/bouncycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public catch()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->else:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public class()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->case:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/x509/catch;

    invoke-direct {v0}, Lorg/bouncycastle/x509/catch;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/x509/catch;->try:Lorg/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lorg/bouncycastle/x509/catch;->try:Lorg/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/catch;->else()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/catch;->new:Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/x509/catch;->do:Lorg/bouncycastle/x509/do;

    iput-object v1, v0, Lorg/bouncycastle/x509/catch;->do:Lorg/bouncycastle/x509/do;

    iget-object v1, p0, Lorg/bouncycastle/x509/catch;->if:Lorg/bouncycastle/x509/if;

    iput-object v1, v0, Lorg/bouncycastle/x509/catch;->if:Lorg/bouncycastle/x509/if;

    iget-object v1, p0, Lorg/bouncycastle/x509/catch;->for:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/x509/catch;->for:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/catch;->catch()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/catch;->else:Ljava/util/Collection;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/catch;->class()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/catch;->case:Ljava/util/Collection;

    return-object v0
.end method

.method public const(Lorg/bouncycastle/x509/X509AttributeCertificate;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/catch;->try:Lorg/bouncycastle/x509/X509AttributeCertificate;

    return-void
.end method

.method public do(Landroid/support/v4/tg0;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->else:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public else()Ljava/util/Date;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->new:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/x509/catch;->new:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final(Ljava/util/Date;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/x509/catch;->new:Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/x509/catch;->new:Ljava/util/Date;

    :goto_0
    return-void
.end method

.method public for(Landroid/support/v4/tg0;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->case:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public goto()Lorg/bouncycastle/x509/do;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->do:Lorg/bouncycastle/x509/do;

    return-object v0
.end method

.method public if([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/catch;->do(Landroid/support/v4/tg0;)V

    return-void
.end method

.method public import(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/catch;->try(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/catch;->else:Ljava/util/Collection;

    return-void
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Lorg/bouncycastle/x509/X509AttributeCertificate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/x509/X509AttributeCertificate;

    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->try:Lorg/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->for:Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/catch;->for:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->do:Lorg/bouncycastle/x509/do;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/do;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/catch;->do:Lorg/bouncycastle/x509/do;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/do;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->if:Lorg/bouncycastle/x509/if;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/bouncycastle/x509/if;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/catch;->if:Lorg/bouncycastle/x509/if;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/if;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->new:Ljava/util/Date;

    if-eqz v0, :cond_5

    :try_start_0
    invoke-interface {p1, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->case:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->else:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_6
    sget-object v0, Lorg/bouncycastle/asn1/x509/if;->interface:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_e

    :try_start_1
    new-instance v0, Lorg/bouncycastle/asn1/else;

    invoke-static {p1}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/else;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/v42;->new(Ljava/lang/Object;)Landroid/support/v4/v42;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p1}, Landroid/support/v4/v42;->try()[Landroid/support/v4/x42;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->case:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_9

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/support/v4/x42;->try()[Landroid/support/v4/s42;

    move-result-object v4

    const/4 v5, 0x0

    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Lorg/bouncycastle/x509/catch;->case:Ljava/util/Collection;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Landroid/support/v4/s42;->case()Landroid/support/v4/tg0;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    if-nez v3, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->else:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_4
    array-length v4, p1

    if-ge v0, v4, :cond_d

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/support/v4/x42;->try()[Landroid/support/v4/s42;

    move-result-object v4

    const/4 v5, 0x0

    :goto_5
    array-length v6, v4

    if-ge v5, v6, :cond_c

    iget-object v6, p0, Lorg/bouncycastle/x509/catch;->else:Ljava/util/Collection;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Landroid/support/v4/s42;->try()Landroid/support/v4/tg0;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v3, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    if-nez v3, :cond_e

    :catch_1
    return v1

    :cond_e
    return v2
.end method

.method public native(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/catch;->try(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/catch;->case:Ljava/util/Collection;

    return-void
.end method

.method public new([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/catch;->for(Landroid/support/v4/tg0;)V

    return-void
.end method

.method public super(Lorg/bouncycastle/x509/do;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/catch;->do:Lorg/bouncycastle/x509/do;

    return-void
.end method

.method public this()Lorg/bouncycastle/x509/if;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/catch;->if:Lorg/bouncycastle/x509/if;

    return-object v0
.end method

.method public throw(Lorg/bouncycastle/x509/if;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/catch;->if:Lorg/bouncycastle/x509/if;

    return-void
.end method

.method public while(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/catch;->for:Ljava/math/BigInteger;

    return-void
.end method
