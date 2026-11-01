.class public Landroid/support/v4/zv;
.super Lorg/bouncycastle/asn1/break;
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

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/zv;->do:I

    iput-object p1, p0, Landroid/support/v4/zv;->if:Landroid/support/v4/dw;

    iput-object p2, p0, Landroid/support/v4/zv;->for:Landroid/support/v4/v00;

    iput-object p3, p0, Landroid/support/v4/zv;->new:Lorg/bouncycastle/asn1/goto;

    iput-object p4, p0, Landroid/support/v4/zv;->try:Landroid/support/v4/gw;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 7

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/zv;->do:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    const/4 v3, 0x2

    :try_start_0
    invoke-static {v2}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    iput v4, p0, Landroid/support/v4/zv;->do:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v4, 0x2

    goto :goto_0

    :catch_1
    const/4 v4, 0x1

    :goto_0
    invoke-static {v2}, Landroid/support/v4/dw;->else(Ljava/lang/Object;)Landroid/support/v4/dw;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/zv;->if:Landroid/support/v4/dw;

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/v00;->case(Ljava/lang/Object;)Landroid/support/v4/v00;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/zv;->for:Landroid/support/v4/v00;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/zv;->new:Lorg/bouncycastle/asn1/goto;

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/gw;->try(Ljava/lang/Object;)Landroid/support/v4/gw;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/zv;->try:Landroid/support/v4/gw;

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v5, v2, Lorg/bouncycastle/asn1/import;

    if-eqz v5, :cond_4

    invoke-static {v2}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v5

    if-eqz v5, :cond_3

    if-eq v5, v0, :cond_2

    if-eq v5, v3, :cond_1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/zv;->this:Lorg/bouncycastle/asn1/super;

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/zv;->goto:Lorg/bouncycastle/asn1/throw;

    goto :goto_2

    :cond_2
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/fe1;->new(Ljava/lang/Object;)Landroid/support/v4/fe1;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/zv;->else:Landroid/support/v4/fe1;

    goto :goto_2

    :cond_3
    invoke-static {v2, v1}, Landroid/support/v4/xa1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/xa1;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/zv;->case:Landroid/support/v4/xa1;

    goto :goto_2

    :cond_4
    :try_start_2
    invoke-static {v2}, Landroid/support/v4/y90;->break(Ljava/lang/Object;)Landroid/support/v4/y90;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/zv;->break:Landroid/support/v4/y90;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_2
    move v2, v4

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static goto(Ljava/lang/Object;)Landroid/support/v4/zv;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/zv;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/zv;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/zv;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/zv;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private import(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/zv;->do:I

    return-void
.end method

.method public static this(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/zv;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/zv;->goto(Ljava/lang/Object;)Landroid/support/v4/zv;

    move-result-object p0

    return-object p0
.end method

.method private throw(Landroid/support/v4/dw;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/zv;->if:Landroid/support/v4/dw;

    return-void
.end method

.method private while(Landroid/support/v4/v00;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/zv;->for:Landroid/support/v4/v00;

    return-void
.end method


# virtual methods
.method public break()Landroid/support/v4/v00;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zv;->for:Landroid/support/v4/v00;

    return-object v0
.end method

.method public case()Landroid/support/v4/xa1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zv;->case:Landroid/support/v4/xa1;

    return-object v0
.end method

.method public catch()Landroid/support/v4/fe1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zv;->else:Landroid/support/v4/fe1;

    return-object v0
.end method

.method public class()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zv;->goto:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public const()Landroid/support/v4/gw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zv;->try:Landroid/support/v4/gw;

    return-object v0
.end method

.method public else()Landroid/support/v4/y90;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zv;->break:Landroid/support/v4/y90;

    return-object v0
.end method

.method public final()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zv;->new:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public new()[Landroid/support/v4/u42;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zv;->this:Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/u42;->new(Lorg/bouncycastle/asn1/super;)[Landroid/support/v4/u42;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public super()I
    .locals 1

    iget v0, p0, Landroid/support/v4/zv;->do:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 6

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget v1, p0, Landroid/support/v4/zv;->do:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/goto;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/zv;->if:Landroid/support/v4/dw;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/zv;->for:Landroid/support/v4/v00;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/zv;->new:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/zv;->try:Landroid/support/v4/gw;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/zv;->case:Landroid/support/v4/xa1;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v4, p0, Landroid/support/v4/zv;->case:Landroid/support/v4/xa1;

    invoke-direct {v1, v3, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/zv;->else:Landroid/support/v4/fe1;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v4, p0, Landroid/support/v4/zv;->else:Landroid/support/v4/fe1;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/zv;->goto:Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x2

    iget-object v4, p0, Landroid/support/v4/zv;->goto:Lorg/bouncycastle/asn1/throw;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    iget-object v1, p0, Landroid/support/v4/zv;->this:Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x3

    iget-object v4, p0, Landroid/support/v4/zv;->this:Lorg/bouncycastle/asn1/super;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_4
    iget-object v1, p0, Landroid/support/v4/zv;->break:Landroid/support/v4/y90;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_5
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "DVCSCertInfo {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/support/v4/zv;->do:I

    const-string v2, "\n"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/support/v4/zv;->do:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dvReqInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/zv;->if:Landroid/support/v4/dw;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageImprint: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/zv;->for:Landroid/support/v4/v00;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serialNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/zv;->new:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseTime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/zv;->try:Landroid/support/v4/gw;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/support/v4/zv;->case:Landroid/support/v4/xa1;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dvStatus: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/zv;->case:Landroid/support/v4/xa1;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Landroid/support/v4/zv;->else:Landroid/support/v4/fe1;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "policy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/zv;->else:Landroid/support/v4/fe1;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Landroid/support/v4/zv;->goto:Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqSignature: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/zv;->goto:Lorg/bouncycastle/asn1/throw;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Landroid/support/v4/zv;->this:Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "certs: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/zv;->this:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Landroid/support/v4/zv;->break:Landroid/support/v4/y90;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extensions: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/zv;->break:Landroid/support/v4/y90;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Landroid/support/v4/dw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zv;->if:Landroid/support/v4/dw;

    return-object v0
.end method
