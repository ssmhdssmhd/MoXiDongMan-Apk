.class public Landroid/support/v4/sp1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/fr;

.field private final if:Landroid/support/v4/fr;


# direct methods
.method public constructor <init>(Landroid/support/v4/fr;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/sp1;->do:Landroid/support/v4/fr;

    iput-object p1, p0, Landroid/support/v4/sp1;->if:Landroid/support/v4/fr;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/fr;Landroid/support/v4/fr;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/sp1;->do:Landroid/support/v4/fr;

    iput-object p2, p0, Landroid/support/v4/sp1;->if:Landroid/support/v4/fr;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/import;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/fr;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/fr;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/sp1;->do:Landroid/support/v4/fr;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/sp1;->do:Landroid/support/v4/fr;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/support/v4/fr;->case(Ljava/lang/Object;)Landroid/support/v4/fr;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/sp1;->if:Landroid/support/v4/fr;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/sp1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/sp1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/sp1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/sp1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/sp1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/fr;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/sp1;->if:Landroid/support/v4/fr;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/sp1;->do:Landroid/support/v4/fr;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v4/sp1;->do:Landroid/support/v4/fr;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/sp1;->if:Landroid/support/v4/fr;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/fr;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/sp1;->do:Landroid/support/v4/fr;

    return-object v0
.end method
