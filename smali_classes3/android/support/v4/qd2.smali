.class public Landroid/support/v4/qd2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public case:Landroid/support/v4/t62;

.field public do:Lorg/bouncycastle/asn1/u;

.field public else:Landroid/support/v4/tg2;

.field public for:Landroid/support/v4/b1;

.field public goto:Lorg/bouncycastle/asn1/x509/try;

.field public if:Lorg/bouncycastle/asn1/goto;

.field public new:Landroid/support/v4/tg2;

.field public try:Landroid/support/v4/t62;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/u;

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/qd2;->do:Lorg/bouncycastle/asn1/u;

    return-void
.end method


# virtual methods
.method public break(Landroid/support/v4/tg2;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/qd2;->else:Landroid/support/v4/tg2;

    return-void
.end method

.method public case(Lorg/bouncycastle/asn1/goto;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/qd2;->if:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public catch(Lorg/bouncycastle/asn1/x509/goto;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/goto;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/qd2;->else:Landroid/support/v4/tg2;

    return-void
.end method

.method public class(Lorg/bouncycastle/asn1/x509/try;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/qd2;->goto:Lorg/bouncycastle/asn1/x509/try;

    return-void
.end method

.method public do()Landroid/support/v4/w32;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/qd2;->if:Lorg/bouncycastle/asn1/goto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/qd2;->for:Landroid/support/v4/b1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/qd2;->new:Landroid/support/v4/tg2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/qd2;->try:Landroid/support/v4/t62;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/qd2;->case:Landroid/support/v4/t62;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/qd2;->else:Landroid/support/v4/tg2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/qd2;->goto:Lorg/bouncycastle/asn1/x509/try;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/qd2;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qd2;->for:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qd2;->new:Landroid/support/v4/tg2;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Landroid/support/v4/import;

    invoke-direct {v1}, Landroid/support/v4/import;-><init>()V

    iget-object v2, p0, Landroid/support/v4/qd2;->try:Landroid/support/v4/t62;

    invoke-virtual {v1, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v2, p0, Landroid/support/v4/qd2;->case:Landroid/support/v4/t62;

    invoke-virtual {v1, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/n;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qd2;->else:Landroid/support/v4/tg2;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qd2;->goto:Lorg/bouncycastle/asn1/x509/try;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-static {v1}, Landroid/support/v4/w32;->case(Ljava/lang/Object;)Landroid/support/v4/w32;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V1 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public else(Landroid/support/v4/b1;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/qd2;->for:Landroid/support/v4/b1;

    return-void
.end method

.method public for(Lorg/bouncycastle/asn1/native;)V
    .locals 1

    new-instance v0, Landroid/support/v4/t62;

    invoke-direct {v0, p1}, Landroid/support/v4/t62;-><init>(Lorg/bouncycastle/asn1/final;)V

    iput-object v0, p0, Landroid/support/v4/qd2;->case:Landroid/support/v4/t62;

    return-void
.end method

.method public goto(Landroid/support/v4/t62;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/qd2;->try:Landroid/support/v4/t62;

    return-void
.end method

.method public if(Landroid/support/v4/t62;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/qd2;->case:Landroid/support/v4/t62;

    return-void
.end method

.method public new(Landroid/support/v4/tg2;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/qd2;->new:Landroid/support/v4/tg2;

    return-void
.end method

.method public this(Lorg/bouncycastle/asn1/native;)V
    .locals 1

    new-instance v0, Landroid/support/v4/t62;

    invoke-direct {v0, p1}, Landroid/support/v4/t62;-><init>(Lorg/bouncycastle/asn1/final;)V

    iput-object v0, p0, Landroid/support/v4/qd2;->try:Landroid/support/v4/t62;

    return-void
.end method

.method public try(Lorg/bouncycastle/asn1/x509/goto;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/goto;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/qd2;->new:Landroid/support/v4/tg2;

    return-void
.end method
