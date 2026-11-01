.class public Landroid/support/v4/qe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/pe;

.field private for:Lorg/bouncycastle/asn1/v;

.field private final if:Lorg/bouncycastle/asn1/super;

.field private new:Landroid/support/v4/c91;


# direct methods
.method public constructor <init>(Landroid/support/v4/pe;Landroid/support/v4/ta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/qe;->do:Landroid/support/v4/pe;

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Landroid/support/v4/qe;->if:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/pe;[Landroid/support/v4/ta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/qe;->do:Landroid/support/v4/pe;

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Landroid/support/v4/qe;->if:Lorg/bouncycastle/asn1/super;

    return-void
.end method


# virtual methods
.method public do()Lorg/bouncycastle/asn1/cmc/try;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/cmc/try;

    iget-object v1, p0, Landroid/support/v4/qe;->do:Landroid/support/v4/pe;

    iget-object v2, p0, Landroid/support/v4/qe;->if:Lorg/bouncycastle/asn1/super;

    iget-object v3, p0, Landroid/support/v4/qe;->for:Lorg/bouncycastle/asn1/v;

    iget-object v4, p0, Landroid/support/v4/qe;->new:Landroid/support/v4/c91;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/asn1/cmc/try;-><init>(Landroid/support/v4/pe;Lorg/bouncycastle/asn1/super;Lorg/bouncycastle/asn1/v;Landroid/support/v4/c91;)V

    return-object v0
.end method

.method public for(Landroid/support/v4/s90;)Landroid/support/v4/qe;
    .locals 1

    new-instance v0, Landroid/support/v4/c91;

    invoke-direct {v0, p1}, Landroid/support/v4/c91;-><init>(Landroid/support/v4/s90;)V

    iput-object v0, p0, Landroid/support/v4/qe;->new:Landroid/support/v4/c91;

    return-object p0
.end method

.method public if(Landroid/support/v4/ne;)Landroid/support/v4/qe;
    .locals 1

    new-instance v0, Landroid/support/v4/c91;

    invoke-direct {v0, p1}, Landroid/support/v4/c91;-><init>(Landroid/support/v4/ne;)V

    iput-object v0, p0, Landroid/support/v4/qe;->new:Landroid/support/v4/c91;

    return-object p0
.end method

.method public new(Landroid/support/v4/bd1;)Landroid/support/v4/qe;
    .locals 1

    new-instance v0, Landroid/support/v4/c91;

    invoke-direct {v0, p1}, Landroid/support/v4/c91;-><init>(Landroid/support/v4/bd1;)V

    iput-object v0, p0, Landroid/support/v4/qe;->new:Landroid/support/v4/c91;

    return-object p0
.end method

.method public try(Ljava/lang/String;)Landroid/support/v4/qe;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/v;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/v;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/qe;->for:Lorg/bouncycastle/asn1/v;

    return-object p0
.end method
