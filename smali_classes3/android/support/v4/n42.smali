.class public Landroid/support/v4/n42;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final for:I = 0x0

.field public static final new:I = 0x1

.field public static final try:I = 0x2


# instance fields
.field private final do:I

.field private final if:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Landroid/support/v4/jg;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/n42;->do:I

    iput-object p1, p0, Landroid/support/v4/n42;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/l42;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/n42;->do:I

    iput-object p1, p0, Landroid/support/v4/n42;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/n42;->do:I

    iput-object p1, p0, Landroid/support/v4/n42;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/n42;
    .locals 3

    instance-of v0, p0, Landroid/support/v4/n42;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/n42;

    return-object p0

    :cond_0
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    new-instance v0, Landroid/support/v4/n42;

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/n42;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag in getInstance(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Landroid/support/v4/n42;

    invoke-static {p0, v1}, Landroid/support/v4/jg;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/jg;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/n42;-><init>(Landroid/support/v4/jg;)V

    return-object v0

    :cond_3
    new-instance v0, Landroid/support/v4/n42;

    invoke-static {p0, v1}, Landroid/support/v4/l42;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/l42;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/n42;-><init>(Landroid/support/v4/l42;)V

    return-object v0

    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/n42;->new(Ljava/lang/Object;)Landroid/support/v4/n42;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown encoding in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getTagNo()I
    .locals 1

    iget v0, p0, Landroid/support/v4/n42;->do:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/u;

    iget v1, p0, Landroid/support/v4/n42;->do:I

    iget-object v2, p0, Landroid/support/v4/n42;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public try()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/n42;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method
