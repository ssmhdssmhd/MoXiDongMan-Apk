.class public final Lorg/bouncycastle/crypto/util/try$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final do:Landroid/support/v4/b1;

.field private final for:Lorg/bouncycastle/asn1/class;

.field private final if:Lorg/bouncycastle/asn1/class;

.field private new:Lorg/bouncycastle/asn1/import;

.field private try:Lorg/bouncycastle/asn1/import;


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/try$if;->do:Landroid/support/v4/b1;

    invoke-static {p2}, Lorg/bouncycastle/crypto/util/case;->do([B)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/try$if;->if:Lorg/bouncycastle/asn1/class;

    invoke-static {p3}, Lorg/bouncycastle/crypto/util/case;->do([B)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/try$if;->for:Lorg/bouncycastle/asn1/class;

    return-void
.end method


# virtual methods
.method public do()Lorg/bouncycastle/crypto/util/try;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/try$if;->do:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/try$if;->if:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/try$if;->for:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/try$if;->new:Lorg/bouncycastle/asn1/import;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/try$if;->try:Lorg/bouncycastle/asn1/import;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/util/try;

    new-instance v2, Lorg/bouncycastle/asn1/n;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/util/try;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/crypto/util/try$do;)V

    return-object v1
.end method

.method public for([B)Lorg/bouncycastle/crypto/util/try$if;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/u;

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/case;->do([B)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/try$if;->new:Lorg/bouncycastle/asn1/import;

    return-object p0
.end method

.method public if([B)Lorg/bouncycastle/crypto/util/try$if;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/u;

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/case;->do([B)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/try$if;->try:Lorg/bouncycastle/asn1/import;

    return-object p0
.end method
