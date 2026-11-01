.class public Landroid/support/v4/xh0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/vh0;

.field private final if:Landroid/support/v4/yh0;


# direct methods
.method public constructor <init>(Landroid/support/v4/vh0;Landroid/support/v4/yh0;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/xh0;->do:Landroid/support/v4/vh0;

    iput-object p2, p0, Landroid/support/v4/xh0;->if:Landroid/support/v4/yh0;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/vh0;->try(Ljava/lang/Object;)Landroid/support/v4/vh0;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/xh0;->do:Landroid/support/v4/vh0;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/support/v4/yh0;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/yh0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/xh0;->if:Landroid/support/v4/yh0;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/xh0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/xh0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/xh0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/xh0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/xh0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/yh0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xh0;->if:Landroid/support/v4/yh0;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/xh0;->do:Landroid/support/v4/vh0;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/xh0;->if:Landroid/support/v4/yh0;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v2, p0, Landroid/support/v4/xh0;->if:Landroid/support/v4/yh0;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/vh0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xh0;->do:Landroid/support/v4/vh0;

    return-object v0
.end method
