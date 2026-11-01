.class public Lorg/bouncycastle/asn1/cmc/new;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/pe;

.field private for:Lorg/bouncycastle/asn1/v;

.field private final if:Lorg/bouncycastle/asn1/super;

.field private new:Lorg/bouncycastle/asn1/cmc/for$do;


# direct methods
.method public constructor <init>(Landroid/support/v4/pe;Landroid/support/v4/ta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/new;->do:Landroid/support/v4/pe;

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/new;->if:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/pe;[Landroid/support/v4/ta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/new;->do:Landroid/support/v4/pe;

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/new;->if:Lorg/bouncycastle/asn1/super;

    return-void
.end method


# virtual methods
.method public do()Lorg/bouncycastle/asn1/cmc/for;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/cmc/for;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/new;->do:Landroid/support/v4/pe;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmc/new;->if:Lorg/bouncycastle/asn1/super;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/new;->for:Lorg/bouncycastle/asn1/v;

    iget-object v4, p0, Lorg/bouncycastle/asn1/cmc/new;->new:Lorg/bouncycastle/asn1/cmc/for$do;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/asn1/cmc/for;-><init>(Landroid/support/v4/pe;Lorg/bouncycastle/asn1/super;Lorg/bouncycastle/asn1/v;Lorg/bouncycastle/asn1/cmc/for$do;)V

    return-object v0
.end method

.method public for(Landroid/support/v4/bd1;)Lorg/bouncycastle/asn1/cmc/new;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/cmc/for$do;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/cmc/for$do;-><init>(Landroid/support/v4/bd1;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/new;->new:Lorg/bouncycastle/asn1/cmc/for$do;

    return-object p0
.end method

.method public if(Landroid/support/v4/ne;)Lorg/bouncycastle/asn1/cmc/new;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/cmc/for$do;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/cmc/for$do;-><init>(Landroid/support/v4/ne;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/new;->new:Lorg/bouncycastle/asn1/cmc/for$do;

    return-object p0
.end method

.method public new(Ljava/lang/String;)Lorg/bouncycastle/asn1/cmc/new;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/v;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/v;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/new;->for:Lorg/bouncycastle/asn1/v;

    return-object p0
.end method
