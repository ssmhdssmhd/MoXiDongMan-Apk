.class public Landroid/support/v4/rd2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private break:Lorg/bouncycastle/asn1/case;

.field private case:Landroid/support/v4/import;

.field private do:Lorg/bouncycastle/asn1/goto;

.field private else:Lorg/bouncycastle/asn1/instanceof;

.field private for:Landroid/support/v4/j4;

.field private goto:Landroid/support/v4/y90;

.field private if:Landroid/support/v4/rj0;

.field private new:Landroid/support/v4/b1;

.field private this:Lorg/bouncycastle/asn1/case;

.field private try:Lorg/bouncycastle/asn1/goto;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/rd2;->do:Lorg/bouncycastle/asn1/goto;

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iput-object v0, p0, Landroid/support/v4/rd2;->case:Landroid/support/v4/import;

    return-void
.end method


# virtual methods
.method public break(Lorg/bouncycastle/asn1/goto;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/rd2;->try:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public case(Landroid/support/v4/fh2;)V
    .locals 0

    invoke-virtual {p1}, Landroid/support/v4/fh2;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/y90;->break(Ljava/lang/Object;)Landroid/support/v4/y90;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/rd2;->goto:Landroid/support/v4/y90;

    return-void
.end method

.method public catch(Landroid/support/v4/b1;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/rd2;->new:Landroid/support/v4/b1;

    return-void
.end method

.method public class(Lorg/bouncycastle/asn1/case;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/rd2;->this:Lorg/bouncycastle/asn1/case;

    return-void
.end method

.method public do(Landroid/support/v4/n4;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/rd2;->case:Landroid/support/v4/import;

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public else(Landroid/support/v4/rj0;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/rd2;->if:Landroid/support/v4/rj0;

    return-void
.end method

.method public for()Landroid/support/v4/r4;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/rd2;->try:Lorg/bouncycastle/asn1/goto;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/rd2;->new:Landroid/support/v4/b1;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/rd2;->for:Landroid/support/v4/j4;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/rd2;->this:Lorg/bouncycastle/asn1/case;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/rd2;->break:Lorg/bouncycastle/asn1/case;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/rd2;->if:Landroid/support/v4/rj0;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/rd2;->case:Landroid/support/v4/import;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/rd2;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/rd2;->if:Landroid/support/v4/rj0;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/rd2;->for:Landroid/support/v4/j4;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/rd2;->new:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/rd2;->try:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Landroid/support/v4/k4;

    iget-object v2, p0, Landroid/support/v4/rd2;->this:Lorg/bouncycastle/asn1/case;

    iget-object v3, p0, Landroid/support/v4/rd2;->break:Lorg/bouncycastle/asn1/case;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/k4;-><init>(Lorg/bouncycastle/asn1/case;Lorg/bouncycastle/asn1/case;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    iget-object v2, p0, Landroid/support/v4/rd2;->case:Landroid/support/v4/import;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/rd2;->else:Lorg/bouncycastle/asn1/instanceof;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/rd2;->goto:Landroid/support/v4/y90;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-static {v1}, Landroid/support/v4/r4;->goto(Ljava/lang/Object;)Landroid/support/v4/r4;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V2 AttributeCertificateInfo generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public goto(Landroid/support/v4/j4;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/rd2;->for:Landroid/support/v4/j4;

    return-void
.end method

.method public if(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/rd2;->case:Landroid/support/v4/import;

    new-instance v1, Landroid/support/v4/n4;

    new-instance v2, Lorg/bouncycastle/asn1/catch;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/asn1/q;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/q;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, p1}, Landroid/support/v4/n4;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/throw;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public new(Lorg/bouncycastle/asn1/case;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/rd2;->break:Lorg/bouncycastle/asn1/case;

    return-void
.end method

.method public this(Lorg/bouncycastle/asn1/instanceof;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/rd2;->else:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method public try(Landroid/support/v4/y90;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/rd2;->goto:Landroid/support/v4/y90;

    return-void
.end method
