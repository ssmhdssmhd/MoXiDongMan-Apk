.class public Landroid/support/v4/pg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private break:Landroid/support/v4/y90;

.field private case:Landroid/support/v4/tg2;

.field private do:Lorg/bouncycastle/asn1/goto;

.field private else:Lorg/bouncycastle/asn1/x509/try;

.field private for:Landroid/support/v4/b1;

.field private goto:Lorg/bouncycastle/asn1/instanceof;

.field private if:Lorg/bouncycastle/asn1/goto;

.field private new:Landroid/support/v4/tg2;

.field private this:Lorg/bouncycastle/asn1/instanceof;

.field private try:Landroid/support/v4/e81;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private do(Landroid/support/v4/import;IZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    if-eqz p4, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, p3, p2, p4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public break(Landroid/support/v4/tg2;)Landroid/support/v4/pg;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/pg;->case:Landroid/support/v4/tg2;

    return-object p0
.end method

.method public case(Lorg/bouncycastle/asn1/instanceof;)Landroid/support/v4/pg;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/pg;->goto:Lorg/bouncycastle/asn1/instanceof;

    return-object p0
.end method

.method public catch(Lorg/bouncycastle/asn1/instanceof;)Landroid/support/v4/pg;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/pg;->this:Lorg/bouncycastle/asn1/instanceof;

    return-object p0
.end method

.method public class(Landroid/support/v4/e81;)Landroid/support/v4/pg;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/pg;->try:Landroid/support/v4/e81;

    return-object p0
.end method

.method public const(I)Landroid/support/v4/pg;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/pg;->do:Lorg/bouncycastle/asn1/goto;

    return-object p0
.end method

.method public else(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/pg;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/pg;->else:Lorg/bouncycastle/asn1/x509/try;

    return-object p0
.end method

.method public for(Landroid/support/v4/y90;)Landroid/support/v4/pg;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/pg;->break:Landroid/support/v4/y90;

    return-object p0
.end method

.method public goto(Lorg/bouncycastle/asn1/goto;)Landroid/support/v4/pg;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/pg;->if:Lorg/bouncycastle/asn1/goto;

    return-object p0
.end method

.method public if()Landroid/support/v4/og;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/pg;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Landroid/support/v4/pg;->do(Landroid/support/v4/import;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pg;->if:Lorg/bouncycastle/asn1/goto;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v2, v1}, Landroid/support/v4/pg;->do(Landroid/support/v4/import;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pg;->for:Landroid/support/v4/b1;

    const/4 v4, 0x2

    invoke-direct {p0, v0, v4, v2, v1}, Landroid/support/v4/pg;->do(Landroid/support/v4/import;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pg;->new:Landroid/support/v4/tg2;

    const/4 v4, 0x3

    invoke-direct {p0, v0, v4, v3, v1}, Landroid/support/v4/pg;->do(Landroid/support/v4/import;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pg;->try:Landroid/support/v4/e81;

    const/4 v4, 0x4

    invoke-direct {p0, v0, v4, v2, v1}, Landroid/support/v4/pg;->do(Landroid/support/v4/import;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pg;->case:Landroid/support/v4/tg2;

    const/4 v4, 0x5

    invoke-direct {p0, v0, v4, v3, v1}, Landroid/support/v4/pg;->do(Landroid/support/v4/import;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pg;->else:Lorg/bouncycastle/asn1/x509/try;

    const/4 v3, 0x6

    invoke-direct {p0, v0, v3, v2, v1}, Landroid/support/v4/pg;->do(Landroid/support/v4/import;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pg;->goto:Lorg/bouncycastle/asn1/instanceof;

    const/4 v3, 0x7

    invoke-direct {p0, v0, v3, v2, v1}, Landroid/support/v4/pg;->do(Landroid/support/v4/import;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pg;->this:Lorg/bouncycastle/asn1/instanceof;

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3, v2, v1}, Landroid/support/v4/pg;->do(Landroid/support/v4/import;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pg;->break:Landroid/support/v4/y90;

    const/16 v3, 0x9

    invoke-direct {p0, v0, v3, v2, v1}, Landroid/support/v4/pg;->do(Landroid/support/v4/import;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-static {v1}, Landroid/support/v4/og;->try(Ljava/lang/Object;)Landroid/support/v4/og;

    move-result-object v0

    return-object v0
.end method

.method public new(Landroid/support/v4/fh2;)Landroid/support/v4/pg;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/y90;->break(Ljava/lang/Object;)Landroid/support/v4/y90;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/pg;->for(Landroid/support/v4/y90;)Landroid/support/v4/pg;

    move-result-object p1

    return-object p1
.end method

.method public this(Landroid/support/v4/b1;)Landroid/support/v4/pg;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/pg;->for:Landroid/support/v4/b1;

    return-object p0
.end method

.method public try(Landroid/support/v4/tg2;)Landroid/support/v4/pg;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/pg;->new:Landroid/support/v4/tg2;

    return-object p0
.end method
