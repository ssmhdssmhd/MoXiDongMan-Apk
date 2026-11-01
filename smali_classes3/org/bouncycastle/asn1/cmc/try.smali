.class public Lorg/bouncycastle/asn1/cmc/try;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/pe;

.field private final for:Lorg/bouncycastle/asn1/v;

.field private final if:Lorg/bouncycastle/asn1/super;

.field private final new:Landroid/support/v4/c91;


# direct methods
.method public constructor <init>(Landroid/support/v4/pe;Lorg/bouncycastle/asn1/super;Lorg/bouncycastle/asn1/v;Landroid/support/v4/c91;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/try;->do:Landroid/support/v4/pe;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/try;->if:Lorg/bouncycastle/asn1/super;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmc/try;->for:Lorg/bouncycastle/asn1/v;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cmc/try;->new:Landroid/support/v4/c91;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/pe;->new(Ljava/lang/Object;)Landroid/support/v4/pe;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/try;->do:Landroid/support/v4/pe;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/try;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v3, 0x0

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/v;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/try;->for:Lorg/bouncycastle/asn1/v;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/support/v4/c91;->new(Ljava/lang/Object;)Landroid/support/v4/c91;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/try;->new:Landroid/support/v4/c91;

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/v;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/v;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/try;->for:Lorg/bouncycastle/asn1/v;

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lorg/bouncycastle/asn1/cmc/try;->for:Lorg/bouncycastle/asn1/v;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lorg/bouncycastle/asn1/cmc/try;->for:Lorg/bouncycastle/asn1/v;

    :goto_1
    iput-object v3, p0, Lorg/bouncycastle/asn1/cmc/try;->new:Landroid/support/v4/c91;

    :goto_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public static try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/try;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/try;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmc/try;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmc/try;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmc/try;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/c91;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/try;->new:Landroid/support/v4/c91;

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/v;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/try;->for:Lorg/bouncycastle/asn1/v;

    return-object v0
.end method

.method public goto()Landroid/support/v4/pe;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/try;->do:Landroid/support/v4/pe;

    return-object v0
.end method

.method public new()[Landroid/support/v4/ta;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/try;->if:Lorg/bouncycastle/asn1/super;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/goto;->for(Lorg/bouncycastle/asn1/super;)[Landroid/support/v4/ta;

    move-result-object v0

    return-object v0
.end method

.method public this()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/try;->new:Landroid/support/v4/c91;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/try;->do:Landroid/support/v4/pe;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/try;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/try;->for:Lorg/bouncycastle/asn1/v;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/try;->new:Landroid/support/v4/c91;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
