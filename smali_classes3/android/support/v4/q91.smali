.class public Landroid/support/v4/q91;
.super Ljavax/crypto/spec/PBEKeySpec;
.source "SourceFile"


# static fields
.field private static final if:Landroid/support/v4/b1;


# instance fields
.field private do:Landroid/support/v4/b1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/catch;

    sget-object v2, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Landroid/support/v4/q91;->if:Landroid/support/v4/b1;

    return-void
.end method

.method public constructor <init>([C[BIILandroid/support/v4/b1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    iput-object p5, p0, Landroid/support/v4/q91;->do:Landroid/support/v4/b1;

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q91;->do:Landroid/support/v4/b1;

    return-object v0
.end method

.method public if()Z
    .locals 2

    sget-object v0, Landroid/support/v4/q91;->if:Landroid/support/v4/b1;

    iget-object v1, p0, Landroid/support/v4/q91;->do:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/break;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
