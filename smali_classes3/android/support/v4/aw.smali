.class public Landroid/support/v4/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final catch:I = 0x1

.field private static final class:I = 0x0

.field private static final const:I = 0x1

.field private static final final:I = 0x2

.field private static final super:I = 0x3


# instance fields
.field private break:Landroid/support/v4/y90;

.field private case:Landroid/support/v4/xa1;

.field private do:I

.field private else:Landroid/support/v4/fe1;

.field private for:Landroid/support/v4/v00;

.field private goto:Lorg/bouncycastle/asn1/throw;

.field private if:Landroid/support/v4/dw;

.field private new:Lorg/bouncycastle/asn1/goto;

.field private this:Lorg/bouncycastle/asn1/super;

.field private try:Landroid/support/v4/gw;


# direct methods
.method public constructor <init>(Landroid/support/v4/dw;Landroid/support/v4/v00;Lorg/bouncycastle/asn1/goto;Landroid/support/v4/gw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/aw;->do:I

    iput-object p1, p0, Landroid/support/v4/aw;->if:Landroid/support/v4/dw;

    iput-object p2, p0, Landroid/support/v4/aw;->for:Landroid/support/v4/v00;

    iput-object p3, p0, Landroid/support/v4/aw;->new:Lorg/bouncycastle/asn1/goto;

    iput-object p4, p0, Landroid/support/v4/aw;->try:Landroid/support/v4/gw;

    return-void
.end method


# virtual methods
.method public break(Lorg/bouncycastle/asn1/goto;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/aw;->new:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public case(Landroid/support/v4/v00;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/aw;->for:Landroid/support/v4/v00;

    return-void
.end method

.method public catch(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/aw;->do:I

    return-void
.end method

.method public do()Landroid/support/v4/zv;
    .locals 6

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget v1, p0, Landroid/support/v4/aw;->do:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/goto;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/aw;->if:Landroid/support/v4/dw;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/aw;->for:Landroid/support/v4/v00;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/aw;->new:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/aw;->try:Landroid/support/v4/gw;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/aw;->case:Landroid/support/v4/xa1;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v4, p0, Landroid/support/v4/aw;->case:Landroid/support/v4/xa1;

    invoke-direct {v1, v3, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/aw;->else:Landroid/support/v4/fe1;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v4, p0, Landroid/support/v4/aw;->else:Landroid/support/v4/fe1;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/aw;->goto:Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x2

    iget-object v4, p0, Landroid/support/v4/aw;->goto:Lorg/bouncycastle/asn1/throw;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    iget-object v1, p0, Landroid/support/v4/aw;->this:Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x3

    iget-object v4, p0, Landroid/support/v4/aw;->this:Lorg/bouncycastle/asn1/super;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_4
    iget-object v1, p0, Landroid/support/v4/aw;->break:Landroid/support/v4/y90;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_5
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-static {v1}, Landroid/support/v4/zv;->goto(Ljava/lang/Object;)Landroid/support/v4/zv;

    move-result-object v0

    return-object v0
.end method

.method public else(Landroid/support/v4/fe1;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/aw;->else:Landroid/support/v4/fe1;

    return-void
.end method

.method public for(Landroid/support/v4/dw;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/aw;->if:Landroid/support/v4/dw;

    return-void
.end method

.method public goto(Lorg/bouncycastle/asn1/throw;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/aw;->goto:Lorg/bouncycastle/asn1/throw;

    return-void
.end method

.method public if([Landroid/support/v4/u42;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/aw;->this:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public new(Landroid/support/v4/xa1;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/aw;->case:Landroid/support/v4/xa1;

    return-void
.end method

.method public this(Landroid/support/v4/gw;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/aw;->try:Landroid/support/v4/gw;

    return-void
.end method

.method public try(Landroid/support/v4/y90;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/aw;->break:Landroid/support/v4/y90;

    return-void
.end method
