.class public Landroid/support/v4/v91;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/class;

.field private for:Lorg/bouncycastle/asn1/goto;

.field private if:Landroid/support/v4/b1;

.field private new:Landroid/support/v4/b1;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/class;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/goto;Landroid/support/v4/b1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/v91;->do:Lorg/bouncycastle/asn1/class;

    iput-object p2, p0, Landroid/support/v4/v91;->if:Landroid/support/v4/b1;

    iput-object p3, p0, Landroid/support/v4/v91;->for:Lorg/bouncycastle/asn1/goto;

    iput-object p4, p0, Landroid/support/v4/v91;->new:Landroid/support/v4/b1;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/v91;->do:Lorg/bouncycastle/asn1/class;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/v91;->if:Landroid/support/v4/b1;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/v91;->for:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/v91;->new:Landroid/support/v4/b1;

    return-void
.end method

.method public constructor <init>([BLandroid/support/v4/b1;ILandroid/support/v4/b1;)V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    new-instance p1, Lorg/bouncycastle/asn1/goto;

    int-to-long v1, p3

    invoke-direct {p1, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-direct {p0, v0, p2, p1, p4}, Landroid/support/v4/v91;-><init>(Lorg/bouncycastle/asn1/class;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/goto;Landroid/support/v4/b1;)V

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/v91;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/v91;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/v91;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/v91;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/v91;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v91;->new:Landroid/support/v4/b1;

    return-object v0
.end method

.method public else()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v91;->if:Landroid/support/v4/b1;

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v91;->do:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/v91;->do:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/v91;->if:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/v91;->for:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/v91;->new:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v91;->for:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method
