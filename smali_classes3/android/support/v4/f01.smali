.class public Landroid/support/v4/f01;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/asn1/cmc/if;

.field private final for:Z

.field private final if:Lorg/bouncycastle/asn1/cmc/do;

.field private final new:Landroid/support/v4/og;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/if;Lorg/bouncycastle/asn1/cmc/do;ZLandroid/support/v4/og;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/f01;->do:Lorg/bouncycastle/asn1/cmc/if;

    iput-object p2, p0, Landroid/support/v4/f01;->if:Lorg/bouncycastle/asn1/cmc/do;

    iput-boolean p3, p0, Landroid/support/v4/f01;->for:Z

    iput-object p4, p0, Landroid/support/v4/f01;->new:Landroid/support/v4/og;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/if;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/if;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/f01;->do:Lorg/bouncycastle/asn1/cmc/if;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cmc/do;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/do;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/f01;->if:Lorg/bouncycastle/asn1/cmc/do;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v2, :cond_2

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/for;->const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/for;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/for;->throw()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/f01;->for:Z

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Landroid/support/v4/f01;->for:Z

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Landroid/support/v4/og;->try(Ljava/lang/Object;)Landroid/support/v4/og;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/f01;->new:Landroid/support/v4/og;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/f01;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/f01;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/f01;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/f01;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/f01;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()Lorg/bouncycastle/asn1/cmc/if;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f01;->do:Lorg/bouncycastle/asn1/cmc/if;

    return-object v0
.end method

.method public goto()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/f01;->for:Z

    return v0
.end method

.method public new()Lorg/bouncycastle/asn1/cmc/do;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f01;->if:Lorg/bouncycastle/asn1/cmc/do;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/f01;->do:Lorg/bouncycastle/asn1/cmc/if;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/f01;->if:Lorg/bouncycastle/asn1/cmc/do;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-boolean v1, p0, Landroid/support/v4/f01;->for:Z

    if-nez v1, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/f01;->new:Landroid/support/v4/og;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/og;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f01;->new:Landroid/support/v4/og;

    return-object v0
.end method
