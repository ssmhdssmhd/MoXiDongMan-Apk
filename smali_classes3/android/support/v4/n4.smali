.class public Landroid/support/v4/n4;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/catch;

.field private if:Lorg/bouncycastle/asn1/throw;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/throw;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/n4;->do:Lorg/bouncycastle/asn1/catch;

    iput-object p2, p0, Landroid/support/v4/n4;->if:Lorg/bouncycastle/asn1/throw;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/n4;->do:Lorg/bouncycastle/asn1/catch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/throw;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/n4;->if:Lorg/bouncycastle/asn1/throw;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/n4;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/n4;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/n4;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/n4;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/n4;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/n4;->if:Lorg/bouncycastle/asn1/throw;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/throw;->public()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/catch;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    iget-object v1, p0, Landroid/support/v4/n4;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/n4;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/n4;->if:Lorg/bouncycastle/asn1/throw;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/n4;->if:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method
